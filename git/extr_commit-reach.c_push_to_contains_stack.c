
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct contains_stack {int nr; TYPE_1__* contains_stack; int alloc; } ;
struct commit {int parents; } ;
struct TYPE_2__ {int parents; struct commit* commit; } ;


 int ALLOC_GROW (TYPE_1__*,int,int ) ;

__attribute__((used)) static void push_to_contains_stack(struct commit *candidate, struct contains_stack *contains_stack)
{
 ALLOC_GROW(contains_stack->contains_stack, contains_stack->nr + 1, contains_stack->alloc);
 contains_stack->contains_stack[contains_stack->nr].commit = candidate;
 contains_stack->contains_stack[contains_stack->nr++].parents = candidate->parents;
}
