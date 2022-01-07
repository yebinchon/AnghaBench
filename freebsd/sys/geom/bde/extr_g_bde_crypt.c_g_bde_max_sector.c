
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct g_bde_key {int zone_cont; int zone_width; int media_width; } ;



uint64_t
g_bde_max_sector(struct g_bde_key *kp)
{
 uint64_t maxsect;

 maxsect = kp->media_width;
 maxsect /= kp->zone_width;
 maxsect *= kp->zone_cont;
 return (maxsect);
}
