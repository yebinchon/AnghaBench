
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int * buf; } ;
struct svc_dg_data {TYPE_3__ su_srcaddr; } ;
struct fdlist {TYPE_2__* nconf; struct fdlist* next; } ;
struct TYPE_9__ {int nc_netid; } ;
struct TYPE_8__ {scalar_t__ xp_p2; } ;
typedef TYPE_1__ SVCXPRT ;


 scalar_t__ FALSE ;
 int LOG_ERR ;
 char* addrmerge (TYPE_3__*,char*,char*,char*) ;
 scalar_t__ check_bound (struct fdlist*,char*) ;
 scalar_t__ debugging ;
 struct fdlist* fdhead ;
 int fprintf (int ,char*,char*,...) ;
 int free (char*) ;
 char* nullstring ;
 int stderr ;
 scalar_t__ strcmp (int ,char*) ;
 TYPE_3__* svc_getrpccaller (TYPE_1__*) ;
 int syslog (int ,char*,int ) ;
 char* taddr2uaddr (TYPE_2__*,TYPE_3__*) ;

char *
mergeaddr(SVCXPRT *xprt, char *netid, char *uaddr, char *saddr)
{
 struct fdlist *fdl;
 struct svc_dg_data *dg_data;
 char *c_uaddr, *s_uaddr, *m_uaddr, *allocated_uaddr = ((void*)0);

 for (fdl = fdhead; fdl; fdl = fdl->next)
  if (strcmp(fdl->nconf->nc_netid, netid) == 0)
   break;
 if (fdl == ((void*)0))
  return (((void*)0));
 if (check_bound(fdl, uaddr) == FALSE)

  return (nullstring);
 dg_data = (struct svc_dg_data*)xprt->xp_p2;
 if (dg_data != ((void*)0) && dg_data->su_srcaddr.buf != ((void*)0)) {
  c_uaddr = taddr2uaddr(fdl->nconf, &dg_data->su_srcaddr);
  allocated_uaddr = c_uaddr;
 }
 else if (saddr != ((void*)0)) {
  c_uaddr = saddr;
 } else {
  c_uaddr = taddr2uaddr(fdl->nconf, svc_getrpccaller(xprt));
  allocated_uaddr = c_uaddr;
 }
 if (c_uaddr == ((void*)0)) {
  syslog(LOG_ERR, "taddr2uaddr failed for %s",
   fdl->nconf->nc_netid);
  return (((void*)0));
 }
 s_uaddr = uaddr;



 m_uaddr = addrmerge(svc_getrpccaller(xprt), s_uaddr, c_uaddr, netid);





 free(allocated_uaddr);
 return (m_uaddr);
}
