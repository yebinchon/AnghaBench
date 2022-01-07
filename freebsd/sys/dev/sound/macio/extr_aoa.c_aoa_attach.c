
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aoa_softc {int sc_dev; } ;
typedef int status ;
typedef int device_t ;


 int AOA_BUFFER_SIZE ;
 int DPRINTF (char*) ;
 int ENXIO ;
 int PCMDIR_PLAY ;
 int SND_STATUSLEN ;
 int aoa_chan_class ;
 char* ofw_bus_get_name (int ) ;
 int pcm_addchan (int ,int ,int *,struct aoa_softc*) ;
 int pcm_getbuffersize (int ,int ,int ,int ) ;
 scalar_t__ pcm_register (int ,struct aoa_softc*,int,int ) ;
 int pcm_setstatus (int ,char*) ;
 int snprintf (char*,int,char*,char*) ;

int
aoa_attach(void *xsc)
{
 char status[SND_STATUSLEN];
 struct aoa_softc *sc;
 device_t self;
 int err;

 sc = xsc;
 self = sc->sc_dev;

 if (pcm_register(self, sc, 1, 0))
  return (ENXIO);

 err = pcm_getbuffersize(self, AOA_BUFFER_SIZE, AOA_BUFFER_SIZE,
     AOA_BUFFER_SIZE);
 DPRINTF(("pcm_getbuffersize returned %d\n", err));

 pcm_addchan(self, PCMDIR_PLAY, &aoa_chan_class, sc);

 snprintf(status, sizeof(status), "at %s", ofw_bus_get_name(self));
 pcm_setstatus(self, status);

 return (0);
}
