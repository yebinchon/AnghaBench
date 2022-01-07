
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int mode_t ;
struct TYPE_9__ {int name; } ;
struct TYPE_8__ {int m_data; int flags; } ;
typedef TYPE_1__ PLAN ;
typedef TYPE_2__ OPTION ;


 int FTS_NOSTAT ;
 int F_ANY ;
 int F_ATLEAST ;
 int errx (int,char*,int ,char*) ;
 int free (int *) ;
 int ftsoptions ;
 int getmode (int *,int ) ;
 char* nextarg (TYPE_2__*,char***) ;
 TYPE_1__* palloc (TYPE_2__*) ;
 int * setmode (char*) ;

PLAN *
c_perm(OPTION *option, char ***argvp)
{
 char *perm;
 PLAN *new;
 mode_t *set;

 perm = nextarg(option, argvp);
 ftsoptions &= ~FTS_NOSTAT;

 new = palloc(option);

 if (*perm == '-') {
  new->flags |= F_ATLEAST;
  ++perm;
 } else if (*perm == '+') {
  new->flags |= F_ANY;
  ++perm;
 }

 if ((set = setmode(perm)) == ((void*)0))
  errx(1, "%s: %s: illegal mode string", option->name, perm);

 new->m_data = getmode(set, 0);
 free(set);
 return new;
}
