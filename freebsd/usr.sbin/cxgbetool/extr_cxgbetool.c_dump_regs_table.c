
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mod_regs {char* name; int ri; } ;


 int EINVAL ;
 int dump_block_regs (int ,int const*) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int strcmp (char const*,char*) ;
 int warnx (char*,char const*) ;

__attribute__((used)) static int
dump_regs_table(int argc, const char *argv[], const uint32_t *regs,
    const struct mod_regs *modtab, int nmodules)
{
 int i, j, match;

 for (i = 0; i < argc; i++) {
  for (j = 0; j < nmodules; j++) {
   if (!strcmp(argv[i], modtab[j].name))
    break;
  }

  if (j == nmodules) {
   warnx("invalid register block \"%s\"", argv[i]);
   fprintf(stderr, "\nAvailable blocks:");
   for ( ; nmodules; nmodules--, modtab++)
    fprintf(stderr, " %s", modtab->name);
   fprintf(stderr, "\n");
   return (EINVAL);
  }
 }

 for ( ; nmodules; nmodules--, modtab++) {

  match = argc == 0 ? 1 : 0;
  for (i = 0; !match && i < argc; i++) {
   if (!strcmp(argv[i], modtab->name))
    match = 1;
  }

  if (match)
   dump_block_regs(modtab->ri, regs);
 }

 return (0);
}
