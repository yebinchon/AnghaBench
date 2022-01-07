
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct cam_path {int dummy; } ;
struct ahd_softc {TYPE_1__* platform_data; } ;
typedef int path_id_t ;
struct TYPE_2__ {int sim; } ;


 int cam_sim_path (int ) ;
 int xpt_create_path (struct cam_path**,int *,int ,int ,int ) ;

__attribute__((used)) static int
ahd_create_path(struct ahd_softc *ahd, char channel, u_int target,
         u_int lun, struct cam_path **path)
{
 path_id_t path_id;

 path_id = cam_sim_path(ahd->platform_data->sim);
 return (xpt_create_path(path, ((void*)0),
    path_id, target, lun));
}
