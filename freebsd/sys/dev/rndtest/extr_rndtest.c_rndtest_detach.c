
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rndtest_state {int rs_to; } ;


 int M_DEVBUF ;
 int callout_stop (int *) ;
 int free (struct rndtest_state*,int ) ;

void
rndtest_detach(struct rndtest_state *rsp)
{
 callout_stop(&rsp->rs_to);
 free(rsp, M_DEVBUF);
}
