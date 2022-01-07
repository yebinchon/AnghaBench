
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int device_t ;


 int BHND_BUS_GET_INTR_IVEC (int ,int ,int ,int *) ;
 int device_get_parent (int ) ;

__attribute__((used)) static inline int
bhnd_get_intr_ivec(device_t dev, u_int intr, u_int *ivec)
{
 return (BHND_BUS_GET_INTR_IVEC(device_get_parent(dev), dev, intr,
     ivec));
}
