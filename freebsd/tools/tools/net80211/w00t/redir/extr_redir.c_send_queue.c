
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue {struct queue* live; } ;
struct params {int state; struct queue* q; } ;


 int S_WAIT_ACK ;
 int assert (struct queue*) ;
 int send_header (struct params*,struct queue*) ;

void send_queue(struct params *p)
{
 struct queue *q = p->q;

 assert(q);
 assert(q->live);

 send_header(p, q);
 p->state = S_WAIT_ACK;
}
