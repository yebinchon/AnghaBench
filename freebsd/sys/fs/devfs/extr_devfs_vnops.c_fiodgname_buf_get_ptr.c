
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct fiodgname_arg32 {int buf; } ;
struct fiodgname_arg {void* buf; } ;




 int panic (char*,int) ;

void *
fiodgname_buf_get_ptr(void *fgnp, u_long com)
{
 union {
  struct fiodgname_arg fgn;



 } *fgnup;

 fgnup = fgnp;
 switch (com) {
 case 129:
  return (fgnup->fgn.buf);




 default:
  panic("Unhandled ioctl command %ld", com);
 }
}
