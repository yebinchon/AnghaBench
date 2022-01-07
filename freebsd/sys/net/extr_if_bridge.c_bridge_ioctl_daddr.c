
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifbareq {int ifba_vlan; int ifba_dst; } ;
struct bridge_softc {int dummy; } ;


 int bridge_rtdaddr (struct bridge_softc*,int ,int ) ;

__attribute__((used)) static int
bridge_ioctl_daddr(struct bridge_softc *sc, void *arg)
{
 struct ifbareq *req = arg;

 return (bridge_rtdaddr(sc, req->ifba_dst, req->ifba_vlan));
}
