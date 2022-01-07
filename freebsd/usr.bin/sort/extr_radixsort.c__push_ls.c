
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct level_stack {struct level_stack* next; } ;


 struct level_stack* g_ls ;

__attribute__((used)) static void
_push_ls(struct level_stack *ls)
{

 ls->next = g_ls;
 g_ls = ls;
}
