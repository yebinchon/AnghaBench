
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_host {int nh_refs; } ;


 int nlm_host_destroy (struct nlm_host*) ;
 scalar_t__ refcount_release (int *) ;

void nlm_host_release(struct nlm_host *host)
{
 if (refcount_release(&host->nh_refs)) {



  nlm_host_destroy(host);
 }
}
