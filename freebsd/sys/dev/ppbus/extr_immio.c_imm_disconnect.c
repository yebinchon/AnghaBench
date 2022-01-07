
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpoio_data {int vpo_dev; } ;
typedef int device_t ;


 int CPP_PARAM ;
 int CPP_S1 ;
 int CPP_S2 ;
 int CPP_S3 ;
 int DECLARE_CPP_MICROSEQ ;
 int VP0_ECONNECT ;
 scalar_t__ bootverbose ;
 int cpp_microseq ;
 int device_get_parent (int ) ;
 int device_printf (int ,char*,char,char,char) ;
 int ppb_MS_init_msq (int ,int,int ,void*,int ,void*,int ,void*,int ,int) ;
 int ppb_MS_microseq (int ,int ,int ,int*) ;
 int ppb_release_bus (int ,int ) ;

__attribute__((used)) static int
imm_disconnect(struct vpoio_data *vpo, int *connected, int release_bus)
{
 DECLARE_CPP_MICROSEQ;

 device_t ppbus = device_get_parent(vpo->vpo_dev);
 char s1, s2, s3;
 int ret;


 if (connected)
  *connected = 0;

 ppb_MS_init_msq(cpp_microseq, 4, CPP_S1, (void *)&s1,
   CPP_S2, (void *)&s2, CPP_S3, (void *)&s3,
   CPP_PARAM, 0x30);

 ppb_MS_microseq(ppbus, vpo->vpo_dev, cpp_microseq, &ret);

 if ((s1 != (char)0xb8 || s2 != (char)0x18 || s3 != (char)0x38)) {
  if (bootverbose)
   device_printf(vpo->vpo_dev,
       "(disconnect) s1=0x%x s2=0x%x, s3=0x%x\n",
       s1 & 0xff, s2 & 0xff, s3 & 0xff);
  if (connected)
   *connected = VP0_ECONNECT;
 }

 if (release_bus)
  return (ppb_release_bus(ppbus, vpo->vpo_dev));
 else
  return (0);
}
