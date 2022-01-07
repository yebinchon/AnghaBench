
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct keys_array {int dummy; } ;
struct file_reader {int dummy; } ;
struct bwstring {int dummy; } ;
struct TYPE_2__ {int csilentflag; scalar_t__ uflag; int sflag; scalar_t__ complex_sort; } ;


 int bws_disorder_warnx (struct bwstring*,char const*,size_t) ;
 struct bwstring* bwsdup (struct bwstring*) ;
 int bwsfree (struct bwstring*) ;
 int bwsprintf (int ,struct bwstring*,char*,char*) ;
 int clean_keys_array (struct bwstring*,struct keys_array*) ;
 scalar_t__ debug_sort ;
 int err (int,int *) ;
 int exit (int) ;
 int file_reader_free (struct file_reader*) ;
 struct file_reader* file_reader_init (char const*) ;
 struct bwstring* file_reader_readline (struct file_reader*) ;
 int key_coll (struct keys_array*,struct keys_array*,int ) ;
 struct keys_array* keys_array_alloc () ;
 int preproc (struct bwstring*,struct keys_array*) ;
 int printf (char*,...) ;
 int sort_free (struct keys_array*) ;
 TYPE_1__ sort_opts_vals ;
 int stdout ;
 scalar_t__ strcmp (char const*,char*) ;
 int top_level_str_coll (struct bwstring*,struct bwstring*) ;

int
check(const char *fn)
{
 struct bwstring *s1, *s2, *s1disorder, *s2disorder;
 struct file_reader *fr;
 struct keys_array *ka1, *ka2;
 int res;
 size_t pos, posdisorder;

 s1 = s2 = s1disorder = s2disorder = ((void*)0);
 ka1 = ka2 = ((void*)0);

 fr = file_reader_init(fn);

 res = 0;
 pos = 1;
 posdisorder = 1;

 if (fr == ((void*)0)) {
  err(2, ((void*)0));
  goto end;
 }

 s1 = file_reader_readline(fr);
 if (s1 == ((void*)0))
  goto end;

 ka1 = keys_array_alloc();
 preproc(s1, ka1);

 s2 = file_reader_readline(fr);
 if (s2 == ((void*)0))
  goto end;

 ka2 = keys_array_alloc();
 preproc(s2, ka2);

 for (;;) {

  if (debug_sort) {
   bwsprintf(stdout, s2, "s1=<", ">");
   bwsprintf(stdout, s1, "s2=<", ">");
  }
  int cmp = key_coll(ka2, ka1, 0);
  if (debug_sort)
   printf("; cmp1=%d", cmp);

  if (!cmp && sort_opts_vals.complex_sort &&
      !(sort_opts_vals.uflag) && !(sort_opts_vals.sflag)) {
   cmp = top_level_str_coll(s2, s1);
   if (debug_sort)
    printf("; cmp2=%d", cmp);
  }
  if (debug_sort)
   printf("\n");

  if ((sort_opts_vals.uflag && (cmp <= 0)) || (cmp < 0)) {
   if (!(sort_opts_vals.csilentflag)) {
    s2disorder = bwsdup(s2);
    posdisorder = pos;
    if (debug_sort)
     s1disorder = bwsdup(s1);
   }
   res = 1;
   goto end;
  }

  pos++;

  clean_keys_array(s1, ka1);
  sort_free(ka1);
  ka1 = ka2;
  ka2 = ((void*)0);

  bwsfree(s1);
  s1 = s2;

  s2 = file_reader_readline(fr);
  if (s2 == ((void*)0))
   goto end;

  ka2 = keys_array_alloc();
  preproc(s2, ka2);
 }

end:
 if (ka1) {
  clean_keys_array(s1, ka1);
  sort_free(ka1);
 }

 if (s1)
  bwsfree(s1);

 if (ka2) {
  clean_keys_array(s2, ka2);
  sort_free(ka2);
 }

 if (s2)
  bwsfree(s2);

 if ((fn == ((void*)0)) || (*fn == 0) || (strcmp(fn, "-") == 0)) {
  for (;;) {
   s2 = file_reader_readline(fr);
   if (s2 == ((void*)0))
    break;
   bwsfree(s2);
  }
 }

 file_reader_free(fr);

 if (s2disorder) {
  bws_disorder_warnx(s2disorder, fn, posdisorder);
  if (s1disorder) {
   bws_disorder_warnx(s1disorder, fn, posdisorder);
   if (s1disorder != s2disorder)
    bwsfree(s1disorder);
  }
  bwsfree(s2disorder);
  s1disorder = ((void*)0);
  s2disorder = ((void*)0);
 }

 if (res)
  exit(res);

 return (0);
}
