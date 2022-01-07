
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef TYPE_1__* provider_p ;
typedef int int32_t ;
struct TYPE_3__ {int * data; } ;


 int memcpy (int *,int const*,int ) ;
 scalar_t__ realloc (int *,int ) ;

int32_t
provider_update(provider_p provider, uint8_t const *data, uint32_t datalen)
{
 uint8_t *new_data = (uint8_t *) realloc(provider->data, datalen);

 if (new_data == ((void*)0))
  return (-1);

 memcpy(new_data, data, datalen);
 provider->data = new_data;

 return (0);
}
