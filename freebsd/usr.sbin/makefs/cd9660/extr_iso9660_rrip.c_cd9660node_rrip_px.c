
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int* length; int* version; } ;
struct TYPE_12__ {int serial; int gid; int uid; int links; int mode; TYPE_1__ h; } ;
struct TYPE_13__ {TYPE_4__ PX; } ;
struct TYPE_14__ {TYPE_5__ rr_entry; } ;
struct ISO_SUSP_ATTRIBUTES {TYPE_6__ attr; } ;
struct TYPE_15__ {TYPE_3__* inode; } ;
typedef TYPE_7__ fsnode ;
struct TYPE_10__ {int st_ino; int st_gid; int st_uid; int st_nlink; int st_mode; } ;
struct TYPE_11__ {TYPE_2__ st; } ;


 int cd9660_bothendian_dword (int ,int ) ;

int
cd9660node_rrip_px(struct ISO_SUSP_ATTRIBUTES *v, fsnode *pxinfo)
{
 v->attr.rr_entry.PX.h.length[0] = 44;
 v->attr.rr_entry.PX.h.version[0] = 1;
 cd9660_bothendian_dword(pxinfo->inode->st.st_mode,
     v->attr.rr_entry.PX.mode);
 cd9660_bothendian_dword(pxinfo->inode->st.st_nlink,
     v->attr.rr_entry.PX.links);
 cd9660_bothendian_dword(pxinfo->inode->st.st_uid,
     v->attr.rr_entry.PX.uid);
 cd9660_bothendian_dword(pxinfo->inode->st.st_gid,
     v->attr.rr_entry.PX.gid);
 cd9660_bothendian_dword(pxinfo->inode->st.st_ino,
     v->attr.rr_entry.PX.serial);

 return 1;
}
