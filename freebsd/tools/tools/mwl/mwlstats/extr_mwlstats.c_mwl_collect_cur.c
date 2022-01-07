
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwlstatfoo_p {int cur; } ;
struct bsdstat {int dummy; } ;


 int mwl_collect (struct mwlstatfoo_p*,int *) ;

__attribute__((used)) static void
mwl_collect_cur(struct bsdstat *sf)
{
 struct mwlstatfoo_p *wf = (struct mwlstatfoo_p *) sf;

 mwl_collect(wf, &wf->cur);
}
