
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strategy {int dummy; } ;


 int ALLOC_GROW (struct strategy**,scalar_t__,int ) ;
 struct strategy** use_strategies ;
 int use_strategies_alloc ;
 scalar_t__ use_strategies_nr ;

__attribute__((used)) static void append_strategy(struct strategy *s)
{
 ALLOC_GROW(use_strategies, use_strategies_nr + 1, use_strategies_alloc);
 use_strategies[use_strategies_nr++] = s;
}
