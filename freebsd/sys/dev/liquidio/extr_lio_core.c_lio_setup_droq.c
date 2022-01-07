
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct octeon_device {TYPE_1__** droq; } ;
struct TYPE_2__ {int max_count; int pkts_credit_reg; } ;


 int lio_create_droq (struct octeon_device*,int,int,int,void*) ;
 int lio_dev_dbg (struct octeon_device*,char*,int) ;
 int lio_write_csr32 (struct octeon_device*,int ,int ) ;

__attribute__((used)) static int
lio_setup_droq(struct octeon_device *oct, int q_no, int num_descs,
        int desc_size, void *app_ctx)
{
 int ret_val = 0;

 lio_dev_dbg(oct, "Creating Droq: %d\n", q_no);

 ret_val = lio_create_droq(oct, q_no, num_descs, desc_size, app_ctx);
 if (ret_val < 0)
  return (ret_val);

 if (ret_val == 1) {
  lio_dev_dbg(oct, "Using default droq %d\n", q_no);
  return (0);
 }





 lio_write_csr32(oct, oct->droq[q_no]->pkts_credit_reg,
   oct->droq[q_no]->max_count);

 return (ret_val);
}
