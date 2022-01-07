
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vp_nvlist; } ;
typedef TYPE_1__ vdev_phys_t ;
struct TYPE_5__ {TYPE_1__ vl_vdev_phys; } ;
typedef TYPE_2__ vdev_label_t ;
typedef int nvlist_t ;
typedef int FILE ;


 int free (TYPE_2__*) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_string (int *,char*,char**) ;
 scalar_t__ nvlist_unpack (int ,int,int **,int ) ;
 scalar_t__ read_buf (int *,int ,int) ;
 int strlcpy (char*,char*,size_t) ;

int
fstyp_zfs(FILE *fp, char *label, size_t labelsize)
{
 vdev_label_t *vdev_label = ((void*)0);
 vdev_phys_t *vdev_phys;
 char *zpool_name = ((void*)0);
 nvlist_t *config = ((void*)0);
 int err = 0;







 vdev_label = (vdev_label_t *)read_buf(fp, 0, sizeof(*vdev_label));
 if (vdev_label == ((void*)0))
  return (1);

 vdev_phys = &(vdev_label->vl_vdev_phys);

 if ((nvlist_unpack(vdev_phys->vp_nvlist, sizeof(vdev_phys->vp_nvlist),
     &config, 0)) == 0 &&
     (nvlist_lookup_string(config, "name", &zpool_name) == 0)) {
  strlcpy(label, zpool_name, labelsize);
 } else
  err = 1;

 nvlist_free(config);
 free(vdev_label);

 return (err);
}
