
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct npestatfoo_p {int oid; int mib; } ;
struct npestatfoo {int dummy; } ;


 int err (int,char*,int ) ;
 int snprintf (int ,int,char*,char const*) ;
 scalar_t__ sysctlnametomib (int ,int ,size_t*) ;

__attribute__((used)) static void
npe_setifname(struct npestatfoo *wf0, const char *ifname)
{
 struct npestatfoo_p *wf = (struct npestatfoo_p *) wf0;
 size_t len;

 snprintf(wf->oid, sizeof(wf->oid), "dev.npe.%s.stats", ifname+3);
 len = 4;
 if (sysctlnametomib(wf->oid, wf->mib, &len) < 0)
  err(1, "sysctlnametomib: %s", wf->oid);
}
