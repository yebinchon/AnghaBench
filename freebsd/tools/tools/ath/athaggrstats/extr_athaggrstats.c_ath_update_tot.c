
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsdstat {int dummy; } ;
struct athaggrstatfoo_p {int cur; int total; } ;



__attribute__((used)) static void
ath_update_tot(struct bsdstat *sf)
{
 struct athaggrstatfoo_p *wf = (struct athaggrstatfoo_p *) sf;

 wf->total = wf->cur;
}
