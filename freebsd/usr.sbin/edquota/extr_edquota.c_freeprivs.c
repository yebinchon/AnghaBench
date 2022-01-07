
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quotause {struct quotause* next; int qf; } ;


 int free (struct quotause*) ;
 int quota_close (int ) ;

void
freeprivs(struct quotause *quplist)
{
 struct quotause *qup, *nextqup;

 for (qup = quplist; qup; qup = nextqup) {
  quota_close(qup->qf);
  nextqup = qup->next;
  free(qup);
 }
}
