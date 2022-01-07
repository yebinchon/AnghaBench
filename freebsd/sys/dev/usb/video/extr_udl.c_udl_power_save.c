
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udl_softc {int sc_power_save; } ;
struct udl_cmd_buf {int dummy; } ;


 int DPRINTF (char*,char*) ;
 int EAGAIN ;
 int UDL_REG_SCREEN ;
 int UDL_REG_SCREEN_OFF ;
 int UDL_REG_SCREEN_ON ;
 int UDL_REG_SYNC ;
 struct udl_cmd_buf* udl_cmd_buf_alloc (struct udl_softc*,int) ;
 int udl_cmd_buf_send (struct udl_softc*,struct udl_cmd_buf*) ;
 int udl_cmd_write_reg_1 (struct udl_cmd_buf*,int ,int) ;

__attribute__((used)) static int
udl_power_save(struct udl_softc *sc, int on, int flags)
{
 struct udl_cmd_buf *cb;


 cb = udl_cmd_buf_alloc(sc, flags);
 if (cb == ((void*)0))
  return (EAGAIN);

 DPRINTF("screen %s\n", on ? "ON" : "OFF");

 sc->sc_power_save = on ? 0 : 1;

 if (on)
  udl_cmd_write_reg_1(cb, UDL_REG_SCREEN, UDL_REG_SCREEN_ON);
 else
  udl_cmd_write_reg_1(cb, UDL_REG_SCREEN, UDL_REG_SCREEN_OFF);

 udl_cmd_write_reg_1(cb, UDL_REG_SYNC, 0xff);
 udl_cmd_buf_send(sc, cb);
 return (0);
}
