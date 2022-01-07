
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct cs4231_softc {int sc_bufsz; int sc_dev; } ;
struct cs4231_channel {int buffer; struct cs4231_softc* parent; } ;
typedef int kobj_t ;


 int CS4231_MAX_BLK_SZ ;
 int device_printf (int ,char*,int,int) ;
 int sndbuf_resize (int ,int,int) ;

__attribute__((used)) static u_int32_t
cs4231_chan_setblocksize(kobj_t obj, void *data, u_int32_t blocksize)
{
 struct cs4231_softc *sc;
 struct cs4231_channel *ch;
 int nblks, error;

 ch = data;
 sc = ch->parent;

 if (blocksize > CS4231_MAX_BLK_SZ)
  blocksize = CS4231_MAX_BLK_SZ;
 nblks = sc->sc_bufsz / blocksize;
 error = sndbuf_resize(ch->buffer, nblks, blocksize);
 if (error != 0)
  device_printf(sc->sc_dev,
      "unable to block size, blksz = %d, error = %d\n",
      blocksize, error);

        return (blocksize);
}
