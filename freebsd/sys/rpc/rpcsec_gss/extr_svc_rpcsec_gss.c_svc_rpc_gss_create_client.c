
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {int tv_sec; } ;
struct svc_rpc_gss_client_list {int dummy; } ;
struct TYPE_3__ {unsigned long ci_hostid; size_t ci_id; int ci_boottime; } ;
struct svc_rpc_gss_client {TYPE_1__ cl_id; scalar_t__ cl_expiration; int cl_locked; int cl_state; int cl_lock; int cl_refs; } ;
struct TYPE_4__ {int td_ucred; } ;


 int CLIENT_NEW ;
 int FALSE ;
 int TAILQ_INSERT_HEAD (struct svc_rpc_gss_client_list*,struct svc_rpc_gss_client*,int ) ;
 int cl_alllink ;
 int cl_link ;
 TYPE_2__* curthread ;
 int getboottime (struct timeval*) ;
 int getcredhostid (int ,unsigned long*) ;
 struct svc_rpc_gss_client* mem_alloc (int) ;
 int memset (struct svc_rpc_gss_client*,int ,int) ;
 int refcount_init (int *,int) ;
 int rpc_gss_log_debug (char*) ;
 int svc_rpc_gss_client_count ;
 struct svc_rpc_gss_client_list* svc_rpc_gss_client_hash ;
 size_t svc_rpc_gss_client_hash_size ;
 struct svc_rpc_gss_client_list svc_rpc_gss_clients ;
 int svc_rpc_gss_lock ;
 int svc_rpc_gss_next_clientid ;
 int sx_init (int *,char*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 scalar_t__ time_uptime ;

__attribute__((used)) static struct svc_rpc_gss_client *
svc_rpc_gss_create_client(void)
{
 struct svc_rpc_gss_client *client;
 struct svc_rpc_gss_client_list *list;
 struct timeval boottime;
 unsigned long hostid;

 rpc_gss_log_debug("in svc_rpc_gss_create_client()");

 client = mem_alloc(sizeof(struct svc_rpc_gss_client));
 memset(client, 0, sizeof(struct svc_rpc_gss_client));





 refcount_init(&client->cl_refs, 2);
 sx_init(&client->cl_lock, "GSS-client");
 getcredhostid(curthread->td_ucred, &hostid);
 client->cl_id.ci_hostid = hostid;
 getboottime(&boottime);
 client->cl_id.ci_boottime = boottime.tv_sec;
 client->cl_id.ci_id = svc_rpc_gss_next_clientid++;





 client->cl_state = CLIENT_NEW;
 client->cl_locked = FALSE;
 client->cl_expiration = time_uptime + 5*60;

 list = &svc_rpc_gss_client_hash[client->cl_id.ci_id % svc_rpc_gss_client_hash_size];
 sx_xlock(&svc_rpc_gss_lock);
 TAILQ_INSERT_HEAD(list, client, cl_link);
 TAILQ_INSERT_HEAD(&svc_rpc_gss_clients, client, cl_alllink);
 svc_rpc_gss_client_count++;
 sx_xunlock(&svc_rpc_gss_lock);
 return (client);
}
