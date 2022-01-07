
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwlstatfoo_p {int cur; int total; } ;
struct bsdstat {int dummy; } ;



__attribute__((used)) static void
mwl_update_tot(struct bsdstat *sf)
{
 struct mwlstatfoo_p *wf = (struct mwlstatfoo_p *) sf;

 wf->total = wf->cur;
}
