
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


typedef union pci_conf_union {int dummy; } pci_conf_union ;
typedef int u_long ;
struct thread {int dummy; } ;
struct pci_match_conf {int num_matches; size_t offset; size_t match_buf_len; size_t num_patterns; int pat_buf_len; void* status; int generation; int matches; int patterns; } ;
struct pci_map {int pm_size; int pm_value; } ;
struct TYPE_13__ {int pc_func; int pc_dev; int pc_bus; int pc_domain; } ;
struct pci_list_vpd_io {TYPE_5__ plvi_sel; } ;
struct TYPE_10__ {int pc_func; int pc_dev; int pc_bus; } ;
struct pci_io_old {int pi_reg; int pi_data; int pi_width; TYPE_2__ pi_sel; } ;
struct TYPE_12__ {int pc_func; int pc_dev; int pc_bus; int pc_domain; } ;
struct pci_io {int pi_reg; int pi_data; TYPE_4__ pi_sel; int pi_width; } ;
struct TYPE_15__ {char* pd_name; int pd_unit; } ;
struct TYPE_9__ {int dev; } ;
struct pci_devinfo {TYPE_7__ conf; TYPE_1__ cfg; } ;
struct pci_conf_io {int num_matches; size_t offset; size_t match_buf_len; size_t num_patterns; int pat_buf_len; void* status; int generation; int matches; int patterns; } ;
struct TYPE_14__ {int pc_func; int pc_dev; int pc_bus; int pc_domain; } ;
struct pci_bar_mmap {int pbm_flags; TYPE_6__ pbm_sel; } ;
struct TYPE_11__ {int pc_func; int pc_dev; int pc_bus; int pc_domain; } ;
struct pci_bar_io {int pbi_length; int pbi_enabled; int pbi_base; int pbi_reg; TYPE_3__ pbi_sel; } ;
struct devlist {int dummy; } ;
struct cdev {int dummy; } ;
typedef int pci_addr_t ;
typedef int * device_t ;
typedef scalar_t__ caddr_t ;


 int EINVAL ;
 int ENODEV ;
 int ENOTTY ;
 int EPERM ;
 int FWRITE ;
 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 int PCIIO_BAR_MMAP_RW ;
 void* PCI_GETCONF_ERROR ;
 void* PCI_GETCONF_LAST_DEVICE ;
 void* PCI_GETCONF_LIST_CHANGED ;
 void* PCI_GETCONF_MORE_DEVS ;
 size_t PCI_MAXNAMELEN ;
 struct pci_devinfo* STAILQ_FIRST (struct devlist*) ;
 struct pci_devinfo* STAILQ_NEXT (struct pci_devinfo*,int ) ;
 int copyin (int ,struct pci_match_conf*,int) ;
 int copyout (union pci_conf_union*,int ,size_t) ;
 char* device_get_name (int ) ;
 int device_get_unit (int ) ;
 int device_is_attached (int *) ;
 int free (struct pci_match_conf*,int ) ;
 struct pci_match_conf* malloc (int,int ,int) ;
 size_t min (int ,size_t) ;
 int pci_bar_enabled (int *,struct pci_map*) ;
 int pci_bar_mmap (int *,struct pci_bar_mmap*) ;
 int pci_conf_for_copyout (TYPE_7__*,union pci_conf_union*,int) ;
 int pci_conf_io_init (struct pci_match_conf*,scalar_t__,int) ;
 int pci_conf_io_update_data (struct pci_match_conf*,scalar_t__,int) ;
 int pci_conf_match (int,struct pci_match_conf*,int,TYPE_7__*) ;
 size_t pci_conf_size (int) ;
 struct devlist pci_devq ;
 struct pci_map* pci_find_bar (int *,int ) ;
 int * pci_find_dbsf (int ,int ,int ,int ) ;
 int pci_generation ;
 int pci_links ;
 int pci_list_vpd (int *,struct pci_list_vpd_io*) ;
 int pci_match_conf_size (int) ;
 size_t pci_numdevs ;
 void* pci_read_config (int *,int,int ) ;
 int pci_write_config (int *,int,int,int ) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static int
