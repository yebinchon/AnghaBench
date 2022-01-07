
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {int dummy; } ;
typedef int module_t ;


 int EINVAL ;
 int ENXIO ;


 int ethp_z8e ;
 int ethp_z8e_length ;
 int ethp_z8e_uncompressed_length ;
 struct firmware* firmware_register (char*,int ,size_t,int ,int *) ;
 int firmware_unregister (char*) ;

__attribute__((used)) static int
mxge_ethp_z8e_fw_modevent(module_t mod, int type, void *unused)
{
 const struct firmware *fp, *parent;
 int error;
 switch (type) {
 case 129:

  fp = firmware_register("mxge_ethp_z8e", ethp_z8e,
           (size_t)ethp_z8e_length,
           ethp_z8e_uncompressed_length, ((void*)0));
  if (fp == ((void*)0))
   goto fail_0;
  parent = fp;
  return (0);
 fail_0:
  return (ENXIO);
 case 128:
  error = firmware_unregister("mxge_ethp_z8e");
  return (error);
 }
 return (EINVAL);
}
