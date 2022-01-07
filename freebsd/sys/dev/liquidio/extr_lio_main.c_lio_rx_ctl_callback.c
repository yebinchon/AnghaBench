
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct octeon_device {int dummy; } ;
struct lio_soft_command {scalar_t__ ctxptr; } ;
struct lio_rx_ctl_context {int cond; int octeon_id; } ;


 int LIO_CAST64 (scalar_t__) ;
 int lio_dev_err (struct octeon_device*,char*,int ) ;
 struct octeon_device* lio_get_device (int ) ;
 int wmb () ;

__attribute__((used)) static void
lio_rx_ctl_callback(struct octeon_device *oct, uint32_t status, void *buf)
{
 struct lio_soft_command *sc = (struct lio_soft_command *)buf;
 struct lio_rx_ctl_context *ctx;

 ctx = (struct lio_rx_ctl_context *)sc->ctxptr;

 oct = lio_get_device(ctx->octeon_id);
 if (status)
  lio_dev_err(oct, "rx ctl instruction failed. Status: %llx\n",
       LIO_CAST64(status));
 ctx->cond = 1;





 wmb();
}
