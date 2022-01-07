
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct filecaps {int * fc_ioctls; } ;


 int bzero (struct filecaps*,int) ;

__attribute__((used)) static u_long *
filecaps_free_prep(struct filecaps *fcaps)
{
 u_long *ioctls;

 ioctls = fcaps->fc_ioctls;
 bzero(fcaps, sizeof(*fcaps));
 return (ioctls);
}
