
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx_softc {scalar_t__ mlx_lastevent; scalar_t__ mlx_currevent; int mlx_flags; int mlx_dev; } ;
struct mlx_eventlog_entry {int el_type; int el_sensekey; int el_asc; size_t el_asq; int el_csi; int el_information; int el_target; int el_channel; } ;
struct mlx_command {scalar_t__ mc_status; scalar_t__ mc_data; struct mlx_softc* mc_sc; } ;


 int MLX_EVENTLOG_BUSY ;
 int MLX_IO_ASSERT_LOCKED (struct mlx_softc*) ;

 int M_DEVBUF ;
 int debug_called (int) ;
 int device_printf (int ,char*,int,...) ;
 int free (scalar_t__,int ) ;
 int mlx_diagnose_command (struct mlx_command*) ;
 int mlx_periodic_eventlog_poll (struct mlx_softc*) ;
 int mlx_releasecmd (struct mlx_command*) ;
 char** mlx_sense_messages ;
 size_t nitems (char**) ;

__attribute__((used)) static void
mlx_periodic_eventlog_respond(struct mlx_command *mc)
{
    struct mlx_softc *sc = mc->mc_sc;
    struct mlx_eventlog_entry *el = (struct mlx_eventlog_entry *)mc->mc_data;
    char *reason;

    debug_called(1);
    MLX_IO_ASSERT_LOCKED(sc);

    sc->mlx_lastevent++;
    if (mc->mc_status == 0) {


 switch(el->el_type) {




 case 128:

     if ((el->el_sensekey == 9) &&
  (el->el_asc == 0x80)) {
  if (el->el_asq < nitems(mlx_sense_messages)) {
      reason = mlx_sense_messages[el->el_asq];
  } else {
      reason = "for unknown reason";
  }
  device_printf(sc->mlx_dev, "physical drive %d:%d killed %s\n",
         el->el_channel, el->el_target, reason);
     }

     if ((el->el_sensekey == 6) && (el->el_asc == 0x29)) {
  device_printf(sc->mlx_dev, "physical drive %d:%d reset\n",
         el->el_channel, el->el_target);
     }

     if (!((el->el_sensekey == 0) ||
    ((el->el_sensekey == 2) &&
     (el->el_asc == 0x04) &&
     ((el->el_asq == 0x01) ||
      (el->el_asq == 0x02))))) {
  device_printf(sc->mlx_dev, "physical drive %d:%d error log: sense = %d asc = %x asq = %x\n",
         el->el_channel, el->el_target, el->el_sensekey, el->el_asc, el->el_asq);
  device_printf(sc->mlx_dev, "  info %4D csi %4D\n", el->el_information, ":", el->el_csi, ":");
     }
     break;

 default:
     device_printf(sc->mlx_dev, "unknown log message type 0x%x\n", el->el_type);
     break;
 }
    } else {
 device_printf(sc->mlx_dev, "error reading message log - %s\n", mlx_diagnose_command(mc));

 sc->mlx_lastevent = sc->mlx_currevent;
    }


    free(mc->mc_data, M_DEVBUF);
    mlx_releasecmd(mc);


    if (sc->mlx_lastevent != sc->mlx_currevent) {
 mlx_periodic_eventlog_poll(sc);
    } else {

 sc->mlx_flags &= ~MLX_EVENTLOG_BUSY;
    }
}
