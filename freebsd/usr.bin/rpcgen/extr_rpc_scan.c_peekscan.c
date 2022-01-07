
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ kind; } ;
typedef TYPE_1__ token ;
typedef scalar_t__ tok_kind ;


 int get_token (TYPE_1__*) ;
 int peek (TYPE_1__*) ;

int
peekscan(tok_kind expect, token *tokp)
{
 peek(tokp);
 if (tokp->kind == expect) {
  get_token(tokp);
  return (1);
 }
 return (0);
}
