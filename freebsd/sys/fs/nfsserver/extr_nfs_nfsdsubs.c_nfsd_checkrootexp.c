
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsrv_descript {int nd_flag; } ;


 int ND_EXAUTHSYS ;
 int ND_EXGSS ;
 int ND_EXGSSINTEGRITY ;
 int ND_EXGSSPRIVACY ;
 int ND_GSS ;
 int ND_GSSINTEGRITY ;
 int ND_GSSPRIVACY ;

int
nfsd_checkrootexp(struct nfsrv_descript *nd)
{

 if ((nd->nd_flag & (ND_GSS | ND_EXAUTHSYS)) == ND_EXAUTHSYS)
  return (0);
 if ((nd->nd_flag & (ND_GSSINTEGRITY | ND_EXGSSINTEGRITY)) ==
     (ND_GSSINTEGRITY | ND_EXGSSINTEGRITY))
  return (0);
 if ((nd->nd_flag & (ND_GSSPRIVACY | ND_EXGSSPRIVACY)) ==
     (ND_GSSPRIVACY | ND_EXGSSPRIVACY))
  return (0);
 if ((nd->nd_flag & (ND_GSS | ND_GSSINTEGRITY | ND_GSSPRIVACY |
      ND_EXGSS)) == (ND_GSS | ND_EXGSS))
  return (0);
 return (1);
}
