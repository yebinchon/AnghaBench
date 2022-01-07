
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct componentname {int * cn_nameptr; int * cn_pnbuf; } ;


 int namei_zone ;
 int uma_zfree (int ,int *) ;

__attribute__((used)) static void
namei_cleanup_cnp(struct componentname *cnp)
{

 uma_zfree(namei_zone, cnp->cn_pnbuf);




}
