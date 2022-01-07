
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct am_state {int cur; int last; int prec; int dir; } ;
typedef int (* mail_conv_fn ) (int *,int *,int) ;
typedef int FILE ;


 int _ (char*) ;
 int error (int ,char const*) ;
 int error_errno (int ,char const*) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 char* mkpath (char*,int ,int ,int) ;
 int * stdin ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int split_mail_conv(mail_conv_fn fn, struct am_state *state,
   const char **paths, int keep_cr)
{
 static const char *stdin_only[] = {"-", ((void*)0)};
 int i;

 if (!*paths)
  paths = stdin_only;

 for (i = 0; *paths; paths++, i++) {
  FILE *in, *out;
  const char *mail;
  int ret;

  if (!strcmp(*paths, "-"))
   in = stdin;
  else
   in = fopen(*paths, "r");

  if (!in)
   return error_errno(_("could not open '%s' for reading"),
        *paths);

  mail = mkpath("%s/%0*d", state->dir, state->prec, i + 1);

  out = fopen(mail, "w");
  if (!out) {
   if (in != stdin)
    fclose(in);
   return error_errno(_("could not open '%s' for writing"),
        mail);
  }

  ret = fn(out, in, keep_cr);

  fclose(out);
  if (in != stdin)
   fclose(in);

  if (ret)
   return error(_("could not parse patch '%s'"), *paths);
 }

 state->cur = 1;
 state->last = i;
 return 0;
}
