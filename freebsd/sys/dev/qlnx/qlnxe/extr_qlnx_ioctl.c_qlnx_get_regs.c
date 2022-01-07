
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_7__ {int num_hwfns; } ;
struct TYPE_8__ {scalar_t__ grcdump_taken; scalar_t__* grcdump_dwords; int * grcdump_size; int * grcdump; TYPE_1__ cdev; } ;
typedef TYPE_2__ qlnx_host_t ;
struct TYPE_9__ {scalar_t__ reg_buf_len; int * reg_buf; } ;
typedef TYPE_3__ qlnx_get_regs_t ;


 int copyout (int ,int *,int ) ;
 int qlnx_grc_dump (TYPE_2__*,int*,int) ;

__attribute__((used)) static int
qlnx_get_regs(qlnx_host_t *ha, qlnx_get_regs_t *regs)
{
 int i;
 int rval = 0;
 uint32_t dwords = 0;
 uint8_t *outb;

 regs->reg_buf_len = 0;
 outb = regs->reg_buf;

 for (i = 0; i < ha->cdev.num_hwfns; i++) {

  rval = qlnx_grc_dump(ha, &dwords, i);

  if (rval)
   break;

  regs->reg_buf_len += (dwords << 2);

  rval = copyout(ha->grcdump[i], outb, ha->grcdump_size[i]);

  if (rval)
   break;

  ha->grcdump_dwords[i] = 0;
  outb += regs->reg_buf_len;
 }

 ha->grcdump_taken = 0;

 return (rval);
}
