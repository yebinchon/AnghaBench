
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsdstat {int dummy; } ;
struct athaggrstatfoo_p {int total; } ;


 int ath_collect (struct athaggrstatfoo_p*,int *) ;

__attribute__((used)) static void
ath_collect_tot(struct bsdstat *sf)
{
 struct athaggrstatfoo_p *wf = (struct athaggrstatfoo_p *) sf;

 ath_collect(wf, &wf->total);
}
