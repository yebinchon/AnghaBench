
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int8_t ;
struct prison {int pr_mtx; int pr_hostname; } ;
struct in6_addr {int * s6_addr; } ;
struct ifnet {int dummy; } ;
typedef int ctxt ;
struct TYPE_4__ {TYPE_1__* td_ucred; } ;
struct TYPE_3__ {struct prison* cr_prison; } ;
typedef int MD5_CTX ;


 int EUI64_GBIT ;
 int EUI64_TO_IFID (struct in6_addr*) ;
 int EUI64_UBIT ;
 int MD5Final (int *,int *) ;
 int MD5Init (int *) ;
 int MD5Update (int *,int ,int) ;
 int bcopy (int *,int *,int) ;
 int bzero (int *,int) ;
 TYPE_2__* curthread ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int strlen (int ) ;

__attribute__((used)) static int
get_rand_ifid(struct ifnet *ifp, struct in6_addr *in6)
{
 MD5_CTX ctxt;
 struct prison *pr;
 u_int8_t digest[16];
 int hostnamelen;

 pr = curthread->td_ucred->cr_prison;
 mtx_lock(&pr->pr_mtx);
 hostnamelen = strlen(pr->pr_hostname);
 bzero(&ctxt, sizeof(ctxt));
 MD5Init(&ctxt);
 MD5Update(&ctxt, pr->pr_hostname, hostnamelen);
 mtx_unlock(&pr->pr_mtx);
 MD5Final(digest, &ctxt);


 bcopy(digest, &in6->s6_addr[8], 8);


 in6->s6_addr[8] &= ~EUI64_GBIT;
 in6->s6_addr[8] |= EUI64_UBIT;


 EUI64_TO_IFID(in6);

 return 0;
}
