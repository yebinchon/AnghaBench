
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char* d_name; } ;


 int MAP_TO_CAT (char const*,int,char const*,int) ;
 int printf (char*,...) ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int
sortq(const struct dirent **a, const struct dirent **b)
{
 const int a_lt_b = -1, a_gt_b = 1, cat_other = 10;
 const char *fname_a, *fname_b, *jnum_a, *jnum_b;
 int cat_a, cat_b, ch, res, seq_a, seq_b;

 fname_a = (*a)->d_name;
 fname_b = (*b)->d_name;
 do { cat_a = cat_other; ch = *(fname_a + 2); jnum_a = fname_a + 3; seq_a = 0; if ((*(fname_a + 1) == 'f') && (isalpha(ch))) { seq_a = ch; if (*fname_a == 'c') cat_a = 1; else if (*fname_a == 'd') cat_a = 2; else if (*fname_a == 'r') cat_a = 3; else if (*fname_a == 't') cat_a = 4; if (cat_a != cat_other) { ch = *jnum_a; if (!isdigit(ch)) { if (isalpha(ch)) { jnum_a++; ch = *jnum_a; seq_a = (seq_a << 8) + ch; } if (!isdigit(ch)) cat_a = cat_other; } } } } while (0);
 do { cat_b = cat_other; ch = *(fname_b + 2); jnum_b = fname_b + 3; seq_b = 0; if ((*(fname_b + 1) == 'f') && (isalpha(ch))) { seq_b = ch; if (*fname_b == 'c') cat_b = 1; else if (*fname_b == 'd') cat_b = 2; else if (*fname_b == 'r') cat_b = 3; else if (*fname_b == 't') cat_b = 4; if (cat_b != cat_other) { ch = *jnum_b; if (!isdigit(ch)) { if (isalpha(ch)) { jnum_b++; ch = *jnum_b; seq_b = (seq_b << 8) + ch; } if (!isdigit(ch)) cat_b = cat_other; } } } } while (0);




 if ((cat_a >= cat_other) || (cat_b >= cat_other)) {

  if (cat_a == cat_b)
   res = strcmp(fname_a, fname_b);
  else if (cat_a < cat_b)
   res = a_lt_b;
  else
   res = a_gt_b;
  goto have_res;
 }





 res = strcmp(jnum_a, jnum_b);
 if (res != 0)
  goto have_res;





 if (cat_a < cat_b) {
  res = a_lt_b;
  goto have_res;
 } else if (cat_a > cat_b) {
  res = a_gt_b;
  goto have_res;
 }





 if (seq_a < seq_b) {
  res = a_lt_b;
  goto have_res;
 } else if (seq_a > seq_b) {
  res = a_gt_b;
  goto have_res;
 }
 printf("\t*** Error in sortq: %s == %s !\n", fname_a, fname_b);
 printf("\t***       cat %d == %d ; seq = %d %d\n", cat_a, cat_b,
     seq_a, seq_b);
 res = 0;

have_res:
 return res;
}
