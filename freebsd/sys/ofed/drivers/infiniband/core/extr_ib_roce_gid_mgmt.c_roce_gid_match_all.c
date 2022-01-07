
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct ib_device {int dummy; } ;



__attribute__((used)) static int
roce_gid_match_all(struct ib_device *ib_dev, u8 port,
    struct net_device *idev, void *cookie)
{
 if (idev == ((void*)0))
  return (0);
 return (1);
}
