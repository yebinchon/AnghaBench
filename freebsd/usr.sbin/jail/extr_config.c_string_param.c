
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfparam {int val; } ;
struct TYPE_2__ {char const* s; } ;


 int TAILQ_EMPTY (int *) ;
 TYPE_1__* TAILQ_LAST (int *,int ) ;
 int cfstrings ;

const char *
string_param(const struct cfparam *p)
{
 return (p && !TAILQ_EMPTY(&p->val)
     ? TAILQ_LAST(&p->val, cfstrings)->s : ((void*)0));
}
