
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_softc {int dummy; } ;


 int ISCSI_DEBUG (char*) ;
 int iscsi_terminate_sessions (struct iscsi_softc*) ;
 int * panicstr ;

__attribute__((used)) static void
iscsi_shutdown_post(struct iscsi_softc *sc)
{

 if (panicstr == ((void*)0)) {
  ISCSI_DEBUG("removing all sessions due to shutdown");
  iscsi_terminate_sessions(sc);
 }
}