pci_ioctl(struct cdev *dev, u_long cmd, caddr_t data, int flag, struct thread *td)
{
 device_t pcidev;
 const char *name;
 struct devlist *devlist_head;
 struct pci_conf_io *cio = ((void*)0);
 struct pci_devinfo *dinfo;
 struct pci_io *io;
 struct pci_bar_io *bio;
 struct pci_list_vpd_io *lvio;
 struct pci_match_conf *pattern_buf;
 struct pci_map *pm;
 struct pci_bar_mmap *pbm;
 size_t confsz, iolen;
 int error, ionum, i, num_patterns;
 union pci_conf_union pcu;







 if (!(flag & FWRITE)) {
  switch (cmd) {
  case 136:
  case 137:
  case 132:
   break;
  default:
   return (EPERM);
  }
 }


 switch (cmd) {
 case 136:
  cio = malloc(sizeof(struct pci_conf_io), M_TEMP,
      M_WAITOK | M_ZERO);
  pci_conf_io_init(cio, data, cmd);
  pattern_buf = ((void*)0);
  num_patterns = 0;
  dinfo = ((void*)0);

  cio->num_matches = 0;







  if ((cio->offset != 0)
   && (cio->generation != pci_generation)){
   cio->status = PCI_GETCONF_LIST_CHANGED;
   error = 0;
   goto getconfexit;
  }





  if (cio->offset >= pci_numdevs) {
   cio->status = PCI_GETCONF_LAST_DEVICE;
   error = 0;
   goto getconfexit;
  }


  devlist_head = &pci_devq;







  confsz = pci_conf_size(cmd);
  iolen = min(cio->match_buf_len - (cio->match_buf_len % confsz),
      pci_numdevs * confsz);





  ionum = iolen / confsz;





  if ((cio->num_patterns > 0) && (cio->num_patterns < pci_numdevs)
   && (cio->pat_buf_len > 0)) {
   if (cio->num_patterns * pci_match_conf_size(cmd) !=
       cio->pat_buf_len) {

    cio->status = PCI_GETCONF_ERROR;
    error = EINVAL;
    goto getconfexit;
   }




   pattern_buf = malloc(cio->pat_buf_len, M_TEMP,
       M_WAITOK);
   error = copyin(cio->patterns, pattern_buf,
       cio->pat_buf_len);
   if (error != 0) {
    error = EINVAL;
    goto getconfexit;
   }
   num_patterns = cio->num_patterns;
  } else if ((cio->num_patterns > 0)
   || (cio->pat_buf_len > 0)) {



   cio->status = PCI_GETCONF_ERROR;
   error = EINVAL;
                       goto getconfexit;
  }





  for (cio->num_matches = 0, i = 0,
     dinfo = STAILQ_FIRST(devlist_head);
       dinfo != ((void*)0);
       dinfo = STAILQ_NEXT(dinfo, pci_links), i++) {

   if (i < cio->offset)
    continue;


   name = ((void*)0);
   if (dinfo->cfg.dev)
    name = device_get_name(dinfo->cfg.dev);
   if (name) {
    strncpy(dinfo->conf.pd_name, name,
     sizeof(dinfo->conf.pd_name));
    dinfo->conf.pd_name[PCI_MAXNAMELEN] = 0;
    dinfo->conf.pd_unit =
     device_get_unit(dinfo->cfg.dev);
   } else {
    dinfo->conf.pd_name[0] = '\0';
    dinfo->conf.pd_unit = 0;
   }

   if (pattern_buf == ((void*)0) ||
       pci_conf_match(cmd, pattern_buf, num_patterns,
       &dinfo->conf) == 0) {
    if (cio->num_matches >= ionum) {
     error = 0;
     break;
    }

    pci_conf_for_copyout(&dinfo->conf, &pcu, cmd);
    error = copyout(&pcu,
        (caddr_t)cio->matches +
        confsz * cio->num_matches, confsz);
    if (error)
     break;
    cio->num_matches++;
   }
  }





  cio->offset = i;





  cio->generation = pci_generation;







  if (dinfo == ((void*)0))
   cio->status = PCI_GETCONF_LAST_DEVICE;
  else
   cio->status = PCI_GETCONF_MORE_DEVS;

getconfexit:
  pci_conf_io_update_data(cio, data, cmd);
  free(cio, M_TEMP);
  free(pattern_buf, M_TEMP);

  break;
 case 131:
 case 129:
  io = (struct pci_io *)data;
  switch(io->pi_width) {
  case 4:
  case 2:
  case 1:

   if (io->pi_reg < 0 ||
       io->pi_reg & (io->pi_width - 1)) {
    error = EINVAL;
    break;
   }






   pcidev = pci_find_dbsf(io->pi_sel.pc_domain,
       io->pi_sel.pc_bus, io->pi_sel.pc_dev,
       io->pi_sel.pc_func);
   if (pcidev) {



    if (cmd == 129)

     pci_write_config(pcidev,
         io->pi_reg,
         io->pi_data,
         io->pi_width);







    else
     io->pi_data =
      pci_read_config(pcidev,
         io->pi_reg,
         io->pi_width);
    error = 0;
   } else {






     error = ENODEV;
   }
   break;
  default:
   error = EINVAL;
   break;
  }
  break;

 case 137:
  bio = (struct pci_bar_io *)data;





  pcidev = pci_find_dbsf(bio->pbi_sel.pc_domain,
      bio->pbi_sel.pc_bus, bio->pbi_sel.pc_dev,
      bio->pbi_sel.pc_func);
  if (pcidev == ((void*)0)) {
   error = ENODEV;
   break;
  }
  pm = pci_find_bar(pcidev, bio->pbi_reg);
  if (pm == ((void*)0)) {
   error = EINVAL;
   break;
  }
  bio->pbi_base = pm->pm_value;
  bio->pbi_length = (pci_addr_t)1 << pm->pm_size;
  bio->pbi_enabled = pci_bar_enabled(pcidev, pm);
  error = 0;
  break;
 case 139:
  error = 0;
  io = (struct pci_io *)data;
  pcidev = pci_find_dbsf(io->pi_sel.pc_domain, io->pi_sel.pc_bus,
           io->pi_sel.pc_dev, io->pi_sel.pc_func);
  if (pcidev != ((void*)0))
   io->pi_data = device_is_attached(pcidev);
  else
   error = ENODEV;
  break;
 case 132:
  lvio = (struct pci_list_vpd_io *)data;





  pcidev = pci_find_dbsf(lvio->plvi_sel.pc_domain,
      lvio->plvi_sel.pc_bus, lvio->plvi_sel.pc_dev,
      lvio->plvi_sel.pc_func);
  if (pcidev == ((void*)0)) {
   error = ENODEV;
   break;
  }
  error = pci_list_vpd(pcidev, lvio);
  break;

 case 138:
  pbm = (struct pci_bar_mmap *)data;
  if ((flag & FWRITE) == 0 &&
      (pbm->pbm_flags & PCIIO_BAR_MMAP_RW) != 0)
   return (EPERM);
  pcidev = pci_find_dbsf(pbm->pbm_sel.pc_domain,
      pbm->pbm_sel.pc_bus, pbm->pbm_sel.pc_dev,
      pbm->pbm_sel.pc_func);
  error = pcidev == ((void*)0) ? ENODEV : pci_bar_mmap(pcidev, pbm);
  break;

 default:
  error = ENOTTY;
  break;
 }

 return (error);
}
