
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucma_context {int dummy; } ;


 int ENOSYS ;


 int ucma_set_option_ib (struct ucma_context*,int,void*,size_t) ;
 int ucma_set_option_id (struct ucma_context*,int,void*,size_t) ;

__attribute__((used)) static int ucma_set_option_level(struct ucma_context *ctx, int level,
     int optname, void *optval, size_t optlen)
{
 int ret;

 switch (level) {
 case 128:
  ret = ucma_set_option_id(ctx, optname, optval, optlen);
  break;
 case 129:
  ret = ucma_set_option_ib(ctx, optname, optval, optlen);
  break;
 default:
  ret = -ENOSYS;
 }

 return ret;
}
