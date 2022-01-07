
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counters {int dummy; } ;


 int expression (struct counters*,int) ;
 int stub1 (struct counters*,int) ;

__attribute__((used)) static void
do_expression(struct counters *cpu, int pos)
{
 if (expression == ((void*)0))
  return;
 (*expression)(cpu, pos);
}
