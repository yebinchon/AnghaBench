
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 char* _ (char*) ;
 int buf ;
 int error (char*,char const*) ;
 int error_errno (char*,char const*) ;
 int fclose (int *) ;
 int fgetc (int *) ;
 int * fopen (char const*,char*) ;
 int free (char*) ;
 scalar_t__ isspace (int) ;
 int split_one (int *,char*,int) ;
 int * stdin ;
 scalar_t__ strbuf_getwholeline (int *,int *,char) ;
 int strcmp (char const*,char*) ;
 int ungetc (int,int *) ;
 char* xstrfmt (char*,char const*,int,int) ;

__attribute__((used)) static int split_mbox(const char *file, const char *dir, int allow_bare,
        int nr_prec, int skip)
{
 int ret = -1;
 int peek;

 FILE *f = !strcmp(file, "-") ? stdin : fopen(file, "r");
 int file_done = 0;

 if (!f) {
  error_errno("cannot open mbox %s", file);
  goto out;
 }

 do {
  peek = fgetc(f);
  if (peek == EOF) {
   if (f == stdin)

    ret = skip;
   else {
    fclose(f);
    error(_("empty mbox: '%s'"), file);
   }
   goto out;
  }
 } while (isspace(peek));
 ungetc(peek, f);

 if (strbuf_getwholeline(&buf, f, '\n')) {

  if (f != stdin) {
   error("cannot read mbox %s", file);
   goto out;
  }
  file_done = 1;
 }

 while (!file_done) {
  char *name = xstrfmt("%s/%0*d", dir, nr_prec, ++skip);
  file_done = split_one(f, name, allow_bare);
  free(name);
 }

 if (f != stdin)
  fclose(f);

 ret = skip;
out:
 return ret;
}
