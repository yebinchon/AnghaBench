
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int u_int ;
typedef void* device_t ;


 int UINT8_MAX ;
 int WD_INTERVAL ;
 int WD_TO_1SEC ;
 scalar_t__ bootverbose ;
 int device_printf (void*,char*,int) ;
 int superio_read (void*,int) ;
 int superio_write (void*,int,int) ;

__attribute__((used)) static void
wd_func(void *priv, u_int cmd, int *error)
{
 device_t dev = priv;
 uint64_t timeout;
 uint8_t val;


 if (cmd != 0) {
  cmd &= WD_INTERVAL;
  if (cmd >= WD_TO_1SEC)
   timeout = (uint64_t)1 << (cmd - WD_TO_1SEC);
  else
   timeout = 1;
  if (timeout <= UINT8_MAX) {
   val = timeout;
   *error = 0;
  } else {

   val = 0;
  }
 } else {
  val = 0;
 }




 superio_write(dev, 0x73, val);
 if (superio_read(dev, 0x73) != val)
  superio_write(dev, 0x73, val);
}
