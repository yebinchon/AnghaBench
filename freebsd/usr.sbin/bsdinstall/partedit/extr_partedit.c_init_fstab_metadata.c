
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct partition_metadata {int * newfs; TYPE_1__* fstab; int * name; } ;
struct fstab {int fs_passno; int fs_freq; int * fs_type; int * fs_mntops; int * fs_vfstype; int * fs_file; int * fs_spec; } ;
struct TYPE_2__ {int fs_passno; int fs_freq; void* fs_type; void* fs_mntops; void* fs_vfstype; void* fs_file; void* fs_spec; } ;


 int TAILQ_INSERT_TAIL (int *,struct partition_metadata*,int ) ;
 struct partition_metadata* calloc (int,int) ;
 struct fstab* getfsent () ;
 TYPE_1__* malloc (int) ;
 int metadata ;
 int part_metadata ;
 int setfsent () ;
 void* strdup (int *) ;
 scalar_t__ strncmp (int *,char*,int) ;

__attribute__((used)) static void
init_fstab_metadata(void)
{
 struct fstab *fstab;
 struct partition_metadata *md;

 setfsent();
 while ((fstab = getfsent()) != ((void*)0)) {
  md = calloc(1, sizeof(struct partition_metadata));

  md->name = ((void*)0);
  if (strncmp(fstab->fs_spec, "/dev/", 5) == 0)
   md->name = strdup(&fstab->fs_spec[5]);

  md->fstab = malloc(sizeof(struct fstab));
  md->fstab->fs_spec = strdup(fstab->fs_spec);
  md->fstab->fs_file = strdup(fstab->fs_file);
  md->fstab->fs_vfstype = strdup(fstab->fs_vfstype);
  md->fstab->fs_mntops = strdup(fstab->fs_mntops);
  md->fstab->fs_type = strdup(fstab->fs_type);
  md->fstab->fs_freq = fstab->fs_freq;
  md->fstab->fs_passno = fstab->fs_passno;

  md->newfs = ((void*)0);

  TAILQ_INSERT_TAIL(&part_metadata, md, metadata);
 }
}
