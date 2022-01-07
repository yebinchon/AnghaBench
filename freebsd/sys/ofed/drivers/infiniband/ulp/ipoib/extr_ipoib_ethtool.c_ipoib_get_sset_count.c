
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int EOPNOTSUPP ;

 int ipoib_stats_keys ;

__attribute__((used)) static int ipoib_get_sset_count(struct ifnet *dev, int sset)
{
 switch (sset) {
 case 128:
  return ARRAY_SIZE(ipoib_stats_keys);
 default:
  return -EOPNOTSUPP;
 }
}
