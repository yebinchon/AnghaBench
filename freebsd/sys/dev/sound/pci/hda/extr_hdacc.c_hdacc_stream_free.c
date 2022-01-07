
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdacc_softc {int *** streams; } ;
typedef int device_t ;


 int HDAC_STREAM_FREE (int ,int ,int,int) ;
 int device_get_parent (int ) ;
 struct hdacc_softc* device_get_softc (int ) ;

__attribute__((used)) static void
hdacc_stream_free(device_t dev, device_t child, int dir, int stream)
{
 struct hdacc_softc *codec = device_get_softc(dev);

 codec->streams[dir][stream] = ((void*)0);
 HDAC_STREAM_FREE(device_get_parent(dev), dev, dir, stream);
}
