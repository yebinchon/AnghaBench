
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ kind; char* str; } ;
typedef TYPE_1__ token ;
typedef scalar_t__ defkind ;
struct TYPE_9__ {scalar_t__ rel; char* type; char* name; char* array_max; int * prefix; } ;
typedef TYPE_2__ declaration ;


 char* ARGNAME ;
 scalar_t__ DEF_PROGRAM ;
 void* REL_ALIAS ;
 scalar_t__ REL_ARRAY ;
 scalar_t__ REL_POINTER ;
 int TOK_IDENT ;
 int TOK_LANGLE ;
 int TOK_RANGLE ;
 scalar_t__ TOK_RPAREN ;
 int TOK_STAR ;
 int error (char*) ;
 int get_type (int **,char**,scalar_t__) ;
 int peek (TYPE_1__*) ;
 scalar_t__ peekscan (int ,TYPE_1__*) ;
 int scan (int ,TYPE_1__*) ;
 int scan_num (TYPE_1__*) ;
 int sprintf (char*,char*,char*,int) ;
 int strcpy (char*,char*) ;
 scalar_t__ streq (char*,char*) ;
 char* xstrdup (char*) ;

__attribute__((used)) static void
get_prog_declaration(declaration *dec, defkind dkind, int num)
{
 token tok;
 char name[10];

 if (dkind == DEF_PROGRAM) {
  peek(&tok);
  if (tok.kind == TOK_RPAREN) {
   dec->rel = REL_ALIAS;
   dec->type = "void";
   dec->prefix = ((void*)0);
   dec->name = ((void*)0);
   return;
  }
 }
 get_type(&dec->prefix, &dec->type, dkind);
 dec->rel = REL_ALIAS;
 if (peekscan(TOK_IDENT, &tok))
  strcpy(name, tok.str);
 else
  sprintf(name, "%s%d", ARGNAME, num);


 dec->name = (char *) xstrdup(name);
 if (streq(dec->type, "void")) {
  return;
 }

 if (streq(dec->type, "opaque")) {
  error("opaque -- illegal argument type");
 }
 if (peekscan(TOK_STAR, &tok)) {
  if (streq(dec->type, "string")) {
   error("pointer to string not allowed in program arguments");
  }
  dec->rel = REL_POINTER;
  if (peekscan(TOK_IDENT, &tok)) {

   dec->name = xstrdup(tok.str);
  }
 }
 if (peekscan(TOK_LANGLE, &tok)) {
  if (!streq(dec->type, "string")) {
   error("arrays cannot be declared as arguments to procedures -- use typedef");
  }
  dec->rel = REL_ARRAY;
  if (peekscan(TOK_RANGLE, &tok)) {
   dec->array_max = "~0";

  } else {
   scan_num(&tok);
   dec->array_max = tok.str;
   scan(TOK_RANGLE, &tok);
  }
 }
 if (streq(dec->type, "string")) {
  if (dec->rel != REL_ARRAY) {





   dec->rel = REL_ARRAY;
   dec->array_max = "~0";
  }
 }
}
