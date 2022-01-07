
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
 int t3c_protocol_sram ;
 int t3c_protocol_sram_length ;

__attribute__((used)) static int
cxgb_t3c_protocol_sram_modevent(module_t mod, int type, void *unused)
{
 const struct firmware *fp, *parent;
 int error;
 switch (type) {
 case 129:

  fp = firmware_register("cxgb_t3c_protocol_sram", t3c_protocol_sram,
           (size_t)t3c_protocol_sram_length,
           0, ((void*)0));
  if (fp == ((void*)0))
   goto fail_0;
  parent = fp;
  return (0);
 fail_0:
  return (ENXIO);
 case 128:
  error = firmware_unregister("cxgb_t3c_protocol_sram");
  return (error);
 }
 return (EINVAL);
}
