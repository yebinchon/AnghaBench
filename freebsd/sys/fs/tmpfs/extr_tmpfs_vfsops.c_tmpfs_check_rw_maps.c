
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmpfs_check_rw_maps_arg {int found; } ;
struct mount {int dummy; } ;


 int tmpfs_all_rw_maps (struct mount*,int ,struct tmpfs_check_rw_maps_arg*) ;
 int tmpfs_check_rw_maps_cb ;

__attribute__((used)) static bool
tmpfs_check_rw_maps(struct mount *mp)
{
 struct tmpfs_check_rw_maps_arg ca;

 ca.found = 0;
 tmpfs_all_rw_maps(mp, tmpfs_check_rw_maps_cb, &ca);
 return (ca.found);
}
