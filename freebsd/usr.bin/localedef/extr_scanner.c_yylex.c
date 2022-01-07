
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wc; } ;


 int EOF ;
 int T_CHAR ;
 int T_COMMA ;
 int T_GT ;
 int T_LPAREN ;
 int T_NL ;
 int T_NULL ;
 int T_QUOTE ;
 int T_RPAREN ;
 int T_SEMI ;
 int add_tok (int) ;
 int assert (int) ;
 int com_char ;
 int consume_token () ;
 int esc_char ;
 int escaped ;
 int get_escaped (int) ;
 int get_symbol () ;
 int get_wide () ;
 int hadtok ;
 int instring ;
 int scanc () ;
 scalar_t__ strchr (char*,int) ;
 scalar_t__ tokidx ;
 int unscanc (int) ;
 TYPE_1__ yylval ;

int
yylex(void)
{
 int c;

 while ((c = scanc()) != EOF) {


  if (instring) {
   if (escaped) {
    escaped = 0;


    if (c == '\n')
     continue;

    if (strchr("xXd01234567", c)) {
     unscanc(c);
     unscanc(esc_char);
     return (get_wide());
    }
    yylval.wc = get_escaped(c);
    return (T_CHAR);
   }
   if (c == esc_char) {
    escaped = 1;
    continue;
   }
   switch (c) {
   case '<':
    return (get_symbol());
   case '>':

    return (T_GT);
   case '"':
    instring = 0;
    return (T_QUOTE);
   default:
    yylval.wc = c;
    return (T_CHAR);
   }
  }


  if (escaped) {
   escaped = 0;
   if (c == '\n') {

    continue;
   }
   hadtok = 1;
   if (tokidx) {

    return (T_NULL);
   }


   if (strchr("xXd01234567", c)) {
    unscanc(c);
    unscanc(esc_char);
    return (get_wide());
   }

   add_tok(get_escaped(c));
   continue;
  }


  if (c == esc_char) {
   escaped = 1;
   continue;
  }


  if (c == com_char) {
   while (c != '\n') {
    if ((c = scanc()) == EOF) {

     return (EOF);
    }
   }
   assert(c == '\n');
   if (!hadtok) {




    continue;
   }
   hadtok = 0;
   return (T_NL);
  }

  if (strchr(" \t\n;()<>,\"", c) && (tokidx != 0)) {





   unscanc(c);
   return (consume_token());
  }

  switch (c) {
  case '\n':
   if (!hadtok) {




    continue;
   }

   hadtok = 0;
   return (T_NL);
  case ',':
   hadtok = 1;
   return (T_COMMA);
  case ';':
   hadtok = 1;
   return (T_SEMI);
  case '(':
   hadtok = 1;
   return (T_LPAREN);
  case ')':
   hadtok = 1;
   return (T_RPAREN);
  case '>':
   hadtok = 1;
   return (T_GT);
  case '<':

   hadtok = 1;
   return (get_symbol());
  case ' ':
  case '\t':

   continue;
  case '"':
   hadtok = 1;
   instring = 1;
   return (T_QUOTE);
  default:
   hadtok = 1;
   add_tok(c);
   continue;
  }
 }
 return (EOF);
}
