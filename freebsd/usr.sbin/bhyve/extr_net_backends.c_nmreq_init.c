
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nmreq {int nr_version; int nr_name; } ;


 int NETMAP_API ;
 int memset (struct nmreq*,int ,int) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void
nmreq_init(struct nmreq *req, char *ifname)
{

 memset(req, 0, sizeof(*req));
 strlcpy(req->nr_name, ifname, sizeof(req->nr_name));
 req->nr_version = NETMAP_API;
}
