
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jailparam {int vnet; int name; int path; int hostname; int domainname; int childcnt; int childmax; int cpuset; int parentjid; int rawsock; int socket_af; int mount; int jid; } ;
typedef struct jailparam vstat_t ;
typedef int params ;


 int bzero (struct jailparam*,int) ;
 int jailparam_free (struct jailparam*,int) ;
 int jailparam_get (struct jailparam*,int,int ) ;
 int jailparam_import_raw (struct jailparam*,int*,int) ;
 int jailparam_init (struct jailparam*,char*) ;

__attribute__((used)) static int
getjail(vstat_t *vs, int lastjid, int verbose)
{
 struct jailparam params[32];
 int psize = 0;

 bzero(params, sizeof(params));
 bzero(vs, sizeof(*vs));

 jailparam_init(&params[psize], "lastjid");
 jailparam_import_raw(&params[psize++], &lastjid, sizeof lastjid);

 jailparam_init(&params[psize], "vnet");
 jailparam_import_raw(&params[psize++], &vs->vnet, sizeof(vs->vnet));

 jailparam_init(&params[psize], "name");
 jailparam_import_raw(&params[psize++], &vs->name, sizeof(vs->name));

 if (verbose == 0)
  goto done;

 jailparam_init(&params[psize], "path");
 jailparam_import_raw(&params[psize++], &vs->path, sizeof(vs->path));

 jailparam_init(&params[psize], "host.hostname");
 jailparam_import_raw(&params[psize++], &vs->hostname,
     sizeof(vs->hostname));

 jailparam_init(&params[psize], "host.domainname");
 jailparam_import_raw(&params[psize++], &vs->domainname,
     sizeof(vs->domainname));

 jailparam_init(&params[psize], "children.cur");
 jailparam_import_raw(&params[psize++], &vs->childcnt,
     sizeof(vs->childcnt));

 if (verbose == 1)
  goto done;

 jailparam_init(&params[psize], "children.max");
 jailparam_import_raw(&params[psize++], &vs->childmax,
     sizeof(vs->childmax));

 jailparam_init(&params[psize], "cpuset.id");
 jailparam_import_raw(&params[psize++], &vs->cpuset,
     sizeof(vs->cpuset));

 jailparam_init(&params[psize], "parent");
 jailparam_import_raw(&params[psize++], &vs->parentjid,
     sizeof(vs->parentjid));

 jailparam_init(&params[psize], "allow.raw_sockets");
 jailparam_import_raw(&params[psize++], &vs->rawsock,
     sizeof(vs->rawsock));

 jailparam_init(&params[psize], "allow.socket_af");
 jailparam_import_raw(&params[psize++], &vs->socket_af,
     sizeof(vs->socket_af));

 jailparam_init(&params[psize], "allow.mount");
 jailparam_import_raw(&params[psize++], &vs->mount, sizeof(vs->mount));

done:
 vs->jid = jailparam_get(params, psize, 0);
 jailparam_free(params, psize);
 return (vs->jid);
}
