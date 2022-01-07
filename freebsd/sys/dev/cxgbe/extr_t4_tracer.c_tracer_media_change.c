
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int
tracer_media_change(struct ifnet *ifp)
{

 return (EOPNOTSUPP);
}
