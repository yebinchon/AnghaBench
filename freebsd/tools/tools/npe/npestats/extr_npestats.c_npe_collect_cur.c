
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct npestatfoo_p {int cur; } ;
struct bsdstat {int dummy; } ;


 int npe_collect (struct npestatfoo_p*,int *) ;

__attribute__((used)) static void
npe_collect_cur(struct bsdstat *sf)
{
 struct npestatfoo_p *wf = (struct npestatfoo_p *) sf;

 npe_collect(wf, &wf->cur);
}
