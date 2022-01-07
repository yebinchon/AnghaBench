
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct TYPE_10__ {int cs_nffree; int cs_nifree; int cs_nbfree; int cs_ndir; } ;
struct TYPE_9__ {int cs_nffree; int cs_nifree; int cs_nbfree; int cs_ndir; } ;
struct fs {TYPE_2__ fs_cstotal; TYPE_1__ fs_old_cstotal; scalar_t__ fs_fmod; } ;
typedef int fsnode ;
struct TYPE_11__ {int fd; struct fs* superblock; int curinode; scalar_t__ inodes; scalar_t__ size; } ;
typedef TYPE_3__ fsinfo_t ;


 int DEBUG_FS_MAKEFS ;
 int TIMER_RESULTS (struct timeval,char*) ;
 int TIMER_START (struct timeval) ;
 int UFS_ROOTINO ;
 int assert (int ) ;
 int bcleanup () ;
 int close (int) ;
 int debug ;
 int err (int,char*,char const*) ;
 int errx (int,char*,char const*) ;
 int ffs_create_image (char const*,TYPE_3__*) ;
 int ffs_populate_dir (char const*,int *,TYPE_3__*) ;
 int ffs_validate (char const*,int *,TYPE_3__*) ;
 int ffs_write_superblock (struct fs*,TYPE_3__*) ;
 int printf (char*,char const*,...) ;
 int putchar (char) ;

void
ffs_makefs(const char *image, const char *dir, fsnode *root, fsinfo_t *fsopts)
{
 struct fs *superblock;
 struct timeval start;

 assert(image != ((void*)0));
 assert(dir != ((void*)0));
 assert(root != ((void*)0));
 assert(fsopts != ((void*)0));

 if (debug & DEBUG_FS_MAKEFS)
  printf("ffs_makefs: image %s directory %s root %p\n",
      image, dir, root);


 TIMER_START(start);
 ffs_validate(dir, root, fsopts);
 TIMER_RESULTS(start, "ffs_validate");

 printf("Calculated size of `%s': %lld bytes, %lld inodes\n",
     image, (long long)fsopts->size, (long long)fsopts->inodes);


 TIMER_START(start);
 if (ffs_create_image(image, fsopts) == -1)
  errx(1, "Image file `%s' not created.", image);
 TIMER_RESULTS(start, "ffs_create_image");

 fsopts->curinode = UFS_ROOTINO;

 if (debug & DEBUG_FS_MAKEFS)
  putchar('\n');


 printf("Populating `%s'\n", image);
 TIMER_START(start);
 if (! ffs_populate_dir(dir, root, fsopts))
  errx(1, "Image file `%s' not populated.", image);
 TIMER_RESULTS(start, "ffs_populate_dir");


 if (debug & DEBUG_FS_MAKEFS)
  bcleanup();


 superblock = fsopts->superblock;
 superblock->fs_fmod = 0;
 superblock->fs_old_cstotal.cs_ndir = superblock->fs_cstotal.cs_ndir;
 superblock->fs_old_cstotal.cs_nbfree = superblock->fs_cstotal.cs_nbfree;
 superblock->fs_old_cstotal.cs_nifree = superblock->fs_cstotal.cs_nifree;
 superblock->fs_old_cstotal.cs_nffree = superblock->fs_cstotal.cs_nffree;


 ffs_write_superblock(fsopts->superblock, fsopts);
 if (close(fsopts->fd) == -1)
  err(1, "Closing `%s'", image);
 fsopts->fd = -1;
 printf("Image `%s' complete\n", image);
}
