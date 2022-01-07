
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int inner_scope; } ;
typedef TYPE_1__ scope_t ;
struct TYPE_8__ {int inner_scope; } ;


 int EX_SOFTWARE ;
 TYPE_6__* SLIST_FIRST (int *) ;
 int SLIST_INSERT_HEAD (int *,TYPE_1__*,int ) ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int scope_links ;
 int scope_stack ;
 int scope_stack_links ;
 int stop (char*,int ) ;

scope_t *
scope_alloc(void)
{
 scope_t *new_scope;

 new_scope = (scope_t *)malloc(sizeof(scope_t));
 if (new_scope == ((void*)0))
  stop("Unable to malloc scope object", EX_SOFTWARE);
 memset(new_scope, 0, sizeof(*new_scope));
 TAILQ_INIT(&new_scope->inner_scope);

 if (SLIST_FIRST(&scope_stack) != ((void*)0)) {
  TAILQ_INSERT_TAIL(&SLIST_FIRST(&scope_stack)->inner_scope,
      new_scope, scope_links);
 }

 SLIST_INSERT_HEAD(&scope_stack, new_scope, scope_stack_links);
 return new_scope;
}
