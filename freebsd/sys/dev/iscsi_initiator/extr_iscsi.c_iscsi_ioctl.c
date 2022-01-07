
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_long ;
typedef int u_int ;
struct thread {TYPE_1__* td_proc; } ;
struct isc_softc {int dummy; } ;
struct cdev {TYPE_2__* si_drv2; struct isc_softc* si_drv1; } ;
typedef int pid_t ;
typedef int iscsi_cam_t ;
struct TYPE_7__ {int signal; int * soc; TYPE_1__* proc; int oid; int clist; } ;
typedef TYPE_2__ isc_session_t ;
typedef int isc_opt_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_6__ {int p_pid; } ;


 int CTLFLAG_RD ;
 int EINVAL ;
 int ENOIOCTL ;
 int ENOTCONN ;
 int ENXIO ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (int *,int ,int ,char*,int ,int *,int,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int _SIG_MAXSIG ;
 int debug_called (int) ;
 scalar_t__ dev2unit (struct cdev*) ;
 int i_create_session (struct cdev*,int*) ;
 int i_fullfeature (struct cdev*,int) ;
 int i_ping (struct cdev*) ;
 int i_recv (struct cdev*,scalar_t__,struct thread*) ;
 int i_send (struct cdev*,scalar_t__,struct thread*) ;
 int i_setopt (TYPE_2__*,int *) ;
 int i_setsoc (TYPE_2__*,int ,struct thread*) ;
 int ic_getCamVals (TYPE_2__*,int *) ;
 scalar_t__ max_sessions ;
 int sdebug (int,char*,scalar_t__,int) ;

__attribute__((used)) static int
iscsi_ioctl(struct cdev *dev, u_long cmd, caddr_t arg, int mode, struct thread *td)
{
     struct isc_softc *sc;
     isc_session_t *sp;
     isc_opt_t *opt;
     int error;

     debug_called(8);

     error = 0;
     if(dev2unit(dev) == max_sessions) {



   sc = dev->si_drv1;
   if(sc == ((void*)0))
        return ENXIO;

   switch(cmd) {
   case 132:
        error = i_create_session(dev, (int *)arg);
        if(error == 0)
      break;

   default:
        error = ENXIO;
   }
   return error;
     }



     sp = dev->si_drv2;
     if(sp == ((void*)0))
   return ENXIO;

     sdebug(6, "dev=%d cmd=%d", dev2unit(dev), (int)(cmd & 0xff));

     switch(cmd) {
     case 131:
   error = i_setsoc(sp, *(u_int *)arg, td);
   break;

     case 133:
   opt = (isc_opt_t *)arg;
   error = i_setopt(sp, opt);
   break;

     case 134:
   error = i_send(dev, arg, td);
   break;

     case 136:
   error = i_recv(dev, arg, td);
   break;

     case 137:
   error = i_ping(dev);
   break;

     case 129:
   error = sp->soc == ((void*)0)? ENOTCONN: i_fullfeature(dev, 1);
   if(error == 0) {
        sp->proc = td->td_proc;
        SYSCTL_ADD_INT(&sp->clist, SYSCTL_CHILDREN(sp->oid),
          OID_AUTO, "pid", CTLFLAG_RD,
          &sp->proc->p_pid, sizeof(pid_t), "control process id");
   }
   break;

     case 135:
   error = sp->soc == ((void*)0)? ENOTCONN: i_fullfeature(dev, 2);
   break;

     case 128:
   error = i_fullfeature(dev, 0);
   break;

     case 130: {
   int sig = *(int *)arg;

   if(sig < 0 || sig > _SIG_MAXSIG)
        error = EINVAL;
   else
  sp->signal = sig;
   break;
     }

     case 138: {
   iscsi_cam_t *cp = (iscsi_cam_t *)arg;

   error = ic_getCamVals(sp, cp);
   break;
     }

     default:
   error = ENOIOCTL;
     }

     return error;
}
