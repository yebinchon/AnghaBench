
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int maxsockets ;
 int sdp_zone ;
 int uma_zone_set_max (int ,int ) ;

__attribute__((used)) static void
sdp_zone_change(void *tag)
{

 uma_zone_set_max(sdp_zone, maxsockets);
}
