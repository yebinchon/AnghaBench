
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct nd_ifinfo {int const* randomid; int * randomseed1; int randomseed0; } ;
struct ifnet {int dummy; } ;
typedef int nullbuf ;


 struct nd_ifinfo* ND_IFINFO (struct ifnet*) ;
 scalar_t__ bcmp (int const*,int *,int) ;
 int bcopy (int const*,int *,int) ;
 int bzero (int *,int) ;
 int generate_tmp_ifid (int ,int *,int const*) ;

int
in6_get_tmpifid(struct ifnet *ifp, u_int8_t *retbuf,
    const u_int8_t *baseid, int generate)
{
 u_int8_t nullbuf[8];
 struct nd_ifinfo *ndi = ND_IFINFO(ifp);

 bzero(nullbuf, sizeof(nullbuf));
 if (bcmp(ndi->randomid, nullbuf, sizeof(nullbuf)) == 0) {

  generate = 1;
 }

 if (generate) {
  bcopy(baseid, ndi->randomseed1, sizeof(ndi->randomseed1));


  (void)generate_tmp_ifid(ndi->randomseed0, ndi->randomseed1,
      ndi->randomid);
 }
 bcopy(ndi->randomid, retbuf, 8);

 return (0);
}
