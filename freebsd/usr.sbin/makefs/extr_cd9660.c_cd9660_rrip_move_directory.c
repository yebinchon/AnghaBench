
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int newname ;
struct TYPE_24__ {int rock_ridge_move_count; TYPE_8__* rr_moved_dir; int rootNode; } ;
typedef TYPE_4__ iso9660_disk ;
struct TYPE_25__ {TYPE_3__* isoDirRecord; struct TYPE_25__* rr_relocated; TYPE_8__* parent; TYPE_8__* rr_real_parent; TYPE_2__* node; } ;
typedef TYPE_5__ cd9660node ;
struct TYPE_28__ {int cn_children; TYPE_1__* isoDirRecord; } ;
struct TYPE_27__ {int st_mtime; scalar_t__ st_ino; } ;
struct TYPE_26__ {int tv_sec; } ;
struct TYPE_23__ {int* length; int* name_len; int name; } ;
struct TYPE_22__ {int name; } ;
struct TYPE_21__ {int date; } ;


 int ISO_FILENAME_MAXLENGTH_WITH_PADDING ;
 int ISO_RRIP_DEFAULT_MOVE_DIR_NAME ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 int TAILQ_INSERT_HEAD (int *,TYPE_5__*,int ) ;
 TYPE_8__* cd9660_create_directory (TYPE_4__*,int ,int ,TYPE_5__*) ;
 TYPE_5__* cd9660_create_file (TYPE_4__*,int ,TYPE_8__*,TYPE_5__*) ;
 int cd9660_sorted_child_insert (TYPE_8__*,TYPE_5__*) ;
 int cd9660_time_915 (int ,int ) ;
 int cn_next_child ;
 int memset (int ,int ,int ) ;
 int snprintf (char*,int,char*,int) ;
 TYPE_7__ stampst ;
 TYPE_6__ start_time ;
 int strncpy (int ,char*,int) ;

__attribute__((used)) static cd9660node *
cd9660_rrip_move_directory(iso9660_disk *diskStructure, cd9660node *dir)
{
 char newname[9];
 cd9660node *tfile;
 if (diskStructure->rr_moved_dir == ((void*)0)) {
  diskStructure->rr_moved_dir = cd9660_create_directory(
      diskStructure, ISO_RRIP_DEFAULT_MOVE_DIR_NAME,
      diskStructure->rootNode, dir);
  if (diskStructure->rr_moved_dir == ((void*)0))
   return 0;
  cd9660_time_915(diskStructure->rr_moved_dir->isoDirRecord->date,
      stampst.st_ino ? stampst.st_mtime : start_time.tv_sec);
 }


 tfile = cd9660_create_file(diskStructure, dir->node->name, dir->parent,
     dir);
 if (tfile == ((void*)0))
  return ((void*)0);

 diskStructure->rock_ridge_move_count++;
 snprintf(newname, sizeof(newname), "%08i",
     diskStructure->rock_ridge_move_count);


 dir->rr_real_parent = dir->parent;


 if (TAILQ_EMPTY(&dir->rr_real_parent->cn_children)) {
  TAILQ_INSERT_HEAD(&dir->rr_real_parent->cn_children, tfile,
      cn_next_child);
 } else {
  cd9660_sorted_child_insert(dir->rr_real_parent, tfile);
 }


 dir->parent = diskStructure->rr_moved_dir;


 tfile->rr_relocated = dir;


 cd9660_sorted_child_insert(diskStructure->rr_moved_dir, dir);




 memset(dir->isoDirRecord->name, 0, ISO_FILENAME_MAXLENGTH_WITH_PADDING);
 strncpy(dir->isoDirRecord->name, newname, 8);
 dir->isoDirRecord->length[0] = 34 + 8;
 dir->isoDirRecord->name_len[0] = 8;

 return dir;
}
