
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int jobids; int users; } ;


 int TAILQ_INIT (int *) ;

void
init_request(struct request *rp)
{
 static struct request zero;

 *rp = zero;
 TAILQ_INIT(&rp->users);
 TAILQ_INIT(&rp->jobids);
}
