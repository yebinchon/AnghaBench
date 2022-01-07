
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table {int nentry; char* gpu_prefix; int* table; } ;


 int printf (char*,...) ;

__attribute__((used)) static void table_print(struct table *t)
{
 unsigned nlloop, i, j, n, c, id;

 nlloop = (t->nentry + 3) / 4;
 c = t->nentry;
 printf(
     "#include <sys/cdefs.h>\n"
     "__FBSDID(\"$" "FreeBSD" "$\");\n"
     "\n"
     );
 printf("static const unsigned %s_reg_safe_bm[%d] = {\n", t->gpu_prefix,
        t->nentry);
 for (i = 0, id = 0; i < nlloop; i++) {
  n = 4;
  if (n > c)
   n = c;
  c -= n;
  for (j = 0; j < n; j++) {
   if (j == 0)
    printf("\t");
   else
    printf(" ");
   printf("0x%08X,", t->table[id++]);
  }
  printf("\n");
 }
 printf("};\n");
}
