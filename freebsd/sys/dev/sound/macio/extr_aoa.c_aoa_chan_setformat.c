
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
typedef int kobj_t ;


 int AFMT_S16_BE ;
 int DPRINTF (char*) ;
 int EINVAL ;
 scalar_t__ SND_FORMAT (int ,int,int ) ;

__attribute__((used)) static int
aoa_chan_setformat(kobj_t obj, void *data, u_int32_t format)
{
 DPRINTF(("aoa_chan_setformat: format = %u\n", format));

 if (format != SND_FORMAT(AFMT_S16_BE, 2, 0))
  return (EINVAL);

 return (0);
}
