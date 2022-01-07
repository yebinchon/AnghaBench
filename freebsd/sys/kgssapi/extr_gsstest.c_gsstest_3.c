
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int xdrproc_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct thread {int td_ucred; } ;
struct TYPE_11__ {int s_addr; } ;
struct sockaddr_in {int sin_len; scalar_t__ sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int sin ;
typedef int service ;
typedef scalar_t__ rpc_gss_service_t ;
struct TYPE_12__ {char const* actual_mechanism; int minor_status; int major_status; } ;
typedef TYPE_2__ rpc_gss_options_ret_t ;
typedef int gss_OID ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
struct TYPE_14__ {int td_ucred; } ;
struct TYPE_13__ {int * cl_auth; } ;
typedef TYPE_3__ CLIENT ;
typedef int AUTH ;


 int AF_INET ;
 int AUTH_DESTROY (int *) ;
 int CLNT_CALL (TYPE_3__*,int,int ,char*,int ,char*,struct timeval) ;
 int CLNT_DESTROY (TYPE_3__*) ;
 int CLNT_RELEASE (TYPE_3__*) ;
 int GSS_C_NO_OID ;
 int INADDR_LOOPBACK ;
 int RPC_SUCCESS ;
 TYPE_7__* curthread ;
 int getcredhostname (int ,char*,int) ;
 TYPE_3__* gsstest_get_rpc (struct sockaddr*,int,int) ;
 int htonl (int ) ;
 int memcpy (char*,char*,int) ;
 int report_error (int ,int ,int ) ;
 int rpc_gss_mech_to_oid (char const*,int *) ;
 int * rpc_gss_seccreate (TYPE_3__*,int ,char*,char*,scalar_t__,int *,int *,TYPE_2__*) ;
 int rpc_gss_set_defaults (int *,scalar_t__,int *) ;
 scalar_t__ rpc_gss_svc_none ;
 scalar_t__ rpc_gss_svc_privacy ;
 int uprintf (char*,...) ;
 scalar_t__ xdr_int ;

__attribute__((used)) static int
gsstest_3(struct thread *td)
{
 struct sockaddr_in sin;
 char service[128];
 CLIENT *client;
 AUTH *auth;
 rpc_gss_options_ret_t options_ret;
 enum clnt_stat stat;
 struct timeval tv;
 rpc_gss_service_t svc;
 int i;

 sin.sin_len = sizeof(sin);
 sin.sin_family = AF_INET;
 sin.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
 sin.sin_port = 0;

 client = gsstest_get_rpc((struct sockaddr *) &sin, 123456, 1);
 if (!client) {
  uprintf("Can't connect to service\n");
  return(1);
 }

 memcpy(service, "host@", 5);
 getcredhostname(td->td_ucred, service + 5, sizeof(service) - 5);

 auth = rpc_gss_seccreate(client, curthread->td_ucred,
     service, "kerberosv5", rpc_gss_svc_privacy,
     ((void*)0), ((void*)0), &options_ret);
 if (!auth) {
  gss_OID oid;
  uprintf("Can't authorize to service (mech=%s)\n",
   options_ret.actual_mechanism);
  oid = GSS_C_NO_OID;
  rpc_gss_mech_to_oid(options_ret.actual_mechanism, &oid);
  report_error(oid, options_ret.major_status,
      options_ret.minor_status);
  CLNT_DESTROY(client);
  return (1);
 }

 for (svc = rpc_gss_svc_none; svc <= rpc_gss_svc_privacy; svc++) {
  const char *svc_names[] = {
   "rpc_gss_svc_default",
   "rpc_gss_svc_none",
   "rpc_gss_svc_integrity",
   "rpc_gss_svc_privacy"
  };
  int num;

  rpc_gss_set_defaults(auth, svc, ((void*)0));

  client->cl_auth = auth;
  tv.tv_sec = 5;
  tv.tv_usec = 0;
  for (i = 42; i < 142; i++) {
   num = i;
   stat = CLNT_CALL(client, 1,
       (xdrproc_t) xdr_int, (char *) &num,
       (xdrproc_t) xdr_int, (char *) &num, tv);
   if (stat == RPC_SUCCESS) {
    if (num != i + 100)
     uprintf("unexpected reply %d\n", num);
   } else {
    uprintf("call failed, stat=%d\n", (int) stat);
    break;
   }
  }
  if (i == 142)
   uprintf("call succeeded with %s\n", svc_names[svc]);
 }

 AUTH_DESTROY(auth);
 CLNT_RELEASE(client);

 return (0);
}
