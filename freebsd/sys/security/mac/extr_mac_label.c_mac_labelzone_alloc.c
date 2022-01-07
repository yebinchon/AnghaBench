
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 struct label* uma_zalloc (int ,int) ;
 int zone_label ;

struct label *
mac_labelzone_alloc(int flags)
{

 return (uma_zalloc(zone_label, flags));
}
