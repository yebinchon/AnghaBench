
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int HDAC_STREAM_RESET (int ,int ,int,int) ;
 int device_get_parent (int ) ;

__attribute__((used)) static void
hdacc_stream_reset(device_t dev, device_t child, int dir, int stream)
{

 HDAC_STREAM_RESET(device_get_parent(dev), dev, dir, stream);
}
