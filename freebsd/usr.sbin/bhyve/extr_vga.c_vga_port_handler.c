
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct vmctx {int dummy; } ;


 int assert (int ) ;
 int vga_port_in_handler (struct vmctx*,int,int,int,int*,void*) ;
 int vga_port_out_handler (struct vmctx*,int,int,int,int,void*) ;

__attribute__((used)) static int
vga_port_handler(struct vmctx *ctx, int vcpu, int in, int port, int bytes,
   uint32_t *eax, void *arg)
{
 uint8_t val;
 int error;

 switch (bytes) {
 case 1:
  if (in) {
   *eax &= ~0xff;
   error = vga_port_in_handler(ctx, in, port, 1,
          &val, arg);
   if (!error) {
    *eax |= val & 0xff;
   }
  } else {
   val = *eax & 0xff;
   error = vga_port_out_handler(ctx, in, port, 1,
           val, arg);
  }
  break;
 case 2:
  if (in) {
   *eax &= ~0xffff;
   error = vga_port_in_handler(ctx, in, port, 1,
          &val, arg);
   if (!error) {
    *eax |= val & 0xff;
   }
   error = vga_port_in_handler(ctx, in, port + 1, 1,
          &val, arg);
   if (!error) {
    *eax |= (val & 0xff) << 8;
   }
  } else {
   val = *eax & 0xff;
   error = vga_port_out_handler(ctx, in, port, 1,
           val, arg);
   val = (*eax >> 8) & 0xff;
   error =vga_port_out_handler(ctx, in, port + 1, 1,
          val, arg);
  }
  break;
 default:
  assert(0);
  return (-1);
 }

 return (error);
}
