
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef struct dtsec_softc* t_Handle ;
struct mbuf {int dummy; } ;
struct dtsec_softc {TYPE_1__* sc_ifnet; } ;
typedef int e_RxStoreResponse ;
struct TYPE_3__ {int (* if_input ) (TYPE_1__*,struct mbuf*) ;} ;


 int XX_FreeSmart (int *) ;
 int e_RX_STORE_RESPONSE_CONTINUE ;
 struct mbuf* m_devget (int *,int ,int ,TYPE_1__*,int *) ;
 int stub1 (TYPE_1__*,struct mbuf*) ;

__attribute__((used)) static e_RxStoreResponse
dtsec_im_fm_port_rx_callback(t_Handle app, uint8_t *data, uint16_t length,
    uint16_t status, uint8_t position, t_Handle buf_context)
{
 struct dtsec_softc *sc;
 struct mbuf *m;


 sc = app;

 m = m_devget(data, length, 0, sc->sc_ifnet, ((void*)0));
 if (m)
  (*sc->sc_ifnet->if_input)(sc->sc_ifnet, m);

 XX_FreeSmart(data);

 return (e_RX_STORE_RESPONSE_CONTINUE);
}
