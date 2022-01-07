
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link {int op; void* id2; void* id1; } ;


 int O_RDONLY ;
 void* atoi (char const*) ;
 scalar_t__ dev ;
 int exit (int) ;
 int link_op (struct link*) ;
 scalar_t__ open (char*,int ) ;
 int printf (char*,...) ;
 int toggle_medium (int) ;
 int usage (char const**) ;

int
main(int argc, const char* argv[])
{
 struct link l;
 char cmd;

 if (argc < 2) {
  usage(argv);
  exit(1);
 }

 dev = open("/dev/visctl", O_RDONLY);
  if (dev < 0) {
   printf("error opening visctl cdev\n");
   exit(1);
 }

 cmd = (char)*argv[1];

 switch (cmd) {
 case 'o':
  toggle_medium(1);
  break;
 case 'c':
  toggle_medium(0);
  break;
 case 'a':
  if (argc < 4) {
   usage(argv);
   exit(1);
  }
  l.op = 1;
  l.id1 = atoi(argv[2]);
  l.id2 = atoi(argv[3]);
  link_op(&l);
  break;
 case 'd':
  if (argc < 4) {
   usage(argv);
   exit(1);
  }
  l.op = 0;
  l.id1 = atoi(argv[2]);
  l.id2 = atoi(argv[3]);
  link_op(&l);
  break;
 default:
  printf("wtap ioctl: unknown command '%c'\n", *argv[1]);
  exit(1);
 }
 exit(0);
}
