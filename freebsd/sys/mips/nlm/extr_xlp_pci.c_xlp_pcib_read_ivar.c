
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENOENT ;



__attribute__((used)) static int
xlp_pcib_read_ivar(device_t dev, device_t child, int which, uintptr_t *result)
{

 switch (which) {
 case 128:
  *result = 0;
  return (0);
 case 129:
  *result = 0;
  return (0);
 }
 return (ENOENT);
}
