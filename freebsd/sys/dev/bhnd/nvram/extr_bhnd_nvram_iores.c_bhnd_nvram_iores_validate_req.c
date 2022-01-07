
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_iores {size_t size; size_t bus_width; } ;


 int EFAULT ;
 int ENXIO ;
 size_t ummin (size_t,size_t) ;

__attribute__((used)) static int
bhnd_nvram_iores_validate_req(struct bhnd_nvram_iores *iores, size_t offset,
    size_t *nbytes)
{

 if (offset > iores->size)
  return (ENXIO);


 if (offset == iores->size) {
  *nbytes = 0;
  return (0);
 }


 if (offset % iores->bus_width != 0)
  return (EFAULT);


 *nbytes = ummin(*nbytes, iores->size - offset);
 if (*nbytes < iores->bus_width && *nbytes % iores->bus_width != 0)
  return (EFAULT);

 return (0);
}
