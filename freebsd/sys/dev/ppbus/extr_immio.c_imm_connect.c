
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
 scalar_t__ PPB_IN_EPP_MODE (int ) ;
 int VP0_ECONNECT ;
 scalar_t__ bootverbose ;
 int cpp_microseq ;
 int device_get_parent (int ) ;
 int device_printf (int ,char*,char,char,char) ;
 int ppb_MS_init_msq (int ,int,int ,int,...) ;
 int ppb_MS_microseq (int ,int ,int ,int*) ;
 int ppb_request_bus (int ,int ,int) ;

__attribute__((used)) static int
imm_connect(struct vpoio_data *vpo, int how, int *disconnected, int request_bus)
{
 DECLARE_CPP_MICROSEQ;

 device_t ppbus = device_get_parent(vpo->vpo_dev);
 char s1, s2, s3;
 int error;
 int ret;


 if (disconnected)
  *disconnected = 0;

 if (request_bus)
  if ((error = ppb_request_bus(ppbus, vpo->vpo_dev, how)))
   return (error);

 ppb_MS_init_msq(cpp_microseq, 3, CPP_S1, (void *)&s1,
   CPP_S2, (void *)&s2, CPP_S3, (void *)&s3);


 ppb_MS_init_msq(cpp_microseq, 1, CPP_PARAM, 0xe0);
 ppb_MS_microseq(ppbus, vpo->vpo_dev, cpp_microseq, &ret);


 ppb_MS_init_msq(cpp_microseq, 1, CPP_PARAM, 0x30);
 ppb_MS_microseq(ppbus, vpo->vpo_dev, cpp_microseq, &ret);

 if (PPB_IN_EPP_MODE(ppbus))
  ppb_MS_init_msq(cpp_microseq, 1, CPP_PARAM, 0x28);
 else
  ppb_MS_init_msq(cpp_microseq, 1, CPP_PARAM, 0xe0);

 ppb_MS_microseq(ppbus, vpo->vpo_dev, cpp_microseq, &ret);

 if ((s1 != (char)0xb8 || s2 != (char)0x18 || s3 != (char)0x30)) {
  if (bootverbose)
   device_printf(vpo->vpo_dev,
       "(connect) s1=0x%x s2=0x%x, s3=0x%x\n",
       s1 & 0xff, s2 & 0xff, s3 & 0xff);
  if (disconnected)
   *disconnected = VP0_ECONNECT;
 }

 return (0);
}
