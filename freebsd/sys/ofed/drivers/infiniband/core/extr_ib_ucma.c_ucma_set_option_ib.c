
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucma_context {int dummy; } ;


 int ENOSYS ;

 int ucma_set_ib_path (struct ucma_context*,void*,size_t) ;

__attribute__((used)) static int ucma_set_option_ib(struct ucma_context *ctx, int optname,
         void *optval, size_t optlen)
{
 int ret;

 switch (optname) {
 case 128:
  ret = ucma_set_ib_path(ctx, optval, optlen);
  break;
 default:
  ret = -ENOSYS;
 }

 return ret;
}
