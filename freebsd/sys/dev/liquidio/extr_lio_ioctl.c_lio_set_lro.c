
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lio {int oct_dev; } ;
struct ifnet {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int IFCAP_LRO ;
 int IFCAP_RXCSUM ;
 int IFCAP_RXCSUM_IPV6 ;
 int LIO_CMD_LRO_DISABLE ;
 int LIO_CMD_LRO_ENABLE ;
 int LIO_LROIPV4 ;
 int LIO_LROIPV6 ;
 int if_getcapabilities (struct ifnet*) ;
 int if_getcapenable (struct ifnet*) ;
 struct lio* if_getsoftc (struct ifnet*) ;
 int if_togglecapenable (struct ifnet*,int) ;
 int lio_dev_info (int ,char*) ;
 scalar_t__ lio_hwlro ;
 int lio_set_feature (struct ifnet*,int ,int) ;

__attribute__((used)) static int
lio_set_lro(struct ifnet *ifp)
{
 struct lio *lio = if_getsoftc(ifp);
 int ret = 0;

 if (!(if_getcapabilities(ifp) & IFCAP_LRO)) {
  lio_dev_info(lio->oct_dev, "LRO capability not supported\n");
  return (ENODEV);
 }

 if ((!(if_getcapenable(ifp) & IFCAP_LRO)) &&
     (if_getcapenable(ifp) & IFCAP_RXCSUM) &&
     (if_getcapenable(ifp) & IFCAP_RXCSUM_IPV6)) {
  if_togglecapenable(ifp, IFCAP_LRO);

  if (lio_hwlro)
   ret = lio_set_feature(ifp, LIO_CMD_LRO_ENABLE, LIO_LROIPV4 |
           LIO_LROIPV6);

 } else if (if_getcapenable(ifp) & IFCAP_LRO) {
  if_togglecapenable(ifp, IFCAP_LRO);

  if (lio_hwlro)
   ret = lio_set_feature(ifp, LIO_CMD_LRO_DISABLE, LIO_LROIPV4 |
           LIO_LROIPV6);
 } else
  lio_dev_info(lio->oct_dev, "LRO requires RXCSUM");

 return ((ret) ? EINVAL : 0);
}
