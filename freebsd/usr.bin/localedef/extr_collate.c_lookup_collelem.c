
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* symbol; } ;
typedef TYPE_1__ collelem_t ;


 TYPE_1__* RB_FIND (int ,int *,TYPE_1__*) ;
 int elem_by_symbol ;

collelem_t *
lookup_collelem(char *symbol)
{
 collelem_t srch;

 srch.symbol = symbol;
 return (RB_FIND(elem_by_symbol, &elem_by_symbol, &srch));
}
