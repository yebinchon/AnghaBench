
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int bus_addr_t ;


 int HDAC_STREAM_START (int ,int ,int,int,int ,int,int) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
hdacc_stream_start(device_t dev, device_t child,
    int dir, int stream, bus_addr_t buf, int blksz, int blkcnt)
{

 return (HDAC_STREAM_START(device_get_parent(dev), dev,
     dir, stream, buf, blksz, blkcnt));
}
