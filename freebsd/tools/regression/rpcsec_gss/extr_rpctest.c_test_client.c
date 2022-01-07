
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int xdrproc_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef int rpcvers_t ;
typedef int rpcproc_t ;
typedef scalar_t__ rpc_gss_service_t ;
typedef int rpc_gss_options_ret_t ;
struct TYPE_12__ {int time_req; int * input_channel_bindings; int my_cred; int req_flags; } ;
typedef TYPE_2__ rpc_gss_options_req_t ;
typedef int hostname ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
struct TYPE_11__ {int re_errno; } ;
struct TYPE_14__ {int cf_stat; TYPE_1__ cf_error; } ;
struct TYPE_13__ {int * cl_auth; } ;
typedef TYPE_3__ CLIENT ;
typedef int AUTH ;


 int AUTH_DESTROY (int *) ;
 int CLNT_CALL (TYPE_3__*,int,int ,char*,int ,char*,struct timeval) ;
 int CLNT_DESTROY (TYPE_3__*) ;
 int GSS_C_MUTUAL_FLAG ;
 int GSS_C_NO_CREDENTIAL ;
 int RPC_SUCCESS ;
 TYPE_3__* clnt_create (char*,int,int,char const*) ;
 int clnt_pcreateerror (char*) ;
 int clnt_perror (TYPE_3__*,char*) ;
 int exit (int) ;
 int gethostname (char*,int) ;
 int printf (char*,...) ;
 TYPE_6__ rpc_createerr ;
 char** rpc_gss_get_mechanisms () ;
 int * rpc_gss_seccreate (TYPE_3__*,char*,char const*,scalar_t__,int *,TYPE_2__*,int *) ;
 int rpc_gss_set_defaults (int *,scalar_t__,int *) ;
 scalar_t__ rpc_gss_svc_none ;
 scalar_t__ rpc_gss_svc_privacy ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlcpy (char*,char const*,int) ;
 scalar_t__ xdr_int ;

__attribute__((used)) static void
test_client(int argc, const char **argv)
{
 rpcproc_t prog = 123456;
 rpcvers_t vers = 1;
 const char *netid = "tcp";
 char hostname[128], service[128+5];
 CLIENT *client;
 AUTH *auth;
 const char **mechs;
 rpc_gss_options_req_t options_req;
 rpc_gss_options_ret_t options_ret;
 rpc_gss_service_t svc;
 struct timeval tv;
 enum clnt_stat stat;

 if (argc == 2)
  strlcpy(hostname, argv[1], sizeof(hostname));
 else
  gethostname(hostname, sizeof(hostname));

 client = clnt_create(hostname, prog, vers, netid);
 if (!client) {
  printf("rpc_createerr.cf_stat = %d\n",
      rpc_createerr.cf_stat);
  printf("rpc_createerr.cf_error.re_errno = %d\n",
      rpc_createerr.cf_error.re_errno);
  return;
 }

 strcpy(service, "host");
 strcat(service, "@");
 strcat(service, hostname);

 mechs = rpc_gss_get_mechanisms();
 auth = ((void*)0);
 while (*mechs) {
  options_req.req_flags = GSS_C_MUTUAL_FLAG;
  options_req.time_req = 600;
  options_req.my_cred = GSS_C_NO_CREDENTIAL;
  options_req.input_channel_bindings = ((void*)0);
  auth = rpc_gss_seccreate(client, service,
      *mechs,
      rpc_gss_svc_none,
      ((void*)0),
      &options_req,
      &options_ret);
  if (auth)
   break;
  mechs++;
 }
 if (!auth) {
  clnt_pcreateerror("rpc_gss_seccreate");
  printf("Can't authenticate with server %s.\n",
      hostname);
  exit(1);
 }
 client->cl_auth = auth;

 for (svc = rpc_gss_svc_none; svc <= rpc_gss_svc_privacy; svc++) {
  const char *svc_names[] = {
   "rpc_gss_svc_default",
   "rpc_gss_svc_none",
   "rpc_gss_svc_integrity",
   "rpc_gss_svc_privacy"
  };
  int num;

  rpc_gss_set_defaults(auth, svc, ((void*)0));
  tv.tv_sec = 5;
  tv.tv_usec = 0;
  num = 42;
  stat = CLNT_CALL(client, 1,
      (xdrproc_t) xdr_int, (char *) &num,
      (xdrproc_t) xdr_int, (char *) &num, tv);
  if (stat == RPC_SUCCESS) {
   printf("succeeded with %s\n", svc_names[svc]);
   if (num != 142)
    printf("unexpected reply %d\n", num);
  } else {
   clnt_perror(client, "call failed");
  }
 }
 AUTH_DESTROY(auth);
 CLNT_DESTROY(client);
}
