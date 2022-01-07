
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ D_CONTEXT ;
 scalar_t__ D_EDIT ;
 scalar_t__ D_GFORMAT ;
 scalar_t__ D_IFDEF ;
 scalar_t__ D_UNIFIED ;
 int EOF ;
 int* J ;
 scalar_t__ anychange ;
 int c ;
 int change (char*,int *,char*,int *,int,int,int,int,int*) ;
 scalar_t__ diff_format ;
 int diff_output (char*,int ) ;
 int dump_context_vec (int *,int *,int) ;
 int dump_unified_vec (int *,int *,int) ;
 int getc (int *) ;
 int* len ;
 int rewind (int *) ;

__attribute__((used)) static void
output(char *file1, FILE *f1, char *file2, FILE *f2, int flags)
{
 int m, i0, i1, j0, j1;

 rewind(f1);
 rewind(f2);
 m = len[0];
 J[0] = 0;
 J[m + 1] = len[1] + 1;
 if (diff_format != D_EDIT) {
  for (i0 = 1; i0 <= m; i0 = i1 + 1) {
   while (i0 <= m && J[i0] == J[i0 - 1] + 1)
    i0++;
   j0 = J[i0 - 1] + 1;
   i1 = i0 - 1;
   while (i1 < m && J[i1 + 1] == 0)
    i1++;
   j1 = J[i1 + 1] - 1;
   J[i1] = j1;
   change(file1, f1, file2, f2, i0, i1, j0, j1, &flags);
  }
 } else {
  for (i0 = m; i0 >= 1; i0 = i1 - 1) {
   while (i0 >= 1 && J[i0] == J[i0 + 1] - 1 && J[i0] != 0)
    i0--;
   j0 = J[i0 + 1] - 1;
   i1 = i0 + 1;
   while (i1 > 1 && J[i1 - 1] == 0)
    i1--;
   j1 = J[i1 - 1] + 1;
   J[i1] = j1;
   change(file1, f1, file2, f2, i1, i0, j1, j0, &flags);
  }
 }
 if (m == 0)
  change(file1, f1, file2, f2, 1, 0, 1, len[1], &flags);
 if (diff_format == D_IFDEF || diff_format == D_GFORMAT) {
  for (;;) {

   if ((i0 = getc(f1)) == EOF)
    return;
   diff_output("%c", i0);
  }

 }
 if (anychange != 0) {
  if (diff_format == D_CONTEXT)
   dump_context_vec(f1, f2, flags);
  else if (diff_format == D_UNIFIED)
   dump_unified_vec(f1, f2, flags);
 }
}
