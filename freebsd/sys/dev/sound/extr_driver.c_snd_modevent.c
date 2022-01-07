
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int ENOTSUP ;



__attribute__((used)) static int
snd_modevent(module_t mod, int type, void *data)
{

 switch (type) {
 case 129:
  break;
 case 128:
  break;
 default:
  return (ENOTSUP);
  break;
 }
 return 0;
}
