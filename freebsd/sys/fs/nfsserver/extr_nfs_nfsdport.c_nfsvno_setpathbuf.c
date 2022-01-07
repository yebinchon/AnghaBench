
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct componentname {int cn_flags; char* cn_pnbuf; } ;
struct nameidata {struct componentname ni_cnd; } ;


 int HASBUF ;
 int M_WAITOK ;
 int NOMACCHECK ;
 int namei_zone ;
 char* uma_zalloc (int ,int ) ;

void
nfsvno_setpathbuf(struct nameidata *ndp, char **bufpp, u_long **hashpp)
{
 struct componentname *cnp = &ndp->ni_cnd;

 cnp->cn_flags |= (NOMACCHECK | HASBUF);
 cnp->cn_pnbuf = uma_zalloc(namei_zone, M_WAITOK);
 if (hashpp != ((void*)0))
  *hashpp = ((void*)0);
 *bufpp = cnp->cn_pnbuf;
}
