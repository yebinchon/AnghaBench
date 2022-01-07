
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef TYPE_1__* provider_p ;
typedef int profile_p ;
typedef int int32_t ;
typedef int const* bdaddr_p ;
struct TYPE_6__ {int handle; int fd; int bdaddr; int * data; int profile; } ;


 int TAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 TYPE_1__* calloc (int,int) ;
 int change_state ;
 int free (TYPE_1__*) ;
 int handle ;
 int * malloc (int) ;
 int memcpy (int *,int const* const,int) ;
 int provider_next ;
 int providers ;

provider_p
provider_register(profile_p const profile, bdaddr_p const bdaddr, int32_t fd,
 uint8_t const *data, uint32_t datalen)
{
 provider_p provider = calloc(1, sizeof(*provider));

 if (provider != ((void*)0)) {
  provider->data = malloc(datalen);
  if (provider->data != ((void*)0)) {
   provider->profile = profile;
   memcpy(provider->data, data, datalen);






   if (++ handle <= 1)
    handle = 2;

   provider->handle = handle;

   memcpy(&provider->bdaddr, bdaddr,
    sizeof(provider->bdaddr));
   provider->fd = fd;

   TAILQ_INSERT_TAIL(&providers, provider, provider_next);
   change_state ++;
  } else {
   free(provider);
   provider = ((void*)0);
  }
 }

 return (provider);
}
