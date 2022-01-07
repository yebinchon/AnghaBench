
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; int cmp; } ;
struct TYPE_2__ {int string; } ;
typedef int FILE ;


 struct string_list STRING_LIST_INIT_DUP ;
 int buf ;
 int error_errno (char*,char*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 int maildir_filename_cmp ;
 scalar_t__ populate_maildir_list (struct string_list*,char const*) ;
 int split_one (int *,char*,int) ;
 scalar_t__ strbuf_getwholeline (int *,int *,char) ;
 int string_list_clear (struct string_list*,int) ;
 char* xstrfmt (char*,char const*,int,...) ;

__attribute__((used)) static int split_maildir(const char *maildir, const char *dir,
 int nr_prec, int skip)
{
 char *file = ((void*)0);
 FILE *f = ((void*)0);
 int ret = -1;
 int i;
 struct string_list list = STRING_LIST_INIT_DUP;

 list.cmp = maildir_filename_cmp;

 if (populate_maildir_list(&list, maildir) < 0)
  goto out;

 for (i = 0; i < list.nr; i++) {
  char *name;

  free(file);
  file = xstrfmt("%s/%s", maildir, list.items[i].string);

  f = fopen(file, "r");
  if (!f) {
   error_errno("cannot open mail %s", file);
   goto out;
  }

  if (strbuf_getwholeline(&buf, f, '\n')) {
   error_errno("cannot read mail %s", file);
   goto out;
  }

  name = xstrfmt("%s/%0*d", dir, nr_prec, ++skip);
  split_one(f, name, 1);
  free(name);

  fclose(f);
  f = ((void*)0);
 }

 ret = skip;
out:
 if (f)
  fclose(f);
 free(file);
 string_list_clear(&list, 1);
 return ret;
}
