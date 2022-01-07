
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


struct TYPE_11__ {int* length; int* version; } ;
struct TYPE_12__ {int* flags; TYPE_3__ h; scalar_t__ timestamp; } ;
struct TYPE_13__ {TYPE_4__ TF; } ;
struct TYPE_14__ {TYPE_5__ rr_entry; } ;
struct ISO_SUSP_ATTRIBUTES {TYPE_6__ attr; } ;
struct TYPE_15__ {TYPE_2__* inode; } ;
typedef TYPE_7__ fsnode ;
struct TYPE_9__ {int st_ctime; int st_mtime; int st_atime; } ;
struct TYPE_10__ {TYPE_1__ st; } ;


 int TF_ACCESS ;
 int TF_ATTRIBUTES ;
 int TF_MODIFY ;
 int cd9660_time_915 (scalar_t__,int ) ;

int
cd9660node_rrip_tf(struct ISO_SUSP_ATTRIBUTES *p, fsnode *_node)
{
 p->attr.rr_entry.TF.flags[0] = TF_MODIFY | TF_ACCESS | TF_ATTRIBUTES;
 p->attr.rr_entry.TF.h.length[0] = 5;
 p->attr.rr_entry.TF.h.version[0] = 1;






 cd9660_time_915(p->attr.rr_entry.TF.timestamp,
  _node->inode->st.st_atime);
 p->attr.rr_entry.TF.h.length[0] += 7;

 cd9660_time_915(p->attr.rr_entry.TF.timestamp + 7,
  _node->inode->st.st_mtime);
 p->attr.rr_entry.TF.h.length[0] += 7;

 cd9660_time_915(p->attr.rr_entry.TF.timestamp + 14,
  _node->inode->st.st_ctime);
 p->attr.rr_entry.TF.h.length[0] += 7;
 return 1;
}
