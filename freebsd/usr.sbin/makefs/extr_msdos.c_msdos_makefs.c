
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct vnode {TYPE_1__* fs; } ;
struct timeval {int dummy; } ;
struct msdosfsmount {int dummy; } ;
struct TYPE_6__ {scalar_t__ offset; int bytes_per_sector; int create_size; } ;
struct msdos_options_ex {TYPE_4__ options; } ;
typedef int fsnode ;
struct TYPE_5__ {scalar_t__ size; scalar_t__ maxsize; scalar_t__ offset; int sectorsize; int fd; struct msdos_options_ex* fs_specific; } ;
typedef TYPE_1__ fsinfo_t ;


 int DEBUG_FS_MAKEFS ;
 int MAX (int ,scalar_t__) ;
 int O_RDWR ;
 int TIMER_RESULTS (struct timeval,char*) ;
 int TIMER_START (struct timeval) ;
 int VTODE (struct vnode*) ;
 int assert (int ) ;
 int bcleanup () ;
 int debug ;
 int err (int,char*,...) ;
 int errx (int,char*,...) ;
 int mkfs_msdos (char const*,int *,TYPE_4__*) ;
 int msdos_populate_dir (char const*,int ,int *,int *,TYPE_1__*) ;
 scalar_t__ msdosfs_fsiflush (struct msdosfsmount*) ;
 struct msdosfsmount* msdosfs_mount (struct vnode*) ;
 scalar_t__ msdosfs_root (struct msdosfsmount*,struct vnode*) ;
 int open (char const*,int ) ;
 int printf (char*,char const*,...) ;
 int putchar (char) ;

void
msdos_makefs(const char *image, const char *dir, fsnode *root, fsinfo_t *fsopts)
{
 struct msdos_options_ex *msdos_opt = fsopts->fs_specific;
 struct vnode vp, rootvp;
 struct timeval start;
 struct msdosfsmount *pmp;
 uint32_t flags;

 assert(image != ((void*)0));
 assert(dir != ((void*)0));
 assert(root != ((void*)0));
 assert(fsopts != ((void*)0));

 fsopts->size = fsopts->maxsize;
 msdos_opt->options.create_size = MAX(msdos_opt->options.create_size,
     fsopts->offset + fsopts->size);
 if (fsopts->offset > 0)
  msdos_opt->options.offset = fsopts->offset;
 if (msdos_opt->options.bytes_per_sector == 0) {
  if (fsopts->sectorsize == -1)
   fsopts->sectorsize = 512;
  msdos_opt->options.bytes_per_sector = fsopts->sectorsize;
 } else if (fsopts->sectorsize == -1) {
  fsopts->sectorsize = msdos_opt->options.bytes_per_sector;
 } else if (fsopts->sectorsize != msdos_opt->options.bytes_per_sector) {
  err(1, "inconsistent sectorsize -S %u"
      "!= -o bytes_per_sector %u",
      fsopts->sectorsize, msdos_opt->options.bytes_per_sector);
 }


 printf("Creating `%s'\n", image);
 TIMER_START(start);
 if (mkfs_msdos(image, ((void*)0), &msdos_opt->options) == -1)
  return;
 TIMER_RESULTS(start, "mkfs_msdos");

 fsopts->fd = open(image, O_RDWR);
 vp.fs = fsopts;

 flags = 0;
 if ((pmp = msdosfs_mount(&vp)) == ((void*)0))
  err(1, "msdosfs_mount");

 if (msdosfs_root(pmp, &rootvp) != 0)
  err(1, "msdosfs_root");

 if (debug & DEBUG_FS_MAKEFS)
  printf("msdos_makefs: image %s directory %s root %p\n",
      image, dir, root);


 printf("Populating `%s'\n", image);
 TIMER_START(start);
 if (msdos_populate_dir(dir, VTODE(&rootvp), root, root, fsopts) == -1)
  errx(1, "Image file `%s' not created.", image);
 TIMER_RESULTS(start, "msdos_populate_dir");

 if (msdosfs_fsiflush(pmp) != 0)
  errx(1, "Unable to update FSInfo block.");
 if (debug & DEBUG_FS_MAKEFS)
  putchar('\n');


 if (debug & DEBUG_FS_MAKEFS)
  bcleanup();

 printf("Image `%s' complete\n", image);
}
