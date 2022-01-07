
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_short ;
typedef int u_int32_t ;
struct TYPE_5__ {int s_addr; } ;
struct TYPE_8__ {int sin_port; TYPE_1__ sin_addr; } ;
struct TYPE_6__ {int ypbind_binding_port; int ypbind_binding_addr; } ;
struct TYPE_7__ {TYPE_2__ ypbind_bindinfo; void* ypbind_error; } ;
struct ypbind_resp {char* dom_domain; int dom_lockfd; TYPE_4__ dom_server_addr; TYPE_3__ ypbind_resp_u; int ypbind_status; struct ypbind_resp* dom_pnext; int dom_vers; scalar_t__ dom_default; scalar_t__ dom_alive; } ;
struct _dom_binding {char* dom_domain; int dom_lockfd; TYPE_4__ dom_server_addr; TYPE_3__ ypbind_resp_u; int ypbind_status; struct _dom_binding* dom_pnext; int dom_vers; scalar_t__ dom_default; scalar_t__ dom_alive; } ;
typedef int domainname ;
typedef int SVCXPRT ;
typedef int CLIENT ;


 char* BINDINGDIR ;
 int LOG_NOTICE ;
 int LOG_WARNING ;
 int MAXPATHLEN ;
 scalar_t__ MAX_DOMAINS ;
 void* YPBIND_ERR_NOSERV ;
 void* YPBIND_ERR_RESC ;
 int YPBIND_FAIL_VAL ;
 int YPBIND_SUCC_VAL ;
 scalar_t__ YPMAXDOMAIN ;
 int YPVERS ;
 int bzero (struct ypbind_resp*,int) ;
 scalar_t__ domains ;
 struct ypbind_resp* malloc (int) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ ping (struct ypbind_resp*) ;
 int sprintf (char*,char*,char*,char*,int ) ;
 scalar_t__ strchr (int ,char) ;
 scalar_t__ strcmp (char*,int ) ;
 int strlcpy (char*,int ,int) ;
 scalar_t__ strlen (int ) ;
 int syslog (int ,char*,...) ;
 int unlink (char*) ;
 scalar_t__ yp_restricted ;
 struct ypbind_resp* ypbindlist ;

__attribute__((used)) static struct ypbind_resp *
ypbindproc_domain_2_yp(SVCXPRT *transp, domainname *argp, CLIENT *clnt)
{
 static struct ypbind_resp res;
 struct _dom_binding *ypdb;
 char path[MAXPATHLEN];

 bzero(&res, sizeof res);
 res.ypbind_status = YPBIND_FAIL_VAL;
 res.ypbind_resp_u.ypbind_error = YPBIND_ERR_NOSERV;

 if (strchr(*argp, '/')) {
  syslog(LOG_WARNING, "Domain name '%s' has embedded slash -- rejecting.", *argp);

  return(&res);
 }

 for (ypdb = ypbindlist; ypdb; ypdb = ypdb->dom_pnext) {
  if (strcmp(ypdb->dom_domain, *argp) == 0)
   break;
  }

 if (ypdb == ((void*)0)) {
  if (yp_restricted) {
   syslog(LOG_NOTICE, "Running in restricted mode -- request to bind domain \"%s\" rejected.\n", *argp);
   return (&res);
  }

  if (domains >= MAX_DOMAINS) {
   syslog(LOG_WARNING, "domain limit (%d) exceeded",
       MAX_DOMAINS);
   res.ypbind_resp_u.ypbind_error = YPBIND_ERR_RESC;
   return (&res);
  }
  if (strlen(*argp) > YPMAXDOMAIN) {
   syslog(LOG_WARNING, "domain %s too long", *argp);
   res.ypbind_resp_u.ypbind_error = YPBIND_ERR_RESC;
   return (&res);
  }
  ypdb = malloc(sizeof *ypdb);
  if (ypdb == ((void*)0)) {
   syslog(LOG_WARNING, "malloc: %m");
   res.ypbind_resp_u.ypbind_error = YPBIND_ERR_RESC;
   return (&res);
  }
  bzero(ypdb, sizeof *ypdb);
  strlcpy(ypdb->dom_domain, *argp, sizeof ypdb->dom_domain);
  ypdb->dom_vers = YPVERS;
  ypdb->dom_alive = 0;
  ypdb->dom_default = 0;
  ypdb->dom_lockfd = -1;
  sprintf(path, "%s/%s.%ld", BINDINGDIR,
     ypdb->dom_domain, ypdb->dom_vers);
  unlink(path);
  ypdb->dom_pnext = ypbindlist;
  ypbindlist = ypdb;
  domains++;
 }

 if (ping(ypdb)) {
  return (&res);
 }

 res.ypbind_status = YPBIND_SUCC_VAL;
 res.ypbind_resp_u.ypbind_error = 0;
 memcpy(&res.ypbind_resp_u.ypbind_bindinfo.ypbind_binding_addr,
     &ypdb->dom_server_addr.sin_addr.s_addr, sizeof(u_int32_t));
 memcpy(&res.ypbind_resp_u.ypbind_bindinfo.ypbind_binding_port,
     &ypdb->dom_server_addr.sin_port, sizeof(u_short));



 return (&res);
}
