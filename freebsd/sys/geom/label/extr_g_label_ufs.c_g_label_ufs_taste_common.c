
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_provider {int sectorsize; int name; } ;
struct g_consumer {struct g_provider* provider; } ;
struct fs {scalar_t__ fs_magic; scalar_t__ fs_fsize; char* fs_volname; int* fs_id; struct fs* fs_csp; } ;


 scalar_t__ FS_UFS1_MAGIC ;
 scalar_t__ FS_UFS2_MAGIC ;
 int G_LABEL_DEBUG (int,char*,char*,int ) ;
 scalar_t__ G_LABEL_UFS_CMP (struct g_provider*,struct fs*,int ) ;


 int KASSERT (int ,char*) ;
 int M_GEOM ;
 int SBLOCKSIZE ;
 int STDSB_NOHASHFAIL ;
 scalar_t__ ffs_sbget (struct g_consumer*,struct fs**,int ,int ,int ) ;
 int fs_old_size ;
 int fs_providersize ;
 int fs_size ;
 int g_free (struct fs*) ;
 int g_topology_assert_not () ;
 int g_use_g_read_data ;
 int snprintf (char*,size_t,char*,int,int) ;
 int strlcpy (char*,char*,size_t) ;

__attribute__((used)) static void
g_label_ufs_taste_common(struct g_consumer *cp, char *label, size_t size, int what)
{
 struct g_provider *pp;
 struct fs *fs;

 g_topology_assert_not();
 pp = cp->provider;
 label[0] = '\0';

 fs = ((void*)0);
 if (SBLOCKSIZE % pp->sectorsize != 0 || ffs_sbget(cp, &fs,
     STDSB_NOHASHFAIL, M_GEOM, g_use_g_read_data) != 0) {
  KASSERT(fs == ((void*)0),
      ("g_label_ufs_taste_common: non-NULL fs %p\n", fs));
  return;
 }
 if (fs->fs_magic == FS_UFS1_MAGIC && fs->fs_fsize > 0 &&
     ( G_LABEL_UFS_CMP(pp, fs, fs_old_size)
  || G_LABEL_UFS_CMP(pp, fs, fs_providersize))) {

 } else if (fs->fs_magic == FS_UFS2_MAGIC && fs->fs_fsize > 0 &&
     ( G_LABEL_UFS_CMP(pp, fs, fs_size)
  || G_LABEL_UFS_CMP(pp, fs, fs_providersize))) {

 } else {
  goto out;
 }
 G_LABEL_DEBUG(1, "%s file system detected on %s.",
     fs->fs_magic == FS_UFS1_MAGIC ? "UFS1" : "UFS2", pp->name);
 switch (what) {
 case 128:

  if (fs->fs_volname[0] != '\0')
   strlcpy(label, fs->fs_volname, size);
  break;
 case 129:
  if (fs->fs_id[0] != 0 || fs->fs_id[1] != 0)
   snprintf(label, size, "%08x%08x", fs->fs_id[0],
       fs->fs_id[1]);
  break;
 }
out:
 g_free(fs->fs_csp);
 g_free(fs);
}
