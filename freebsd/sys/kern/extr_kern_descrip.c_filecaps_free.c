
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filecaps {int fc_ioctls; } ;


 int M_FILECAPS ;
 int bzero (struct filecaps*,int) ;
 int free (int ,int ) ;

void
filecaps_free(struct filecaps *fcaps)
{

 free(fcaps->fc_ioctls, M_FILECAPS);
 bzero(fcaps, sizeof(*fcaps));
}
