
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct dump_pa {scalar_t__ pa_size; } ;



__attribute__((used)) static int
cb_size(struct dump_pa *mdp, int seqnr, void *arg)
{
 uint64_t *sz;

 sz = (uint64_t *)arg;
 *sz += (uint64_t)mdp->pa_size;
 return (0);
}
