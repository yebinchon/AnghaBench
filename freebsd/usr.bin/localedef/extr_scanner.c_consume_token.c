
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* name; scalar_t__ id; } ;
struct TYPE_3__ {char wc; int token; int num; } ;


 int T_CHAR ;
 int T_ELLIPSIS ;
 scalar_t__ T_END ;
 int T_NAME ;
 int T_NULL ;
 int T_NUMBER ;
 scalar_t__* categories ;
 scalar_t__ category ;
 scalar_t__ isdigit (char) ;
 TYPE_2__* keywords ;
 scalar_t__ last_kw ;
 scalar_t__ strcmp (char*,char*) ;
 int strdup (char*) ;
 int strtol (char*,char**,int) ;
 char* token ;
 int tokidx ;
 scalar_t__ toksz ;
 int yyerror (char*) ;
 TYPE_1__ yylval ;

__attribute__((used)) static int
consume_token(void)
{
 int len = tokidx;
 int i;

 tokidx = 0;
 if (token == ((void*)0))
  return (T_NULL);





 if (strcmp(token, "...") == 0) {
  return (T_ELLIPSIS);
 }


 for (i = 0; keywords[i].name; i++) {
  int j;
  if (strcmp(keywords[i].name, token) != 0) {
   continue;
  }

  last_kw = keywords[i].id;


  if (last_kw == T_END) {
   category = T_END;
  }


  for (j = 0; categories[j]; j++) {
   if (categories[j] != last_kw)
    continue;
   category = last_kw;
  }

  return (keywords[i].id);
 }


 if (isdigit(*token) || (*token == '-' && isdigit(token[1]))) {
  char *eptr;
  yylval.num = strtol(token, &eptr, 10);
  if (*eptr != 0)
   yyerror("malformed number");
  return (T_NUMBER);
 }





 if (len == 1) {
  yylval.wc = token[0];
  return (T_CHAR);
 }


 yylval.token = strdup(token);
 token = ((void*)0);
 toksz = 0;
 tokidx = 0;
 return (T_NAME);
}
