
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int st_size; } ;
struct athregrec {int op; } ;
struct TYPE_2__ {int chipnum; } ;


 void* MAP_FAILED ;
 int MAP_NOCORE ;
 int MAP_PRIVATE ;




 int O_RDONLY ;
 int PROT_READ ;
 scalar_t__ bcmp (struct athregrec*,struct athregrec*,int) ;
 int err (int,char*,...) ;
 scalar_t__ fstat (int,struct stat*) ;
 void* mmap (int ,int,int ,int,int,int ) ;
 int opdevice (struct athregrec*) ;
 int open (char const*,int ) ;
 int opmark (int ,int,struct athregrec*) ;
 int oprw (int ,int,struct athregrec*) ;
 int printf (char*,int,...) ;
 int putchar (char) ;
 TYPE_1__ state ;
 int stdout ;

int
main(int argc, char *argv[])
{
 int fd, i, nrecs, same;
 struct stat sb;
 void *addr;
 const char *filename = "/tmp/ath_hal.log";
 struct athregrec *rprev;

 if (argc > 1)
  filename = argv[1];
 fd = open(filename, O_RDONLY);
 if (fd < 0)
  err(1, "open: %s", filename);
 if (fstat(fd, &sb) < 0)
  err(1, "fstat");
 addr = mmap(0, sb.st_size, PROT_READ, MAP_PRIVATE|MAP_NOCORE, fd, 0);
 if (addr == MAP_FAILED)
  err(1, "mmap");
 nrecs = sb.st_size / sizeof (struct athregrec);
 printf("%u records", nrecs);
 rprev = ((void*)0);
 same = 0;
 state.chipnum = 5210;
 for (i = 0; i < nrecs; i++) {
  struct athregrec *r = &((struct athregrec *) addr)[i];
  if (rprev && bcmp(r, rprev, sizeof (*r)) == 0) {
   same++;
   continue;
  }
  if (same)
   printf("\t\t+%u time%s", same, same == 1 ? "" : "s");
  switch (r->op) {
  case 131:
   opdevice(r);
   break;
  case 129:
  case 128:
   oprw(stdout, i, r);
   break;
  case 130:
   opmark(stdout, i, r);
   break;
  }
  rprev = r;
  same = 0;
 }
 putchar('\n');
 return 0;
}
