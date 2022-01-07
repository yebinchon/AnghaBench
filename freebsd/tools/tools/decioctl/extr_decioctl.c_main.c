
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IOCGROUP (unsigned long) ;
 int IOCPARM_LEN (unsigned long) ;
 unsigned long IOC_DIRMASK ;




 scalar_t__ errno ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ isprint (int) ;
 int printf (char*,...) ;
 int stderr ;
 unsigned long strtoul (char*,char**,int ) ;
 char* sysdecode_ioctlname (unsigned long) ;
 int usage (char**) ;

int
main(int ac, char **av)
{
 unsigned long cmd;
 const char *name;
 char *cp;
 int group, i;

 if (ac < 2)
  usage(av);
 printf("  command :  dir  group num  len name\n");
 for (i = 1; i < ac; i++) {
  errno = 0;
  cmd = strtoul(av[i], &cp, 0);
  if (*cp != '\0' || errno != 0) {
   fprintf(stderr, "Invalid integer: %s\n", av[i]);
   usage(av);
  }
  printf("0x%08lx: ", cmd);
  switch (cmd & IOC_DIRMASK) {
  case 128:
   printf("VOID ");
   break;
  case 129:
   printf("OUT  ");
   break;
  case 131:
   printf("IN   ");
   break;
  case 130:
   printf("INOUT");
   break;
  default:
   printf("%01lx ???", (cmd & IOC_DIRMASK) >> 29);
   break;
  }
  printf(" ");
  group = IOCGROUP(cmd);
  if (isprint(group))
   printf(" '%c' ", group);
  else
   printf(" 0x%02x", group);
  printf(" %3lu %4lu", cmd & 0xff, IOCPARM_LEN(cmd));
  name = sysdecode_ioctlname(cmd);
  if (name != ((void*)0))
   printf(" %s", name);
  printf("\n");
 }
 return (0);
}
