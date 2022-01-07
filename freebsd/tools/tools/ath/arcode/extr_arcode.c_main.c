
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct athregrec {int op; int reg; int val; } ;
typedef int a ;






 int O_RDONLY ;
 int close (int) ;
 int exit (int) ;
 int op_device (struct athregrec*) ;
 int op_mark (struct athregrec*) ;
 int op_read (struct athregrec*) ;
 int op_write (struct athregrec*) ;
 int open (char const*,int ) ;
 int perror (char*) ;
 int printf (char*,...) ;
 int read (int,struct athregrec*,int) ;

int
main(int argc, const char *argv[])
{
 const char *file = argv[1];
 int fd;
 struct athregrec a;
 int r;

 if (argc < 2) {
  printf("usage: %s <ahq log>\n", argv[0]);
  exit(127);
 }

 fd = open(file, O_RDONLY);
 if (fd < 0) {
  perror("open");
  exit(127);
 }

 while (1) {
  r = read(fd, &a, sizeof(a));
  if (r != sizeof(a))
   break;
  switch (a.op) {
   case 129:
    op_read(&a);
    break;
   case 128:
    op_write(&a);
    break;
   case 131:
    op_device(&a);
    break;
   case 130:
    op_mark(&a);
    break;
   default:
    printf("op: %d; reg: 0x%x; val: 0x%x\n",
        a.op, a.reg, a.val);
  }
 }
 close(fd);
}
