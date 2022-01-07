
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_biba {int dummy; } ;


 int M_ZERO ;
 struct mac_biba* uma_zalloc (int ,int) ;
 int zone_biba ;

__attribute__((used)) static struct mac_biba *
biba_alloc(int flag)
{

 return (uma_zalloc(zone_biba, flag | M_ZERO));
}
