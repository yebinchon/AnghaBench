
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct octeon_device {int dummy; } ;
struct lio_soft_command {int* ctxptr; } ;


 int LIO_CAST64 (scalar_t__) ;
 int lio_dev_err (struct octeon_device*,char*,int ) ;
 int wmb () ;

__attribute__((used)) static void
lio_mtu_ctl_callback(struct octeon_device *oct, uint32_t status, void *buf)
{
 struct lio_soft_command *sc = buf;
 volatile int *mtu_sc_ctx;

 mtu_sc_ctx = sc->ctxptr;

 if (status) {
  lio_dev_err(oct, "MTU updation ctl instruction failed. Status: %llx\n",
       LIO_CAST64(status));
  *mtu_sc_ctx = -1;




  wmb();
  return;
 }

 *mtu_sc_ctx = 1;





 wmb();
}
