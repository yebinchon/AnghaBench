
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usbcap {scalar_t__ buffer; int bufsize; int fd; } ;



 scalar_t__ doexit ;
 int errno ;
 int fix_packets (scalar_t__,int) ;
 int fprintf (int ,char*,char*) ;
 int print_packets (scalar_t__,int) ;
 int read (int ,int *,int ) ;
 int stderr ;
 char* strerror (int) ;
 int * w_arg ;
 int write_packets (struct usbcap*,scalar_t__,int) ;

__attribute__((used)) static void
do_loop(struct usbcap *p)
{
 int cc;

 while (doexit == 0) {
  cc = read(p->fd, (uint8_t *)p->buffer, p->bufsize);
  if (cc < 0) {
   switch (errno) {
   case 128:
    break;
   default:
    fprintf(stderr, "read: %s\n", strerror(errno));
    return;
   }
   continue;
  }
  if (cc == 0)
   continue;

  fix_packets(p->buffer, cc);

  if (w_arg != ((void*)0))
   write_packets(p, p->buffer, cc);
  print_packets(p->buffer, cc);
 }
}
