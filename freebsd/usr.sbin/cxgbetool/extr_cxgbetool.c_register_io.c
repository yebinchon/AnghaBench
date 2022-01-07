
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int printf (char*,long long,long long) ;
 int read_reg (long,int,long long*) ;
 char* str_to_number (char const*,long*,long long*) ;
 int warnx (char*,...) ;
 int write_reg (long,int,long long) ;

__attribute__((used)) static int
register_io(int argc, const char *argv[], int size)
{
 char *p, *v;
 long addr;
 long long val;
 int w = 0, rc;

 if (argc == 1) {


  p = str_to_number(argv[0], &addr, ((void*)0));
  if (*p) {
   if (*p != '=') {
    warnx("invalid register \"%s\"", argv[0]);
    return (EINVAL);
   }

   w = 1;
   v = p + 1;
   p = str_to_number(v, ((void*)0), &val);

   if (*p) {
    warnx("invalid value \"%s\"", v);
    return (EINVAL);
   }
  }

 } else if (argc == 2) {


  w = 1;

  p = str_to_number(argv[0], &addr, ((void*)0));
  if (*p) {
   warnx("invalid register \"%s\"", argv[0]);
   return (EINVAL);
  }

  p = str_to_number(argv[1], ((void*)0), &val);
  if (*p) {
   warnx("invalid value \"%s\"", argv[1]);
   return (EINVAL);
  }
 } else {
  warnx("reg: invalid number of arguments (%d)", argc);
  return (EINVAL);
 }

 if (w)
  rc = write_reg(addr, size, val);
 else {
  rc = read_reg(addr, size, &val);
  if (rc == 0)
   printf("0x%llx [%llu]\n", val, val);
 }

 return (rc);
}
