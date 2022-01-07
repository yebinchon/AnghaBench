
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_multi_mship {int i6mm_maddr; } ;
struct in6_addr {int dummy; } ;
struct ifnet {int dummy; } ;


 int ENOBUFS ;
 int M_IP6MADDR ;
 int M_NOWAIT ;
 int PR_FASTHZ ;
 int free (struct in6_multi_mship*,int ) ;
 int hz ;
 int in6_joingroup (struct ifnet*,struct in6_addr const*,int *,int *,int) ;
 struct in6_multi_mship* malloc (int,int ,int ) ;

__attribute__((used)) static struct in6_multi_mship *
in6_joingroup_legacy(struct ifnet *ifp, const struct in6_addr *mcaddr,
    int *errorp, int delay)
{
 struct in6_multi_mship *imm;
 int error;

 imm = malloc(sizeof(*imm), M_IP6MADDR, M_NOWAIT);
 if (imm == ((void*)0)) {
  *errorp = ENOBUFS;
  return (((void*)0));
 }

 delay = (delay * PR_FASTHZ) / hz;

 error = in6_joingroup(ifp, mcaddr, ((void*)0), &imm->i6mm_maddr, delay);
 if (error) {
  *errorp = error;
  free(imm, M_IP6MADDR);
  return (((void*)0));
 }

 return (imm);
}
