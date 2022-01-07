
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct octeon_device {int dummy; } ;
struct lio_soft_command {scalar_t__ ctxptr; } ;
struct lio_intrmod_context {int cond; int status; } ;


 int wmb () ;

__attribute__((used)) static void
lio_set_intrmod_callback(struct octeon_device *oct_dev, uint32_t status,
    void *ptr)
{
 struct lio_soft_command *sc = (struct lio_soft_command *)ptr;
 struct lio_intrmod_context *ctx;

 ctx = (struct lio_intrmod_context *)sc->ctxptr;

 ctx->status = status;

 ctx->cond = 1;





 wmb();
}
