
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_softc; } ;


 int _ipoib_start (struct ifnet*,int ) ;

__attribute__((used)) static void
ipoib_start(struct ifnet *dev)
{
 _ipoib_start(dev, dev->if_softc);
}
