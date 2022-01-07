
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ u_long ;
typedef scalar_t__ u_int ;
struct m_ext2fs {scalar_t__ e2fs_gcount; int e2fs_fbcount; scalar_t__ e2fs_total_dir; scalar_t__ e2fs_ipg; int e2fs_fsize; int e2fs_fpg; int e2fs_bsize; scalar_t__* e2fs_contigdirs; int * e2fs_gd; TYPE_1__* e2fs; } ;
struct inode {int i_number; struct m_ext2fs* i_e2fs; int i_ump; } ;
struct TYPE_5__ {int v_vflag; } ;
struct TYPE_4__ {scalar_t__ e2fs_ficount; } ;


 int AFPDIR ;
 int ASSERT_VOP_LOCKED (TYPE_2__*,char*) ;
 scalar_t__ AVGDIRSIZE ;
 int EXT2_MTX (int ) ;
 TYPE_2__* ITOV (struct inode*) ;
 int MA_OWNED ;
 int VV_ROOT ;
 int arc4random () ;
 int e2fs_gd_get_nbfree (int *) ;
 scalar_t__ e2fs_gd_get_ndirs (int *) ;
 scalar_t__ e2fs_gd_get_nifree (int *) ;
 int ino_to_cg (struct m_ext2fs*,int ) ;
 scalar_t__ min (scalar_t__,int) ;
 int mtx_assert (int ,int ) ;

__attribute__((used)) static u_long
ext2_dirpref(struct inode *pip)
{
 struct m_ext2fs *fs;
 int cg, prefcg, cgsize;
 uint64_t avgbfree, minbfree;
 u_int avgifree, avgndir, curdirsize;
 u_int minifree, maxndir;
 u_int mincg, minndir;
 u_int dirsize, maxcontigdirs;

 mtx_assert(EXT2_MTX(pip->i_ump), MA_OWNED);
 fs = pip->i_e2fs;

 avgifree = fs->e2fs->e2fs_ficount / fs->e2fs_gcount;
 avgbfree = fs->e2fs_fbcount / fs->e2fs_gcount;
 avgndir = fs->e2fs_total_dir / fs->e2fs_gcount;




 ASSERT_VOP_LOCKED(ITOV(pip), "ext2fs_dirpref");
 if (ITOV(pip)->v_vflag & VV_ROOT) {
  prefcg = arc4random() % fs->e2fs_gcount;
  mincg = prefcg;
  minndir = fs->e2fs_ipg;
  for (cg = prefcg; cg < fs->e2fs_gcount; cg++)
   if (e2fs_gd_get_ndirs(&fs->e2fs_gd[cg]) < minndir &&
       e2fs_gd_get_nifree(&fs->e2fs_gd[cg]) >= avgifree &&
       e2fs_gd_get_nbfree(&fs->e2fs_gd[cg]) >= avgbfree) {
    mincg = cg;
    minndir = e2fs_gd_get_ndirs(&fs->e2fs_gd[cg]);
   }
  for (cg = 0; cg < prefcg; cg++)
   if (e2fs_gd_get_ndirs(&fs->e2fs_gd[cg]) < minndir &&
       e2fs_gd_get_nifree(&fs->e2fs_gd[cg]) >= avgifree &&
       e2fs_gd_get_nbfree(&fs->e2fs_gd[cg]) >= avgbfree) {
    mincg = cg;
    minndir = e2fs_gd_get_ndirs(&fs->e2fs_gd[cg]);
   }
  return (mincg);
 }




 maxndir = min(avgndir + fs->e2fs_ipg / 16, fs->e2fs_ipg);
 minifree = avgifree - avgifree / 4;
 if (minifree < 1)
  minifree = 1;
 minbfree = avgbfree - avgbfree / 4;
 if (minbfree < 1)
  minbfree = 1;
 cgsize = fs->e2fs_fsize * fs->e2fs_fpg;
 dirsize = AVGDIRSIZE;
 curdirsize = avgndir ? (cgsize - avgbfree * fs->e2fs_bsize) / avgndir : 0;
 if (dirsize < curdirsize)
  dirsize = curdirsize;
 maxcontigdirs = min((avgbfree * fs->e2fs_bsize) / dirsize, 255);
 maxcontigdirs = min(maxcontigdirs, fs->e2fs_ipg / AFPDIR);
 if (maxcontigdirs == 0)
  maxcontigdirs = 1;






 prefcg = ino_to_cg(fs, pip->i_number);
 for (cg = prefcg; cg < fs->e2fs_gcount; cg++)
  if (e2fs_gd_get_ndirs(&fs->e2fs_gd[cg]) < maxndir &&
      e2fs_gd_get_nifree(&fs->e2fs_gd[cg]) >= minifree &&
      e2fs_gd_get_nbfree(&fs->e2fs_gd[cg]) >= minbfree) {
   if (fs->e2fs_contigdirs[cg] < maxcontigdirs)
    return (cg);
  }
 for (cg = 0; cg < prefcg; cg++)
  if (e2fs_gd_get_ndirs(&fs->e2fs_gd[cg]) < maxndir &&
      e2fs_gd_get_nifree(&fs->e2fs_gd[cg]) >= minifree &&
      e2fs_gd_get_nbfree(&fs->e2fs_gd[cg]) >= minbfree) {
   if (fs->e2fs_contigdirs[cg] < maxcontigdirs)
    return (cg);
  }



 for (cg = prefcg; cg < fs->e2fs_gcount; cg++)
  if (e2fs_gd_get_nifree(&fs->e2fs_gd[cg]) >= avgifree)
   return (cg);
 for (cg = 0; cg < prefcg; cg++)
  if (e2fs_gd_get_nifree(&fs->e2fs_gd[cg]) >= avgifree)
   break;
 return (cg);
}
