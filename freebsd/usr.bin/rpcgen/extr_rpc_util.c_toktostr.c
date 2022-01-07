
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ kind; char const* str; } ;
typedef TYPE_1__ token ;
typedef scalar_t__ tok_kind ;


 scalar_t__ TOK_EOF ;
 TYPE_1__* tokstrings ;

__attribute__((used)) static const char *
toktostr(tok_kind kind)
{
 token *sp;

 for (sp = tokstrings; sp->kind != TOK_EOF && sp->kind != kind; sp++);
 return (sp->str);
}
