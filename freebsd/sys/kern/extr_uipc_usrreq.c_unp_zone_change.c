
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int maxsockets ;
 int uma_zone_set_max (int ,int ) ;
 int unp_zone ;

__attribute__((used)) static void
unp_zone_change(void *tag)
{

 uma_zone_set_max(unp_zone, maxsockets);
}
