
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfjail {int * dep; } ;
struct cfdepend {unsigned int flags; struct cfjail** j; } ;


 size_t DEP_FROM ;
 size_t DEP_TO ;
 int STAILQ_INSERT_TAIL (int *,struct cfdepend*,int ) ;
 struct cfdepend* emalloc (int) ;
 int * tq ;

__attribute__((used)) static void
dep_add(struct cfjail *from, struct cfjail *to, unsigned flags)
{
 struct cfdepend *d;

 d = emalloc(sizeof(struct cfdepend));
 d->flags = flags;
 d->j[DEP_FROM] = from;
 d->j[DEP_TO] = to;
 STAILQ_INSERT_TAIL(&from->dep[DEP_FROM], d, tq[DEP_FROM]);
 STAILQ_INSERT_TAIL(&to->dep[DEP_TO], d, tq[DEP_TO]);
}
