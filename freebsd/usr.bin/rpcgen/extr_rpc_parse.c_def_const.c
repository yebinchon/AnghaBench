
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int str; } ;
typedef TYPE_2__ token ;
struct TYPE_7__ {int co; } ;
struct TYPE_9__ {TYPE_1__ def; int def_name; int def_kind; } ;
typedef TYPE_3__ definition ;


 int DEF_CONST ;
 int TOK_EQUAL ;
 int TOK_IDENT ;
 int TOK_STRCONST ;
 int scan (int ,TYPE_2__*) ;
 int scan2 (int ,int ,TYPE_2__*) ;

__attribute__((used)) static void
def_const(definition *defp)
{
 token tok;

 defp->def_kind = DEF_CONST;
 scan(TOK_IDENT, &tok);
 defp->def_name = tok.str;
 scan(TOK_EQUAL, &tok);
 scan2(TOK_IDENT, TOK_STRCONST, &tok);
 defp->def.co = tok.str;
}
