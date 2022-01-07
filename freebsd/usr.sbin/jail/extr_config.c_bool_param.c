
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfparam {char const* name; int val; } ;
struct TYPE_2__ {int s; } ;


 scalar_t__ TAILQ_EMPTY (int *) ;
 TYPE_1__* TAILQ_LAST (int *,int ) ;
 int cfstrings ;
 int strcasecmp (int ,char*) ;
 int strncmp (char const*,char*,int) ;
 char* strrchr (char const*,char) ;
 scalar_t__ strtol (int ,int *,int) ;

int
bool_param(const struct cfparam *p)
{
 const char *cs;

 if (p == ((void*)0))
  return 0;
 cs = strrchr(p->name, '.');
 return !strncmp(cs ? cs + 1 : p->name, "no", 2) ^
     (TAILQ_EMPTY(&p->val) ||
      !strcasecmp(TAILQ_LAST(&p->val, cfstrings)->s, "true") ||
      (strtol(TAILQ_LAST(&p->val, cfstrings)->s, ((void*)0), 10)));
}
