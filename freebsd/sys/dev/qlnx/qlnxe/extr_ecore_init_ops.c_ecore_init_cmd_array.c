
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int data; } ;
union init_array_hdr {TYPE_3__ raw; } ;
typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int array_offset; } ;
struct init_write_op {int data; TYPE_1__ args; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int const* unzip_buf; struct ecore_dev* p_dev; } ;
struct ecore_dev {TYPE_2__* fw_data; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_5__ {int* arr_data; } ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int ECORE_INVAL ;
 int ECORE_SUCCESS ;
 int GET_FIELD (int,int ) ;
 int INIT_ARRAY_PATTERN_HDR_PATTERN_SIZE ;
 int INIT_ARRAY_PATTERN_HDR_REPETITIONS ;
 int INIT_ARRAY_RAW_HDR_TYPE ;
 int INIT_ARRAY_STANDARD_HDR_SIZE ;
 int INIT_ARRAY_ZIPPED_HDR_ZIPPED_SIZE ;



 int INIT_WRITE_OP_ADDRESS ;
 int MAX_ZIPPED_SIZE ;
 int OSAL_LE32_TO_CPU (int ) ;
 int OSAL_MEMSET (int const*,int ,int) ;
 int OSAL_UNZIP_DATA (struct ecore_hwfn*,int,int *,int,int *) ;
 int ecore_init_array_dmae (struct ecore_hwfn*,struct ecore_ptt*,int,int,int,int const*,int,int) ;

__attribute__((used)) static enum _ecore_status_t ecore_init_cmd_array(struct ecore_hwfn *p_hwfn,
       struct ecore_ptt *p_ptt,
       struct init_write_op *cmd,
       bool b_must_dmae,
       bool b_can_dmae)
{
 u32 dmae_array_offset = OSAL_LE32_TO_CPU(cmd->args.array_offset);
 u32 data = OSAL_LE32_TO_CPU(cmd->data);
 u32 addr = GET_FIELD(data, INIT_WRITE_OP_ADDRESS) << 2;



 struct ecore_dev *p_dev = p_hwfn->p_dev;
 union init_array_hdr *hdr;
 const u32 *array_data;
 enum _ecore_status_t rc = ECORE_SUCCESS;
 u32 size;

 array_data = p_dev->fw_data->arr_data;

 hdr = (union init_array_hdr *) (array_data +
     dmae_array_offset);
 data = OSAL_LE32_TO_CPU(hdr->raw.data);
 switch (GET_FIELD(data, INIT_ARRAY_RAW_HDR_TYPE)) {
 case 128:
  DP_NOTICE(p_hwfn, 1,
     "Using zipped firmware without config enabled\n");
  rc = ECORE_INVAL;

  break;
 case 130:
 {
  u32 repeats = GET_FIELD(data,
     INIT_ARRAY_PATTERN_HDR_REPETITIONS);
  u32 i;

  size = GET_FIELD(data,
     INIT_ARRAY_PATTERN_HDR_PATTERN_SIZE);

  for (i = 0; i < repeats; i++, addr += size << 2) {
   rc = ecore_init_array_dmae(p_hwfn, p_ptt, addr,
         dmae_array_offset + 1,
         size, array_data,
         b_must_dmae, b_can_dmae);
   if (rc)
    break;
  }
  break;
 }
 case 129:
  size = GET_FIELD(data,
     INIT_ARRAY_STANDARD_HDR_SIZE);
  rc = ecore_init_array_dmae(p_hwfn, p_ptt, addr,
        dmae_array_offset + 1,
        size, array_data,
        b_must_dmae, b_can_dmae);
  break;
 }

 return rc;
}
