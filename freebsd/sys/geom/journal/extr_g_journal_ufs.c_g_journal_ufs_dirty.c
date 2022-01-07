
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_consumer {TYPE_1__* provider; } ;
struct fs {int fs_flags; struct fs* fs_csp; int fs_sblockloc; scalar_t__ fs_clean; } ;
struct TYPE_2__ {int sectorsize; int name; } ;


 int FS_NEEDSFSCK ;
 int FS_UNCLEAN ;
 int GJ_DEBUG (int ,char*,int ,...) ;
 int KASSERT (int ,char*) ;
 int M_GEOM ;
 int SBLOCKSIZE ;
 int STDSB ;
 scalar_t__ ffs_sbget (struct g_consumer*,struct fs**,int ,int ,int ) ;
 int ffs_sbput (struct g_consumer*,struct fs*,int ,int ) ;
 int g_free (struct fs*) ;
 int g_use_g_read_data ;
 int g_use_g_write_data ;

__attribute__((used)) static void
g_journal_ufs_dirty(struct g_consumer *cp)
{
 struct fs *fs;
 int error;

 fs = ((void*)0);
 if (SBLOCKSIZE % cp->provider->sectorsize != 0 ||
     ffs_sbget(cp, &fs, STDSB, M_GEOM, g_use_g_read_data) != 0) {
  GJ_DEBUG(0, "Cannot find superblock to mark file system %s "
      "as dirty.", cp->provider->name);
  KASSERT(fs == ((void*)0),
      ("g_journal_ufs_dirty: non-NULL fs %p\n", fs));
  return;
 }
 GJ_DEBUG(0, "clean=%d flags=0x%x", fs->fs_clean, fs->fs_flags);
 fs->fs_clean = 0;
 fs->fs_flags |= FS_NEEDSFSCK | FS_UNCLEAN;
 error = ffs_sbput(cp, fs, fs->fs_sblockloc, g_use_g_write_data);
 g_free(fs->fs_csp);
 g_free(fs);
 if (error != 0) {
  GJ_DEBUG(0, "Cannot mark file system %s as dirty "
      "(error=%d).", cp->provider->name, error);
 } else {
  GJ_DEBUG(0, "File system %s marked as dirty.",
      cp->provider->name);
 }
}
