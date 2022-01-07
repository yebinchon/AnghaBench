
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ugold_softc {int sc_report_id; int * sc_iface_index; int sc_mtx; int sc_udev; } ;


 int UHID_OUTPUT_REPORT ;
 int usbd_req_set_report (int ,int *,int *,int,int ,int ,int ) ;

__attribute__((used)) static int
ugold_issue_cmd(struct ugold_softc *sc, uint8_t *cmd, int len)
{
 return (usbd_req_set_report(sc->sc_udev, &sc->sc_mtx, cmd, len,
     sc->sc_iface_index[1], UHID_OUTPUT_REPORT, sc->sc_report_id));
}
