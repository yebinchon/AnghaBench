
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_host {int nh_state; } ;



int
nlm_host_get_state(struct nlm_host *host)
{

 return (host->nh_state);
}
