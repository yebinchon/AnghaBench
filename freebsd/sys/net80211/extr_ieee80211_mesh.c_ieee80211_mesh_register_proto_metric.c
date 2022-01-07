
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ieee80211_mesh_proto_metric {int mpm_descr; } ;
struct TYPE_4__ {int mpm_active; int mpm_descr; } ;


 int EEXIST ;
 int ENOSPC ;
 int IEEE80211_MESH_PROTO_DSZ ;
 int memcpy (TYPE_1__*,struct ieee80211_mesh_proto_metric const*,int) ;
 TYPE_1__* mesh_proto_metrics ;
 int nitems (TYPE_1__*) ;
 scalar_t__ strncmp (int ,int ,int ) ;

int
ieee80211_mesh_register_proto_metric(const struct
    ieee80211_mesh_proto_metric *mpm)
{
 int i, firstempty = -1;

 for (i = 0; i < nitems(mesh_proto_metrics); i++) {
  if (strncmp(mpm->mpm_descr, mesh_proto_metrics[i].mpm_descr,
      IEEE80211_MESH_PROTO_DSZ) == 0)
   return EEXIST;
  if (!mesh_proto_metrics[i].mpm_active && firstempty == -1)
   firstempty = i;
 }
 if (firstempty < 0)
  return ENOSPC;
 memcpy(&mesh_proto_metrics[firstempty], mpm, sizeof(*mpm));
 mesh_proto_metrics[firstempty].mpm_active = 1;
 return 0;
}
