
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct circleq_dnsentry {struct circleq_dnsentry* name; int ttl; } ;


 struct circleq_dnsentry* TAILQ_FIRST (int *) ;
 struct circleq_dnsentry* TAILQ_NEXT (struct circleq_dnsentry*,int ) ;
 int TAILQ_REMOVE (int *,struct circleq_dnsentry*,int ) ;
 int free (struct circleq_dnsentry*) ;
 int links ;
 scalar_t__ pending ;
 int qhead ;

void
yp_prune_dnsq(void)
{
 register struct circleq_dnsentry *q, *n;

 q = TAILQ_FIRST(&qhead);
 while (q != ((void*)0)) {
  q->ttl--;
  n = TAILQ_NEXT(q, links);
  if (!q->ttl) {
   TAILQ_REMOVE(&qhead, q, links);
   free(q->name);
   free(q);
   pending--;
  }
  q = n;
 }

 if (pending < 0)
  pending = 0;

 return;
}
