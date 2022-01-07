
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ kind; char* str; } ;
typedef TYPE_1__ token ;
typedef int defkind ;
struct TYPE_9__ {scalar_t__ rel; char* name; char* array_max; int type; int prefix; } ;
typedef TYPE_2__ declaration ;


 scalar_t__ REL_ALIAS ;
 scalar_t__ REL_ARRAY ;
 scalar_t__ REL_POINTER ;
 scalar_t__ REL_VECTOR ;
 int TOK_IDENT ;
 int TOK_LANGLE ;
 int TOK_LBRACKET ;
 int TOK_RANGLE ;
 int TOK_RBRACKET ;
 scalar_t__ TOK_STAR ;
 int check_type_name (int ,int ) ;
 int error (char*) ;
 int get_type (int *,int *,int ) ;
 scalar_t__ peekscan (int ,TYPE_1__*) ;
 int scan (int ,TYPE_1__*) ;
 int scan2 (scalar_t__,int ,TYPE_1__*) ;
 int scan_num (TYPE_1__*) ;
 scalar_t__ streq (int ,char*) ;

__attribute__((used)) static void
get_declaration(declaration *dec, defkind dkind)
{
 token tok;

 get_type(&dec->prefix, &dec->type, dkind);
 dec->rel = REL_ALIAS;
 if (streq(dec->type, "void")) {
  return;
 }

 check_type_name(dec->type, 0);
 scan2(TOK_STAR, TOK_IDENT, &tok);
 if (tok.kind == TOK_STAR) {
  dec->rel = REL_POINTER;
  scan(TOK_IDENT, &tok);
 }
 dec->name = tok.str;
 if (peekscan(TOK_LBRACKET, &tok)) {
  if (dec->rel == REL_POINTER) {
   error("no array-of-pointer declarations -- use typedef");
  }
  dec->rel = REL_VECTOR;
  scan_num(&tok);
  dec->array_max = tok.str;
  scan(TOK_RBRACKET, &tok);
 } else if (peekscan(TOK_LANGLE, &tok)) {
  if (dec->rel == REL_POINTER) {
   error("no array-of-pointer declarations -- use typedef");
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
 if (streq(dec->type, "opaque")) {
  if (dec->rel != REL_ARRAY && dec->rel != REL_VECTOR) {
   error("array declaration expected");
  }
 } else if (streq(dec->type, "string")) {
  if (dec->rel != REL_ARRAY) {
   error("variable-length array declaration expected");
  }
 }
}
