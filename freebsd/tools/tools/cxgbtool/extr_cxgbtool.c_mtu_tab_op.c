
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ch_mtus {unsigned int nmtus; int* mtus; } ;


 int CHELSIO_GETMTUTAB ;
 int CHELSIO_SETMTUTAB ;
 int NMTUS ;
 scalar_t__ doit (char const*,int ,struct ch_mtus*) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int printf (char*,...) ;
 unsigned long strtoul (char*,char**,int ) ;
 int warnx (char*,char*) ;

__attribute__((used)) static int
mtu_tab_op(int argc, char *argv[], int start_arg, const char *iff_name)
{
 struct ch_mtus m;
 unsigned int i;

 if (argc == start_arg) {
  if (doit(iff_name, CHELSIO_GETMTUTAB, &m) < 0)
   err(1, "get MTU table");
  for (i = 0; i < m.nmtus; ++i)
   printf("%u ", m.mtus[i]);
  printf("\n");
 } else if (argc <= start_arg + NMTUS) {
  m.nmtus = argc - start_arg;

  for (i = 0; i < m.nmtus; ++i) {
   char *p;
   unsigned long mt = strtoul(argv[start_arg + i], &p, 0);

   if (*p || mt > 9600) {
    warnx("bad parameter \"%s\"",
          argv[start_arg + i]);
    return -1;
   }
   if (i && mt < m.mtus[i - 1])
    errx(1, "MTUs must be in ascending order");
   m.mtus[i] = mt;
  }
  if (doit(iff_name, CHELSIO_SETMTUTAB, &m) < 0)
   err(1, "set MTU table");
 } else
  return -1;

 return 0;
}
