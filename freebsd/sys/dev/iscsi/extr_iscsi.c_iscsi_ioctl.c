
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct iscsi_softc {int dummy; } ;
struct iscsi_session_remove {int dummy; } ;
struct iscsi_session_modify {int dummy; } ;
struct iscsi_session_list {int dummy; } ;
struct iscsi_session_add {int dummy; } ;
struct iscsi_daemon_send {int dummy; } ;
struct iscsi_daemon_request {int dummy; } ;
struct iscsi_daemon_receive {int dummy; } ;
struct iscsi_daemon_handoff {int dummy; } ;
struct iscsi_daemon_fail {int dummy; } ;
struct iscsi_daemon_connect {int dummy; } ;
struct cdev {struct iscsi_softc* si_drv1; } ;
typedef scalar_t__ caddr_t ;


 int EINVAL ;
 int iscsi_ioctl_daemon_connect (struct iscsi_softc*,struct iscsi_daemon_connect*) ;
 int iscsi_ioctl_daemon_fail (struct iscsi_softc*,struct iscsi_daemon_fail*) ;
 int iscsi_ioctl_daemon_handoff (struct iscsi_softc*,struct iscsi_daemon_handoff*) ;
 int iscsi_ioctl_daemon_receive (struct iscsi_softc*,struct iscsi_daemon_receive*) ;
 int iscsi_ioctl_daemon_send (struct iscsi_softc*,struct iscsi_daemon_send*) ;
 int iscsi_ioctl_daemon_wait (struct iscsi_softc*,struct iscsi_daemon_request*) ;
 int iscsi_ioctl_session_add (struct iscsi_softc*,struct iscsi_session_add*) ;
 int iscsi_ioctl_session_list (struct iscsi_softc*,struct iscsi_session_list*) ;
 int iscsi_ioctl_session_modify (struct iscsi_softc*,struct iscsi_session_modify*) ;
 int iscsi_ioctl_session_remove (struct iscsi_softc*,struct iscsi_session_remove*) ;

__attribute__((used)) static int
iscsi_ioctl(struct cdev *dev, u_long cmd, caddr_t arg, int mode,
    struct thread *td)
{
 struct iscsi_softc *sc;

 sc = dev->si_drv1;

 switch (cmd) {
 case 132:
  return (iscsi_ioctl_daemon_wait(sc,
      (struct iscsi_daemon_request *)arg));
 case 135:
  return (iscsi_ioctl_daemon_handoff(sc,
      (struct iscsi_daemon_handoff *)arg));
 case 136:
  return (iscsi_ioctl_daemon_fail(sc,
      (struct iscsi_daemon_fail *)arg));
 case 131:
  return (iscsi_ioctl_session_add(sc,
      (struct iscsi_session_add *)arg));
 case 128:
  return (iscsi_ioctl_session_remove(sc,
      (struct iscsi_session_remove *)arg));
 case 130:
  return (iscsi_ioctl_session_list(sc,
      (struct iscsi_session_list *)arg));
 case 129:
  return (iscsi_ioctl_session_modify(sc,
      (struct iscsi_session_modify *)arg));
 default:
  return (EINVAL);
 }
}
