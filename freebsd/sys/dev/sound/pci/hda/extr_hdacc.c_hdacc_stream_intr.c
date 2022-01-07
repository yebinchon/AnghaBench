
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdacc_softc {int *** streams; } ;
typedef int * device_t ;


 int HDAC_STREAM_INTR (int *,int,int) ;
 struct hdacc_softc* device_get_softc (int *) ;

__attribute__((used)) static void
hdacc_stream_intr(device_t dev, int dir, int stream)
{
 struct hdacc_softc *codec = device_get_softc(dev);
 device_t child;

 if ((child = codec->streams[dir][stream]) != ((void*)0))
  HDAC_STREAM_INTR(child, dir, stream);
}
