
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfjail {int * queue; int * dep; int params; } ;


 size_t DEP_FROM ;
 size_t DEP_TO ;
 int STAILQ_INIT (int *) ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct cfjail*,int ) ;
 int cfjails ;
 struct cfjail* emalloc (int) ;
 int memset (struct cfjail*,int ,int) ;
 int tq ;

struct cfjail *
add_jail(void)
{
 struct cfjail *j;

 j = emalloc(sizeof(struct cfjail));
 memset(j, 0, sizeof(struct cfjail));
 TAILQ_INIT(&j->params);
 STAILQ_INIT(&j->dep[DEP_FROM]);
 STAILQ_INIT(&j->dep[DEP_TO]);
 j->queue = &cfjails;
 TAILQ_INSERT_TAIL(&cfjails, j, tq);
 return j;
}
