
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_mls {int dummy; } ;


 int M_ZERO ;
 struct mac_mls* uma_zalloc (int ,int) ;
 int zone_mls ;

__attribute__((used)) static struct mac_mls *
mls_alloc(int flag)
{

 return (uma_zalloc(zone_mls, flag | M_ZERO));
}
