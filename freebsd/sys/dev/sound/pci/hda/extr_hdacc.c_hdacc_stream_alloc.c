
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hdacc_softc {int ** streams; } ;
typedef int device_t ;


 int HDAC_STREAM_ALLOC (int ,int ,int,int,int,int **) ;
 int device_get_parent (int ) ;
 struct hdacc_softc* device_get_softc (int ) ;

__attribute__((used)) static int
hdacc_stream_alloc(device_t dev, device_t child, int dir, int format,
    int stripe, uint32_t **dmapos)
{
 struct hdacc_softc *codec = device_get_softc(dev);
 int stream;

 stream = HDAC_STREAM_ALLOC(device_get_parent(dev), dev,
     dir, format, stripe, dmapos);
 if (stream > 0)
  codec->streams[dir][stream] = child;
 return (stream);
}
