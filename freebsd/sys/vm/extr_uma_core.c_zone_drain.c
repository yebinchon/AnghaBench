
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uma_zone_t ;


 int M_NOWAIT ;
 int zone_reclaim (int ,int ,int) ;

__attribute__((used)) static void
zone_drain(uma_zone_t zone)
{

 zone_reclaim(zone, M_NOWAIT, 1);
}
