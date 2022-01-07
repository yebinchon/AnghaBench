
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uma_zone_t ;


 int ZONE_LOCK (int ) ;
 void* zone_alloc_item_locked (int ,void*,int,int) ;

__attribute__((used)) static void *
zone_alloc_item(uma_zone_t zone, void *udata, int domain, int flags)
{

 ZONE_LOCK(zone);
 return (zone_alloc_item_locked(zone, udata, domain, flags));
}
