
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmctx {int dummy; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int sin ;


 int AF_INET ;
 int CPU_SET (int ,int *) ;
 int EVF_READ ;
 int F_GETFL ;
 int F_SETFL ;
 int INADDR_ANY ;
 int O_NONBLOCK ;
 int PF_INET ;
 int SOCK_STREAM ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 struct vmctx* ctx ;
 int debug (char*,int,char*) ;
 int err (int,char*) ;
 int errc (int,int,char*) ;
 int fcntl (int,int ,...) ;
 int gdb_lock ;
 int htonl (int ) ;
 int htons (int) ;
 int idle_vcpus ;
 int limit_gdb_socket (int) ;
 scalar_t__ listen (int,int) ;
 int mevent_add (int,int ,int ,int *) ;
 int new_connection ;
 int pthread_cond_init (int *,int *) ;
 int pthread_mutex_init (int *,int *) ;
 int socket (int ,int ,int ) ;
 int stepping_vcpu ;
 int stopped_vcpu ;
 int vcpus_suspended ;

void
init_gdb(struct vmctx *_ctx, int sport, bool wait)
{
 struct sockaddr_in sin;
 int error, flags, s;

 debug("==> starting on %d, %swaiting\n", sport, wait ? "" : "not ");

 error = pthread_mutex_init(&gdb_lock, ((void*)0));
 if (error != 0)
  errc(1, error, "gdb mutex init");
 error = pthread_cond_init(&idle_vcpus, ((void*)0));
 if (error != 0)
  errc(1, error, "gdb cv init");

 ctx = _ctx;
 s = socket(PF_INET, SOCK_STREAM, 0);
 if (s < 0)
  err(1, "gdb socket create");

 sin.sin_len = sizeof(sin);
 sin.sin_family = AF_INET;
 sin.sin_addr.s_addr = htonl(INADDR_ANY);
 sin.sin_port = htons(sport);

 if (bind(s, (struct sockaddr *)&sin, sizeof(sin)) < 0)
  err(1, "gdb socket bind");

 if (listen(s, 1) < 0)
  err(1, "gdb socket listen");

 if (wait) {






  stepping_vcpu = -1;
  stopped_vcpu = -1;
  CPU_SET(0, &vcpus_suspended);
 }

 flags = fcntl(s, F_GETFL);
 if (fcntl(s, F_SETFL, flags | O_NONBLOCK) == -1)
  err(1, "Failed to mark gdb socket non-blocking");


 limit_gdb_socket(s);

 mevent_add(s, EVF_READ, new_connection, ((void*)0));
}
