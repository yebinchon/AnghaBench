
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char** value; } ;


 int IDENT_NO_DATE ;
 int free (char*) ;
 char const* git_committer_info (int ) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static int from_callback(const struct option *opt, const char *arg, int unset)
{
 char **from = opt->value;

 free(*from);

 if (unset)
  *from = ((void*)0);
 else if (arg)
  *from = xstrdup(arg);
 else
  *from = xstrdup(git_committer_info(IDENT_NO_DATE));
 return 0;
}
