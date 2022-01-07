
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct thread {int td_ucred; } ;
struct TYPE_6__ {int rpc_gss_error; int system_error; } ;
typedef TYPE_1__ rpc_gss_error_t ;
struct TYPE_7__ {int program; int version; int callback; } ;
typedef TYPE_2__ rpc_gss_callback_t ;
typedef int principal ;
typedef int SVCPOOL ;


 int GSS_C_INDEFINITE ;
 int getcredhostname (int ,char*,int) ;
 int memcpy (char*,char*,int) ;
 int printf (char*,char*,char const*,int,int) ;
 int rpc_gss_clear_callback (TYPE_2__*) ;
 int rpc_gss_clear_svc_name (int,int) ;
 int rpc_gss_get_error (TYPE_1__*) ;
 char** rpc_gss_get_mechanisms () ;
 int rpc_gss_set_callback (TYPE_2__*) ;
 int rpc_gss_set_svc_name (char*,char const*,int ,int,int) ;
 int server_new_context ;
 int server_program_1 ;
 int svc_create (int *,int ,int,int,int *) ;
 int svc_run (int *) ;
 int * svcpool_create (char*,int *) ;
 int svcpool_destroy (int *) ;

__attribute__((used)) static int
gsstest_4(struct thread *td)
{
 SVCPOOL *pool;
 char principal[128 + 5];
 const char **mechs;
 static rpc_gss_callback_t cb;

 memcpy(principal, "host@", 5);
 getcredhostname(td->td_ucred, principal + 5, sizeof(principal) - 5);

 mechs = rpc_gss_get_mechanisms();
 while (*mechs) {
  if (!rpc_gss_set_svc_name(principal, *mechs, GSS_C_INDEFINITE,
   123456, 1)) {
   rpc_gss_error_t e;

   rpc_gss_get_error(&e);
   printf("setting name for %s for %s failed: %d, %d\n",
       principal, *mechs,
       e.rpc_gss_error, e.system_error);
  }
  mechs++;
 }

 cb.program = 123456;
 cb.version = 1;
 cb.callback = server_new_context;
 rpc_gss_set_callback(&cb);

 pool = svcpool_create("gsstest", ((void*)0));

 svc_create(pool, server_program_1, 123456, 1, ((void*)0));
 svc_run(pool);

 rpc_gss_clear_svc_name(123456, 1);
 rpc_gss_clear_callback(&cb);

 svcpool_destroy(pool);

 return (0);
}
