#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
typedef  int /*<<< orphan*/  u_int ;
struct thread {TYPE_1__* td_proc; } ;
struct isc_softc {int dummy; } ;
struct cdev {TYPE_2__* si_drv2; struct isc_softc* si_drv1; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  iscsi_cam_t ;
struct TYPE_7__ {int signal; int /*<<< orphan*/ * soc; TYPE_1__* proc; int /*<<< orphan*/  oid; int /*<<< orphan*/  clist; } ;
typedef  TYPE_2__ isc_session_t ;
typedef  int /*<<< orphan*/  isc_opt_t ;
typedef  scalar_t__ caddr_t ;
struct TYPE_6__ {int /*<<< orphan*/  p_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int EINVAL ; 
 int ENOIOCTL ; 
 int ENOTCONN ; 
 int ENXIO ; 
#define  ISCSIGETCAM 138 
#define  ISCSIPING 137 
#define  ISCSIRECV 136 
#define  ISCSIRESTART 135 
#define  ISCSISEND 134 
#define  ISCSISETOPT 133 
#define  ISCSISETSES 132 
#define  ISCSISETSOC 131 
#define  ISCSISIGNAL 130 
#define  ISCSISTART 129 
#define  ISCSISTOP 128 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int _SIG_MAXSIG ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct cdev*) ; 
 int FUNC4 (struct cdev*,int*) ; 
 int FUNC5 (struct cdev*,int) ; 
 int FUNC6 (struct cdev*) ; 
 int FUNC7 (struct cdev*,scalar_t__,struct thread*) ; 
 int FUNC8 (struct cdev*,scalar_t__,struct thread*) ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,struct thread*) ; 
 int FUNC11 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ max_sessions ; 
 int /*<<< orphan*/  FUNC12 (int,char*,scalar_t__,int) ; 

__attribute__((used)) static int
FUNC13(struct cdev *dev, u_long cmd, caddr_t arg, int mode, struct thread *td)
{
     struct isc_softc	*sc;
     isc_session_t	*sp;
     isc_opt_t		*opt;
     int		error;

     FUNC2(8);

     error = 0;
     if(FUNC3(dev) == max_sessions) {
	  /*
	   | non Session commands
	   */
	  sc = dev->si_drv1;
	  if(sc == NULL)
	       return ENXIO;

	  switch(cmd) {
	  case ISCSISETSES:
	       error = FUNC4(dev, (int *)arg);
	       if(error == 0)
		    break;

	  default:
	       error = ENXIO;
	  }
	  return error;
     }
     /*
      | session commands
      */
     sp = dev->si_drv2;
     if(sp == NULL)
	  return ENXIO;

     FUNC12(6, "dev=%d cmd=%d", FUNC3(dev), (int)(cmd & 0xff));

     switch(cmd) {
     case ISCSISETSOC:
	  error = FUNC10(sp, *(u_int *)arg, td);
	  break;

     case ISCSISETOPT:
	  opt = (isc_opt_t *)arg;
	  error = FUNC9(sp, opt);
	  break;

     case ISCSISEND:
	  error = FUNC8(dev, arg, td);
	  break;

     case ISCSIRECV:
	  error = FUNC7(dev, arg, td);
	  break;

     case ISCSIPING:
	  error = FUNC6(dev);
	  break;

     case ISCSISTART:
	  error = sp->soc == NULL? ENOTCONN: FUNC5(dev, 1);
	  if(error == 0) {
	       sp->proc = td->td_proc;
	       FUNC0(&sp->clist, FUNC1(sp->oid),
			       OID_AUTO, "pid", CTLFLAG_RD,
			       &sp->proc->p_pid, sizeof(pid_t), "control process id");
	  }
	  break;

     case ISCSIRESTART:
	  error = sp->soc == NULL? ENOTCONN: FUNC5(dev, 2);
	  break;

     case ISCSISTOP:
	  error = FUNC5(dev, 0);
	  break;
	  
     case ISCSISIGNAL: {
	  int sig = *(int *)arg;

	  if(sig < 0 || sig > _SIG_MAXSIG)
	       error = EINVAL;
	  else
		sp->signal = sig;
	  break;
     }

     case ISCSIGETCAM: {
	  iscsi_cam_t *cp = (iscsi_cam_t *)arg;

	  error = FUNC11(sp, cp);
	  break;
     }

     default:
	  error = ENOIOCTL;
     }

     return error;
}