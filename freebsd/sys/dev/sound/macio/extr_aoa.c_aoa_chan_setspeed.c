
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int kobj_t ;


 int DPRINTF (char*) ;

__attribute__((used)) static u_int32_t
aoa_chan_setspeed(kobj_t obj, void *data, u_int32_t speed)
{
 DPRINTF(("aoa_chan_setspeed: speed = %u\n", speed));

 return (44100);
}
