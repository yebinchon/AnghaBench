
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int u_long ;
struct thread {int dummy; } ;
struct mpr_usr_command {int dummy; } ;
struct mpr_softc {int mpr_mtx; int port_enable_complete; } ;
struct mpr_ext_cfg_page_req {int len; int buf; } ;
struct mpr_cfg_page_req {int len; int buf; } ;
struct cdev {struct mpr_softc* si_drv1; } ;
typedef int mpr_reg_access_t ;
typedef int mpr_pci_info_t ;
typedef int mpr_pass_thru_t ;
typedef int mpr_event_report_t ;
typedef int mpr_event_query_t ;
typedef int mpr_event_enable_t ;
typedef int mpr_diag_action_t ;
typedef int mpr_btdh_mapping_t ;
typedef int mpr_adapter_data_t ;
typedef int MPI2_CONFIG_PAGE_HEADER ;
typedef int MPI2_CONFIG_EXTENDED_PAGE_HEADER ;


 int ENOIOCTL ;






 int MPR_USER ;
 int M_MPRUSER ;
 int M_WAITOK ;
 int M_ZERO ;
 int PRIBIO ;
 int copyin (int ,void*,int) ;
 int copyout (void*,int ,int) ;
 int free (void*,int ) ;
 int hz ;
 void* malloc (int,int ,int) ;
 int mpr_dprint (struct mpr_softc*,int ,char*,scalar_t__) ;
 int mpr_lock (struct mpr_softc*) ;
 int mpr_reinit (struct mpr_softc*) ;
 int mpr_unlock (struct mpr_softc*) ;
 int mpr_user_btdh (struct mpr_softc*,int *) ;
 int mpr_user_command (struct mpr_softc*,struct mpr_usr_command*) ;
 int mpr_user_diag_action (struct mpr_softc*,int *) ;
 int mpr_user_event_enable (struct mpr_softc*,int *) ;
 int mpr_user_event_query (struct mpr_softc*,int *) ;
 int mpr_user_event_report (struct mpr_softc*,int *) ;
 int mpr_user_get_adapter_data (struct mpr_softc*,int *) ;
 int mpr_user_pass_thru (struct mpr_softc*,int *) ;
 int mpr_user_read_cfg_header (struct mpr_softc*,struct mpr_cfg_page_req*) ;
 int mpr_user_read_cfg_page (struct mpr_softc*,struct mpr_cfg_page_req*,void*) ;
 int mpr_user_read_extcfg_header (struct mpr_softc*,struct mpr_ext_cfg_page_req*) ;
 int mpr_user_read_extcfg_page (struct mpr_softc*,struct mpr_ext_cfg_page_req*,void*) ;
 int mpr_user_read_pci_info (struct mpr_softc*,int *) ;
 int mpr_user_reg_access (struct mpr_softc*,int *) ;
 int mpr_user_write_cfg_page (struct mpr_softc*,struct mpr_cfg_page_req*,void*) ;
 int msleep (int *,int *,int ,char*,int) ;
 int printf (char*,int) ;
 scalar_t__ time_uptime ;

__attribute__((used)) static int
mpr_ioctl(struct cdev *dev, u_long cmd, void *arg, int flag,
    struct thread *td)
{
 struct mpr_softc *sc;
 struct mpr_cfg_page_req *page_req;
 struct mpr_ext_cfg_page_req *ext_page_req;
 void *mpr_page;
 int error, msleep_ret;

 mpr_page = ((void*)0);
 sc = dev->si_drv1;
 page_req = (void *)arg;
 ext_page_req = (void *)arg;

 switch (cmd) {
 case 142:
  mpr_lock(sc);
  error = mpr_user_read_cfg_header(sc, page_req);
  mpr_unlock(sc);
  break;
 case 141:
  mpr_page = malloc(page_req->len, M_MPRUSER, M_WAITOK | M_ZERO);
  error = copyin(page_req->buf, mpr_page,
      sizeof(MPI2_CONFIG_PAGE_HEADER));
  if (error)
   break;
  mpr_lock(sc);
  error = mpr_user_read_cfg_page(sc, page_req, mpr_page);
  mpr_unlock(sc);
  if (error)
   break;
  error = copyout(mpr_page, page_req->buf, page_req->len);
  break;
 case 140:
  mpr_lock(sc);
  error = mpr_user_read_extcfg_header(sc, ext_page_req);
  mpr_unlock(sc);
  break;
 case 139:
  mpr_page = malloc(ext_page_req->len, M_MPRUSER,
      M_WAITOK | M_ZERO);
  error = copyin(ext_page_req->buf, mpr_page,
      sizeof(MPI2_CONFIG_EXTENDED_PAGE_HEADER));
  if (error)
   break;
  mpr_lock(sc);
  error = mpr_user_read_extcfg_page(sc, ext_page_req, mpr_page);
  mpr_unlock(sc);
  if (error)
   break;
  error = copyout(mpr_page, ext_page_req->buf, ext_page_req->len);
  break;
 case 138:
  mpr_page = malloc(page_req->len, M_MPRUSER, M_WAITOK|M_ZERO);
  error = copyin(page_req->buf, mpr_page, page_req->len);
  if (error)
   break;
  mpr_lock(sc);
  error = mpr_user_write_cfg_page(sc, page_req, mpr_page);
  mpr_unlock(sc);
  break;
 case 143:
  error = mpr_user_command(sc, (struct mpr_usr_command *)arg);
  break;
 case 130:





  error = mpr_user_pass_thru(sc, (mpr_pass_thru_t *)arg);
  break;
 case 132:




  error = 0;
  mpr_user_get_adapter_data(sc, (mpr_adapter_data_t *)arg);
  break;
 case 131:




  mpr_lock(sc);
  error = 0;
  mpr_user_read_pci_info(sc, (mpr_pci_info_t *)arg);
  mpr_unlock(sc);
  break;
 case 128:
  mpr_lock(sc);
  sc->port_enable_complete = 0;
  uint32_t reinit_start = time_uptime;
  error = mpr_reinit(sc);

  msleep_ret = msleep(&sc->port_enable_complete, &sc->mpr_mtx,
      PRIBIO, "mpr_porten", 300 * hz);
  mpr_unlock(sc);
  if (msleep_ret)
   printf("Port Enable did not complete after Diag "
       "Reset msleep error %d.\n", msleep_ret);
  else
   mpr_dprint(sc, MPR_USER, "Hard Reset with Port Enable "
       "completed in %d seconds.\n",
       (uint32_t)(time_uptime - reinit_start));
  break;
 case 136:




  mpr_lock(sc);
  error = mpr_user_diag_action(sc, (mpr_diag_action_t *)arg);
  mpr_unlock(sc);
  break;
 case 134:




  error = 0;
  mpr_user_event_query(sc, (mpr_event_query_t *)arg);
  break;
 case 135:




  error = 0;
  mpr_user_event_enable(sc, (mpr_event_enable_t *)arg);
  break;
 case 133:




  error = mpr_user_event_report(sc, (mpr_event_report_t *)arg);
  break;
 case 129:




  mpr_lock(sc);
  error = mpr_user_reg_access(sc, (mpr_reg_access_t *)arg);
  mpr_unlock(sc);
  break;
 case 137:





  error = mpr_user_btdh(sc, (mpr_btdh_mapping_t *)arg);
  break;
 default:
  error = ENOIOCTL;
  break;
 }

 if (mpr_page != ((void*)0))
  free(mpr_page, M_MPRUSER);

 return (error);
}
