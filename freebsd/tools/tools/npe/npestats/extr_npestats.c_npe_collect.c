
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct npestats {int dummy; } ;
struct npestatfoo_p {int oid; int mib; } ;


 int err (int,char*,int ) ;
 scalar_t__ sysctl (int ,int,struct npestats*,size_t*,int *,int ) ;

__attribute__((used)) static void
npe_collect(struct npestatfoo_p *wf, struct npestats *stats)
{
 size_t len = sizeof(struct npestats);
 if (sysctl(wf->mib, 4, stats, &len, ((void*)0), 0) < 0)
  err(1, "sysctl: %s", wf->oid);
}
