
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ val; } ;
typedef TYPE_1__ symtab_t ;
struct TYPE_7__ {scalar_t__ nclass; scalar_t__ neisaid; char* eisaid; int ncompat; char* compat; int class; } ;
typedef TYPE_2__ pnpid_t ;


 scalar_t__ MOUSE_PROTO_UNKNOWN ;
 TYPE_1__* gettoken (int ,char*,int) ;
 int pnpprod ;
 scalar_t__ strncmp (int ,char*,scalar_t__) ;

__attribute__((used)) static symtab_t *
pnpproto(pnpid_t *id)
{
    symtab_t *t;
    int i, j;

    if (id->nclass > 0)
 if (strncmp(id->class, "MOUSE", id->nclass) != 0 &&
     strncmp(id->class, "TABLET", id->nclass) != 0)

     return (((void*)0));

    if (id->neisaid > 0) {
 t = gettoken(pnpprod, id->eisaid, id->neisaid);
 if (t->val != MOUSE_PROTO_UNKNOWN)
     return (t);
    }





    if (id->ncompat <= 0)
 return (((void*)0));
    for (i = 0; i < id->ncompat; ++i) {
 for (j = i; id->compat[i] != ','; ++i)
     if (i >= id->ncompat)
  break;
 if (i > j) {
     t = gettoken(pnpprod, id->compat + j, i - j);
     if (t->val != MOUSE_PROTO_UNKNOWN)
  return (t);
 }
    }

    return (((void*)0));
}
