
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ kind; } ;
typedef TYPE_1__ token ;
typedef scalar_t__ tok_kind ;


 int expected2 (scalar_t__,scalar_t__) ;
 int get_token (TYPE_1__*) ;

void
scan2(tok_kind expect1, tok_kind expect2, token *tokp)
{
 get_token(tokp);
 if (tokp->kind != expect1 && tokp->kind != expect2) {
  expected2(expect1, expect2);
 }
}
