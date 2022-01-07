
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsdstat {int dummy; } ;
struct athstatfoo_p {int cur; } ;


 int ath_collect (struct athstatfoo_p*,int *) ;

__attribute__((used)) static void
ath_collect_cur(struct bsdstat *sf)
{
 struct athstatfoo_p *wf = (struct athstatfoo_p *) sf;

 ath_collect(wf, &wf->cur);
}
