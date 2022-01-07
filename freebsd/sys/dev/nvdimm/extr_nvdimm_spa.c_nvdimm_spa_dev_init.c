
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sglist {int dummy; } ;
struct nvdimm_spa_dev {int * spa_g; int spa_dev; int * spa_obj; int spa_len; int spa_phys_base; int * spa_kva; int spa_memattr; } ;
struct make_dev_args {int mda_flags; int mda_mode; int mda_unit; struct nvdimm_spa_dev* mda_si_drv1; int mda_gid; int mda_uid; int * mda_cr; int * mda_devsw; } ;


 int ENXIO ;
 int GID_OPERATOR ;
 int MAKEDEV_CHECKNAME ;
 int MAKEDEV_WAITOK ;
 int M_NVDIMM ;
 int M_WAITOK ;
 int OBJT_SG ;
 int UID_ROOT ;
 int VM_PROT_ALL ;
 int asprintf (char**,int ,char*,char const*) ;
 int free (char*,int ) ;
 int make_dev_args_init (struct make_dev_args*) ;
 int make_dev_s (struct make_dev_args*,int *,char*,char*) ;
 int * nvdimm_spa_g_create (struct nvdimm_spa_dev*,char const*) ;
 int pmap_large_map (int ,int ,int **,int ) ;
 int printf (char*,char const*,...) ;
 struct sglist* sglist_alloc (int,int ) ;
 int sglist_append_phys (struct sglist*,int ,int ) ;
 int sglist_free (struct sglist*) ;
 int spa_cdevsw ;
 int * vm_pager_allocate (int ,struct sglist*,int ,int ,int ,int *) ;

int
nvdimm_spa_dev_init(struct nvdimm_spa_dev *dev, const char *name, int unit)
{
 struct make_dev_args mda;
 struct sglist *spa_sg;
 char *devname;
 int error, error1;

 error1 = pmap_large_map(dev->spa_phys_base, dev->spa_len,
     &dev->spa_kva, dev->spa_memattr);
 if (error1 != 0) {
  printf("NVDIMM %s cannot map into KVA, error %d\n", name,
      error1);
  dev->spa_kva = ((void*)0);
 }

 spa_sg = sglist_alloc(1, M_WAITOK);
 error = sglist_append_phys(spa_sg, dev->spa_phys_base,
     dev->spa_len);
 if (error == 0) {
  dev->spa_obj = vm_pager_allocate(OBJT_SG, spa_sg, dev->spa_len,
      VM_PROT_ALL, 0, ((void*)0));
  if (dev->spa_obj == ((void*)0)) {
   printf("NVDIMM %s failed to alloc vm object", name);
   sglist_free(spa_sg);
  }
 } else {
  printf("NVDIMM %s failed to init sglist, error %d", name,
      error);
  sglist_free(spa_sg);
 }

 make_dev_args_init(&mda);
 mda.mda_flags = MAKEDEV_WAITOK | MAKEDEV_CHECKNAME;
 mda.mda_devsw = &spa_cdevsw;
 mda.mda_cr = ((void*)0);
 mda.mda_uid = UID_ROOT;
 mda.mda_gid = GID_OPERATOR;
 mda.mda_mode = 0660;
 mda.mda_si_drv1 = dev;
 mda.mda_unit = unit;
 asprintf(&devname, M_NVDIMM, "nvdimm_%s", name);
 error = make_dev_s(&mda, &dev->spa_dev, "%s", devname);
 free(devname, M_NVDIMM);
 if (error != 0) {
  printf("NVDIMM %s cannot create devfs node, error %d\n", name,
      error);
  if (error1 == 0)
   error1 = error;
 }
 dev->spa_g = nvdimm_spa_g_create(dev, name);
 if (dev->spa_g == ((void*)0) && error1 == 0)
  error1 = ENXIO;
 return (error1);
}
