
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int device_t ;


 int HDAC_STREAM_GETPTR (int ,int ,int,int) ;
 int device_get_parent (int ) ;

__attribute__((used)) static uint32_t
hdacc_stream_getptr(device_t dev, device_t child, int dir, int stream)
{

 return (HDAC_STREAM_GETPTR(device_get_parent(dev), dev, dir, stream));
}
