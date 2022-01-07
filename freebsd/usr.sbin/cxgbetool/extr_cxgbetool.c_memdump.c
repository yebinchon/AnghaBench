
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long uint32_t ;


 int EINVAL ;
 int read_mem (long,long,int ) ;
 int show_mem ;
 char* str_to_number (char const*,long*,int *) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
memdump(int argc, const char *argv[])
{
 char *p;
 long l;
 uint32_t addr, len;

 if (argc != 2) {
  warnx("incorrect number of arguments.");
  return (EINVAL);
 }

 p = str_to_number(argv[0], &l, ((void*)0));
 if (*p) {
  warnx("invalid address \"%s\"", argv[0]);
  return (EINVAL);
 }
 addr = l;

 p = str_to_number(argv[1], &l, ((void*)0));
 if (*p) {
  warnx("memdump: invalid length \"%s\"", argv[1]);
  return (EINVAL);
 }
 len = l;

 return (read_mem(addr, len, show_mem));
}
