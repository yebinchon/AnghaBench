
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
typedef int mkimg_uuid_t ;
typedef int gen ;


 int memcpy (int *,int *,int) ;
 int osdep_uuidgen (int *) ;
 int unit_testing ;

void
mkimg_uuid(mkimg_uuid_t *uuid)
{
 static uint8_t gen[sizeof(mkimg_uuid_t)];
 u_int i;

 if (!unit_testing) {
  osdep_uuidgen(uuid);
  return;
 }

 for (i = 0; i < sizeof(gen); i++)
  gen[i]++;
 memcpy(uuid, gen, sizeof(*uuid));
}
