
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_host {int nh_sysid; } ;



int nlm_host_get_sysid(struct nlm_host *host)
{

 return (host->nh_sysid);
}
