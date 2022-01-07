
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* provider_p ;
typedef int profile_t ;
typedef int int32_t ;
struct TYPE_7__ {int handle; int fd; int * profile; } ;


 int TAILQ_INSERT_AFTER (int *,TYPE_1__*,TYPE_1__*,int ) ;
 int TAILQ_INSERT_HEAD (int *,TYPE_1__*,int ) ;
 TYPE_1__* calloc (int,int) ;
 int change_state ;
 int free (TYPE_1__*) ;
 int provider_next ;
 int providers ;

int32_t
provider_register_sd(int32_t fd)
{
 extern profile_t sd_profile_descriptor;
 extern profile_t bgd_profile_descriptor;

 provider_p sd = calloc(1, sizeof(*sd));
 provider_p bgd = calloc(1, sizeof(*bgd));

 if (sd == ((void*)0) || bgd == ((void*)0)) {
  if (sd != ((void*)0))
   free(sd);

  if (bgd != ((void*)0))
   free(bgd);

  return (-1);
 }

 sd->profile = &sd_profile_descriptor;
 bgd->handle = 0;
 sd->fd = fd;
 TAILQ_INSERT_HEAD(&providers, sd, provider_next);

 bgd->profile = &bgd_profile_descriptor;
 bgd->handle = 1;
 sd->fd = fd;
 TAILQ_INSERT_AFTER(&providers, sd, bgd, provider_next);

 change_state ++;

 return (0);
}
