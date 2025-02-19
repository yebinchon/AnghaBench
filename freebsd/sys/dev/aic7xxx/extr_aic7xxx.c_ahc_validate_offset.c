
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct ahc_syncrate {int dummy; } ;
struct ahc_softc {int features; } ;
struct TYPE_4__ {scalar_t__ offset; } ;
struct TYPE_3__ {scalar_t__ offset; } ;
struct ahc_initiator_tinfo {TYPE_2__ goal; TYPE_1__ user; } ;
typedef scalar_t__ role_t ;


 int AHC_ULTRA2 ;
 scalar_t__ MAX_OFFSET_16BIT ;
 scalar_t__ MAX_OFFSET_8BIT ;
 scalar_t__ MAX_OFFSET_ULTRA2 ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 scalar_t__ ROLE_TARGET ;

void
ahc_validate_offset(struct ahc_softc *ahc,
      struct ahc_initiator_tinfo *tinfo,
      struct ahc_syncrate *syncrate,
      u_int *offset, int wide, role_t role)
{
 u_int maxoffset;


 if (syncrate == ((void*)0)) {
  maxoffset = 0;
 } else if ((ahc->features & AHC_ULTRA2) != 0) {
  maxoffset = MAX_OFFSET_ULTRA2;
 } else {
  if (wide)
   maxoffset = MAX_OFFSET_16BIT;
  else
   maxoffset = MAX_OFFSET_8BIT;
 }
 *offset = MIN(*offset, maxoffset);
 if (tinfo != ((void*)0)) {
  if (role == ROLE_TARGET)
   *offset = MIN(*offset, tinfo->user.offset);
  else
   *offset = MIN(*offset, tinfo->goal.offset);
 }
}
