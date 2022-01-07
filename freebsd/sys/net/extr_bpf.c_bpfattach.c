
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ifnet {int if_bpf; } ;


 int bpfattach2 (struct ifnet*,int ,int ,int *) ;

void
bpfattach(struct ifnet *ifp, u_int dlt, u_int hdrlen)
{

 bpfattach2(ifp, dlt, hdrlen, &ifp->if_bpf);
}
