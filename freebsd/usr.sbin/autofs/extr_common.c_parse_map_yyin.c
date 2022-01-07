
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int dummy; } ;


 int NEWLINE ;
 char* checked_strdup (char const*) ;
 int lineno ;
 int log_debugx (char*,char*,char*,char*) ;
 int log_errx (int,char*,char const*,int) ;
 int log_warnx (char*,char const*,int) ;
 struct node* node_new (struct node*,char*,char*,char*,char const*,int) ;
 scalar_t__ strcmp (char*,char*) ;
 int yylex () ;
 char* yytext ;

__attribute__((used)) static void
parse_map_yyin(struct node *parent, const char *map, const char *executable_key)
{
 char *key = ((void*)0), *options = ((void*)0), *mountpoint = ((void*)0),
     *options2 = ((void*)0), *location = ((void*)0);
 int ret;
 struct node *node;

 lineno = 1;

 if (executable_key != ((void*)0))
  key = checked_strdup(executable_key);

 for (;;) {
  ret = yylex();
  if (ret == 0 || ret == NEWLINE) {





   if ((key != ((void*)0) && executable_key == ((void*)0)) ||
       options != ((void*)0)) {
    log_errx(1, "truncated entry at %s, line %d",
        map, lineno);
   }
   if (ret == 0 || executable_key != ((void*)0)) {



    break;
   } else {
    key = options = ((void*)0);
    continue;
   }
  }
  if (key == ((void*)0)) {
   key = checked_strdup(yytext);
   if (key[0] == '+') {
    node_new(parent, key, ((void*)0), ((void*)0), map, lineno);
    key = options = ((void*)0);
    continue;
   }
   continue;
  } else if (yytext[0] == '-') {
   if (options != ((void*)0)) {
    log_errx(1, "duplicated options at %s, line %d",
        map, lineno);
   }



   options = checked_strdup(yytext + 1);
   continue;
  }
  if (strcmp(key, "/") == 0) {
   log_warnx("nonsensical map key \"/\" at %s, line %d; "
       "ignoring map entry ", map, lineno);




   do {
    ret = yylex();
   } while (ret != 0 && ret != NEWLINE);

   key = options = ((void*)0);
   continue;
  }


  node = node_new(parent, key, options, ((void*)0), map, lineno);
  key = options = ((void*)0);

  for (;;) {
   if (yytext[0] == '/') {
    if (mountpoint != ((void*)0)) {
     log_errx(1, "duplicated mountpoint "
         "in %s, line %d", map, lineno);
    }
    if (options2 != ((void*)0) || location != ((void*)0)) {
     log_errx(1, "mountpoint out of order "
         "in %s, line %d", map, lineno);
    }
    mountpoint = checked_strdup(yytext);
    goto again;
   }

   if (yytext[0] == '-') {
    if (options2 != ((void*)0)) {
     log_errx(1, "duplicated options "
         "in %s, line %d", map, lineno);
    }
    if (location != ((void*)0)) {
     log_errx(1, "options out of order "
         "in %s, line %d", map, lineno);
    }
    options2 = checked_strdup(yytext + 1);
    goto again;
   }

   if (location != ((void*)0)) {
    log_errx(1, "too many arguments "
        "in %s, line %d", map, lineno);
   }





   if (yytext[0] == ':') {
    location = checked_strdup(yytext + 1);
    if (location[0] == '\0') {
     log_errx(1, "empty location in %s, "
         "line %d", map, lineno);
    }
   } else {
    location = checked_strdup(yytext);
   }

   if (mountpoint == ((void*)0))
    mountpoint = checked_strdup("/");
   if (options2 == ((void*)0))
    options2 = checked_strdup("");





   node_new(node, mountpoint, options2, location,
       map, lineno);
   mountpoint = options2 = location = ((void*)0);
again:
   ret = yylex();
   if (ret == 0 || ret == NEWLINE) {
    if (mountpoint != ((void*)0) || options2 != ((void*)0) ||
        location != ((void*)0)) {
     log_errx(1, "truncated entry "
         "in %s, line %d", map, lineno);
    }
    break;
   }
  }
 }
}
