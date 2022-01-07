
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hdac_softc {int mem; } ;
typedef int device_t ;


 int HDAC_READ_4 (int *,scalar_t__) ;
 scalar_t__ HDAC_SDLPIB ;
 int KASSERT (int,char*) ;
 struct hdac_softc* device_get_softc (int ) ;
 int hdac_find_stream (struct hdac_softc*,int,int) ;

__attribute__((used)) static uint32_t
hdac_stream_getptr(device_t dev, device_t child, int dir, int stream)
{
 struct hdac_softc *sc = device_get_softc(dev);
 int ss, off;

 ss = hdac_find_stream(sc, dir, stream);
 KASSERT(ss >= 0,
     ("Reset for not allocated stream (%d/%d)\n", dir, stream));

 off = ss << 5;
 return (HDAC_READ_4(&sc->mem, off + HDAC_SDLPIB));
}
