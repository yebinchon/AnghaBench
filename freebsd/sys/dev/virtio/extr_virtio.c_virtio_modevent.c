
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EOPNOTSUPP ;





__attribute__((used)) static int
virtio_modevent(module_t mod, int type, void *unused)
{
 int error;

 switch (type) {
 case 131:
 case 130:
 case 128:
 case 129:
  error = 0;
  break;
 default:
  error = EOPNOTSUPP;
  break;
 }

 return (error);
}
