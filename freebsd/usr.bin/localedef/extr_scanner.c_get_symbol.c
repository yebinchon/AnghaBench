
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ name; int id; } ;
struct TYPE_3__ {int token; int * collelem; int * collsym; int wc; } ;


 int EOF ;
 int T_CHAR ;
 scalar_t__ T_CHARMAP ;
 int T_COLLELEM ;
 int T_COLLSYM ;
 scalar_t__ T_END ;
 int T_NULL ;
 int T_SYMBOL ;
 int add_tok (int) ;
 scalar_t__ category ;
 int esc_char ;
 int escaped ;
 int get_escaped (int) ;
 int last_kw ;
 int lookup_charmap (int *,int *) ;
 int * lookup_collelem (int *) ;
 int * lookup_collsym (int *) ;
 int scanc () ;
 scalar_t__ strcmp (int *,scalar_t__) ;
 int strdup (int *) ;
 TYPE_2__* symwords ;
 int * token ;
 scalar_t__ tokidx ;
 scalar_t__ toksz ;
 int yyerror (char*) ;
 TYPE_1__ yylval ;

int
get_symbol(void)
{
 int c;

 while ((c = scanc()) != EOF) {
  if (escaped) {
   escaped = 0;
   if (c == '\n')
    continue;
   add_tok(get_escaped(c));
   continue;
  }
  if (c == esc_char) {
   escaped = 1;
   continue;
  }
  if (c == '\n') {
   yyerror("unterminated symbolic name");
   continue;
  }
  if (c == '>') {







   if (token == ((void*)0)) {
    yyerror("missing symbolic name");
    return (T_NULL);
   }
   tokidx = 0;





   if (category == T_END) {
    int i;
    for (i = 0; symwords[i].name != 0; i++) {
     if (strcmp(token, symwords[i].name) ==
         0) {
      last_kw = symwords[i].id;
      return (last_kw);
     }
    }
   }





   if ((category != T_CHARMAP) &&
       (lookup_charmap(token, &yylval.wc)) != -1) {
    return (T_CHAR);
   }
   if ((yylval.collsym = lookup_collsym(token)) != ((void*)0)) {
    return (T_COLLSYM);
   }
   if ((yylval.collelem = lookup_collelem(token)) !=
       ((void*)0)) {
    return (T_COLLELEM);
   }

   yylval.token = strdup(token);
   token = ((void*)0);
   toksz = 0;
   tokidx = 0;
   return (T_SYMBOL);
  }
  add_tok(c);
 }

 yyerror("unterminated symbolic name");
 return (EOF);
}
