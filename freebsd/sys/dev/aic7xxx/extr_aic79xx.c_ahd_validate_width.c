
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct ahd_softc {int features; } ;
struct TYPE_4__ {int width; } ;
struct TYPE_3__ {int width; } ;
struct ahd_initiator_tinfo {TYPE_2__ goal; TYPE_1__ user; } ;
typedef scalar_t__ role_t ;


 int AHD_WIDE ;
 int MIN (int ,int) ;
 int MSG_EXT_WDTR_BUS_16_BIT ;

 scalar_t__ ROLE_TARGET ;

void
ahd_validate_width(struct ahd_softc *ahd, struct ahd_initiator_tinfo *tinfo,
     u_int *bus_width, role_t role)
{
 switch (*bus_width) {
 default:
  if (ahd->features & AHD_WIDE) {

   *bus_width = MSG_EXT_WDTR_BUS_16_BIT;
   break;
  }

 case 128:
  *bus_width = 128;
  break;
 }
 if (tinfo != ((void*)0)) {
  if (role == ROLE_TARGET)
   *bus_width = MIN(tinfo->user.width, *bus_width);
  else
   *bus_width = MIN(tinfo->goal.width, *bus_width);
 }
}
