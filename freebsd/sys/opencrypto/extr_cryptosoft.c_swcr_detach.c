
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int crypto_unregister_all (int ) ;
 int swcr_id ;

__attribute__((used)) static int
swcr_detach(device_t dev)
{
 crypto_unregister_all(swcr_id);
 return 0;
}
