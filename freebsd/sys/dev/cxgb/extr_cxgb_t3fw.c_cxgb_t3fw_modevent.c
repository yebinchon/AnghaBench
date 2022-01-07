
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {int dummy; } ;
typedef int module_t ;


 int EINVAL ;
 int ENXIO ;


 struct firmware* firmware_register (char*,int ,size_t,int ,int *) ;
 int firmware_unregister (char*) ;
 int t3fw ;
 int t3fw_length ;

__attribute__((used)) static int
cxgb_t3fw_modevent(module_t mod, int type, void *unused)
{
 const struct firmware *fp, *parent;
 int error;
 switch (type) {
 case 129:

  fp = firmware_register("cxgb_t3fw", t3fw,
           (size_t)t3fw_length,
           0, ((void*)0));
  if (fp == ((void*)0))
   goto fail_0;
  parent = fp;
  return (0);
 fail_0:
  return (ENXIO);
 case 128:
  error = firmware_unregister("cxgb_t3fw");
  return (error);
 }
 return (EINVAL);
}
