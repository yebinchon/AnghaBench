
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct rndtest_state {int dummy; } ;


 int RANDOM_PURE_HIFN ;
 int random_harvest_queue (void*,int ,int ) ;

__attribute__((used)) static void
default_harvest(struct rndtest_state *rsp, void *buf, u_int count)
{

 random_harvest_queue(buf, count, RANDOM_PURE_HIFN);
}
