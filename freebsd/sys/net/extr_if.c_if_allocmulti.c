
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_len; int ifma_refcount; struct sockaddr* ifma_lladdr; struct sockaddr* ifma_addr; int * ifma_protospec; struct ifnet* ifma_ifp; } ;
struct ifnet {int dummy; } ;
struct ifmultiaddr {int sa_len; int ifma_refcount; struct ifmultiaddr* ifma_lladdr; struct ifmultiaddr* ifma_addr; int * ifma_protospec; struct ifnet* ifma_ifp; } ;


 int M_IFMADDR ;
 int M_ZERO ;
 int bcopy (struct sockaddr*,struct sockaddr*,int) ;
 int free (struct sockaddr*,int ) ;
 void* malloc (int,int ,int) ;

__attribute__((used)) static struct ifmultiaddr *
if_allocmulti(struct ifnet *ifp, struct sockaddr *sa, struct sockaddr *llsa,
    int mflags)
{
 struct ifmultiaddr *ifma;
 struct sockaddr *dupsa;

 ifma = malloc(sizeof *ifma, M_IFMADDR, mflags |
     M_ZERO);
 if (ifma == ((void*)0))
  return (((void*)0));

 dupsa = malloc(sa->sa_len, M_IFMADDR, mflags);
 if (dupsa == ((void*)0)) {
  free(ifma, M_IFMADDR);
  return (((void*)0));
 }
 bcopy(sa, dupsa, sa->sa_len);
 ifma->ifma_addr = dupsa;

 ifma->ifma_ifp = ifp;
 ifma->ifma_refcount = 1;
 ifma->ifma_protospec = ((void*)0);

 if (llsa == ((void*)0)) {
  ifma->ifma_lladdr = ((void*)0);
  return (ifma);
 }

 dupsa = malloc(llsa->sa_len, M_IFMADDR, mflags);
 if (dupsa == ((void*)0)) {
  free(ifma->ifma_addr, M_IFMADDR);
  free(ifma, M_IFMADDR);
  return (((void*)0));
 }
 bcopy(llsa, dupsa, llsa->sa_len);
 ifma->ifma_lladdr = dupsa;

 return (ifma);
}
