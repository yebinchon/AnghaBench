
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ kind; } ;
typedef TYPE_1__ token ;
typedef scalar_t__ tok_kind ;


 int expected1 (scalar_t__) ;
 int get_token (TYPE_1__*) ;

void
scan(tok_kind expect, token *tokp)
{
 get_token(tokp);
 if (tokp->kind != expect) {
  expected1(expect);
 }
}
