
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int dummy; } ;


 int NEWLINE ;
 char* checked_strdup (scalar_t__) ;
 scalar_t__ lineno ;
 int log_errx (int,char*,char const*,scalar_t__) ;
 int node_new_map (struct node*,char*,char*,char*,char const*,scalar_t__) ;
 int yylex () ;
 scalar_t__ yytext ;

__attribute__((used)) static void
parse_master_yyin(struct node *root, const char *master)
{
 char *mountpoint = ((void*)0), *map = ((void*)0), *options = ((void*)0);
 int ret;




 lineno = 0;

 for (;;) {
  ret = yylex();
  if (ret == 0 || ret == NEWLINE) {
   if (mountpoint != ((void*)0)) {

    node_new_map(root, mountpoint, options, map,
        master, lineno);
   }
   if (ret == 0) {
    break;
   } else {
    mountpoint = map = options = ((void*)0);
    continue;
   }
  }
  if (mountpoint == ((void*)0)) {
   mountpoint = checked_strdup(yytext);
  } else if (map == ((void*)0)) {
   map = checked_strdup(yytext);
  } else if (options == ((void*)0)) {



   options = checked_strdup(yytext + 1);
  } else {
   log_errx(1, "too many arguments at %s, line %d",
       master, lineno);
  }
 }
}
