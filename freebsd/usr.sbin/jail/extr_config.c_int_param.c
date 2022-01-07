
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfparam {int val; } ;
struct TYPE_2__ {int s; } ;


 scalar_t__ TAILQ_EMPTY (int *) ;
 TYPE_1__* TAILQ_LAST (int *,int ) ;
 int cfstrings ;
 int strtol (int ,int *,int) ;

int
int_param(const struct cfparam *p, int *ip)
{
 if (p == ((void*)0) || TAILQ_EMPTY(&p->val))
  return 0;
 *ip = strtol(TAILQ_LAST(&p->val, cfstrings)->s, ((void*)0), 10);
 return 1;
}
