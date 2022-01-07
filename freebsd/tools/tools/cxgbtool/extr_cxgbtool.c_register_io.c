
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int printf (char*,int,int) ;
 int read_reg (char const*,int) ;
 int strtoul (char*,char**,int ) ;
 int warnx (char*,char*) ;
 int write_reg (char const*,int,int) ;

__attribute__((used)) static int
register_io(int argc, char *argv[], int start_arg,
         const char *iff_name)
{
 char *p;
 uint32_t addr, val = 0, w = 0;

 if (argc != start_arg + 1) return -1;

 addr = strtoul(argv[start_arg], &p, 0);
 if (p == argv[start_arg]) return -1;
 if (*p == '=' && p[1]) {
  val = strtoul(p + 1, &p, 0);
  w = 1;
 }
 if (*p) {
  warnx("bad parameter \"%s\"", argv[start_arg]);
  return -1;
 }

 if (w)
  write_reg(iff_name, addr, val);
 else {
  val = read_reg(iff_name, addr);
  printf("%#x [%u]\n", val, val);
 }
 return 0;
}
