
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmctx {int dummy; } ;


 int assert (int) ;

__attribute__((used)) static int
post_data_handler(struct vmctx *ctx, int vcpu, int in, int port, int bytes,
    uint32_t *eax, void *arg)
{
 assert(in == 1);

 if (bytes != 1)
  return (-1);

 *eax = 0xff;
 return (0);
}
