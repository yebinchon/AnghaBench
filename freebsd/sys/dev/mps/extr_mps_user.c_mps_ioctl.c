
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int u_long ;
struct thread {int dummy; } ;
struct mps_usr_command {int dummy; } ;
struct mps_softc {int mps_mtx; int port_enable_complete; } ;
struct mps_ext_cfg_page_req {int len; int buf; } ;
struct mps_cfg_page_req {int len; int buf; } ;
struct cdev {struct mps_softc* si_drv1; } ;
typedef int mps_reg_access_t ;
typedef int mps_pci_info_t ;
typedef int mps_pass_thru_t ;
typedef int mps_event_report_t ;
typedef int mps_event_query_t ;
typedef int mps_event_enable_t ;
typedef int mps_diag_action_t ;
typedef int mps_btdh_mapping_t ;
typedef int mps_adapter_data_t ;
typedef int MPI2_CONFIG_PAGE_HEADER ;
typedef int MPI2_CONFIG_EXTENDED_PAGE_HEADER ;


 int ENOIOCTL ;






 int MPS_USER ;
 int M_MPSUSER ;
 int M_WAITOK ;
 int M_ZERO ;
 int PRIBIO ;
 int copyin (int ,void*,int) ;
 int copyout (void*,int ,int) ;
 int free (void*,int ) ;
 int hz ;
 void* malloc (int,int ,int) ;
 int mps_dprint (struct mps_softc*,int ,char*,scalar_t__) ;
 int mps_lock (struct mps_softc*) ;
 int mps_reinit (struct mps_softc*) ;
 int mps_unlock (struct mps_softc*) ;
 int mps_user_btdh (struct mps_softc*,int *) ;
 int mps_user_command (struct mps_softc*,struct mps_usr_command*) ;
 int mps_user_diag_action (struct mps_softc*,int *) ;
 int mps_user_event_enable (struct mps_softc*,int *) ;
 int mps_user_event_query (struct mps_softc*,int *) ;
 int mps_user_event_report (struct mps_softc*,int *) ;
 int mps_user_get_adapter_data (struct mps_softc*,int *) ;
 int mps_user_pass_thru (struct mps_softc*,int *) ;
 int mps_user_read_cfg_header (struct mps_softc*,struct mps_cfg_page_req*) ;
 int mps_user_read_cfg_page (struct mps_softc*,struct mps_cfg_page_req*,void*) ;
 int mps_user_read_extcfg_header (struct mps_softc*,struct mps_ext_cfg_page_req*) ;
 int mps_user_read_extcfg_page (struct mps_softc*,struct mps_ext_cfg_page_req*,void*) ;
 int mps_user_read_pci_info (struct mps_softc*,int *) ;
 int mps_user_reg_access (struct mps_softc*,int *) ;
 int mps_user_write_cfg_page (struct mps_softc*,struct mps_cfg_page_req*,void*) ;
 int msleep (int *,int *,int ,char*,int) ;
 int printf (char*,int) ;
 scalar_t__ time_uptime ;

__attribute__((used)) static int
mps_ioctl(struct cdev *dev, u_long cmd, void *arg, int flag,
    struct thread *td)
{
 struct mps_softc *sc;
 struct mps_cfg_page_req *page_req;
 struct mps_ext_cfg_page_req *ext_page_req;
 void *mps_page;
 int error, msleep_ret;

 mps_page = ((void*)0);
 sc = dev->si_drv1;
 page_req = (void *)arg;
 ext_page_req = (void *)arg;

 switch (cmd) {
 case 142:
  mps_lock(sc);
  error = mps_user_read_cfg_header(sc, page_req);
  mps_unlock(sc);
  break;
 case 141:
  mps_page = malloc(page_req->len, M_MPSUSER, M_WAITOK | M_ZERO);
  error = copyin(page_req->buf, mps_page,
      sizeof(MPI2_CONFIG_PAGE_HEADER));
  if (error)
   break;
  mps_lock(sc);
  error = mps_user_read_cfg_page(sc, page_req, mps_page);
  mps_unlock(sc);
  if (error)
   break;
  error = copyout(mps_page, page_req->buf, page_req->len);
  break;
 case 140:
  mps_lock(sc);
  error = mps_user_read_extcfg_header(sc, ext_page_req);
  mps_unlock(sc);
  break;
 case 139:
  mps_page = malloc(ext_page_req->len, M_MPSUSER, M_WAITOK|M_ZERO);
  error = copyin(ext_page_req->buf, mps_page,
      sizeof(MPI2_CONFIG_EXTENDED_PAGE_HEADER));
  if (error)
   break;
  mps_lock(sc);
  error = mps_user_read_extcfg_page(sc, ext_page_req, mps_page);
  mps_unlock(sc);
  if (error)
   break;
  error = copyout(mps_page, ext_page_req->buf, ext_page_req->len);
  break;
 case 138:
  mps_page = malloc(page_req->len, M_MPSUSER, M_WAITOK|M_ZERO);
  error = copyin(page_req->buf, mps_page, page_req->len);
  if (error)
   break;
  mps_lock(sc);
  error = mps_user_write_cfg_page(sc, page_req, mps_page);
  mps_unlock(sc);
  break;
 case 143:
  error = mps_user_command(sc, (struct mps_usr_command *)arg);
  break;
 case 130:





  error = mps_user_pass_thru(sc, (mps_pass_thru_t *)arg);
  break;
 case 132:




  error = 0;
  mps_user_get_adapter_data(sc, (mps_adapter_data_t *)arg);
  break;
 case 131:




  mps_lock(sc);
  error = 0;
  mps_user_read_pci_info(sc, (mps_pci_info_t *)arg);
  mps_unlock(sc);
  break;
 case 128:
  mps_lock(sc);
  sc->port_enable_complete = 0;
  uint32_t reinit_start = time_uptime;
  error = mps_reinit(sc);

  msleep_ret = msleep(&sc->port_enable_complete, &sc->mps_mtx, PRIBIO,
         "mps_porten", 300 * hz);
  mps_unlock(sc);
  if (msleep_ret)
   printf("Port Enable did not complete after Diag "
       "Reset msleep error %d.\n", msleep_ret);
  else
   mps_dprint(sc, MPS_USER,
    "Hard Reset with Port Enable completed in %d seconds.\n",
     (uint32_t) (time_uptime - reinit_start));
  break;
 case 136:




  mps_lock(sc);
  error = mps_user_diag_action(sc, (mps_diag_action_t *)arg);
  mps_unlock(sc);
  break;
 case 134:




  error = 0;
  mps_user_event_query(sc, (mps_event_query_t *)arg);
  break;
 case 135:




  error = 0;
  mps_user_event_enable(sc, (mps_event_enable_t *)arg);
  break;
 case 133:




  error = mps_user_event_report(sc, (mps_event_report_t *)arg);
  break;
 case 129:




  mps_lock(sc);
  error = mps_user_reg_access(sc, (mps_reg_access_t *)arg);
  mps_unlock(sc);
  break;
 case 137:





  error = mps_user_btdh(sc, (mps_btdh_mapping_t *)arg);
  break;
 default:
  error = ENOIOCTL;
  break;
 }

 if (mps_page != ((void*)0))
  free(mps_page, M_MPSUSER);

 return (error);
}
