
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_int16_t ;
typedef TYPE_1__* bt3c_softc_p ;
struct TYPE_7__ {int status; int * ith; int dev; } ;


 int NG_BT3C_INFO (int ,char*,int,int) ;
 char* NG_BT3C_NODE_TYPE ;
 int NG_BT3C_WARN (int ,char*,int) ;
 int bt3c_read (TYPE_1__*,int,int) ;
 int bt3c_read_control (TYPE_1__*,int) ;
 int bt3c_receive (TYPE_1__*) ;
 int bt3c_write (TYPE_1__*,int,int) ;
 int bt3c_write_control (TYPE_1__*,int) ;
 int printf (char*,char*) ;
 int swi_sched (int *,int ) ;

__attribute__((used)) static void
bt3c_intr(void *context)
{
 bt3c_softc_p sc = (bt3c_softc_p) context;
 u_int16_t control, status;

 if (sc == ((void*)0) || sc->ith == ((void*)0)) {
  printf("%s: bogus interrupt\n", NG_BT3C_NODE_TYPE);
  return;
 }

 bt3c_read_control(sc, control);
 if ((control & 0x80) == 0)
  return;

 bt3c_read(sc, 0x7001, status);
 NG_BT3C_INFO(sc->dev, "control=%#x, status=%#x\n", control, status);

 if ((status & 0xff) == 0x7f || (status & 0xff) == 0xff) {
  NG_BT3C_WARN(sc->dev, "Strange status=%#x\n", status);
  return;
 }


 if (status & 0x0001)
  bt3c_receive(sc);


 sc->status |= status;
 swi_sched(sc->ith, 0);


 bt3c_write(sc, 0x7001, 0x0000);
 bt3c_write_control(sc, control);
}
