
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cn_flags; int cn_pnbuf; } ;
struct nameidata {TYPE_1__ ni_cnd; } ;


 int HASBUF ;
 int namei_zone ;
 int panic (char*) ;
 int uma_zfree (int ,int ) ;

void
nfsvno_relpathbuf(struct nameidata *ndp)
{

 if ((ndp->ni_cnd.cn_flags & HASBUF) == 0)
  panic("nfsrelpath");
 uma_zfree(namei_zone, ndp->ni_cnd.cn_pnbuf);
 ndp->ni_cnd.cn_flags &= ~HASBUF;
}
