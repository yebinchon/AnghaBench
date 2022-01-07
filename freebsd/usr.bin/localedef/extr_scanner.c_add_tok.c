
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* realloc (char*,int) ;
 char* token ;
 int tokidx ;
 int toksz ;
 int yyerror (char*) ;

void
add_tok(int c)
{
 if ((tokidx + 1) >= toksz) {
  toksz += 64;
  if ((token = realloc(token, toksz)) == ((void*)0)) {
   yyerror("out of memory");
   tokidx = 0;
   toksz = 0;
   return;
  }
 }

 token[tokidx++] = (char)c;
 token[tokidx] = 0;
}
