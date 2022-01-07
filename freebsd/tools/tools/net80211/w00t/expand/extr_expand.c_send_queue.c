
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue {struct queue* live; } ;
struct params {int state; int guess; struct queue* q; } ;


 int S_WAIT_RELAY ;
 int assert (struct queue*) ;
 int send_mcast (struct params*,int ) ;

void send_queue(struct params *p)
{
 struct queue *q = p->q;
 int i;

 assert(q);
 assert(q->live);

 for (i = 0; i < 5; i++) {
  send_mcast(p, p->guess++);
 }

 p->state = S_WAIT_RELAY;
}
