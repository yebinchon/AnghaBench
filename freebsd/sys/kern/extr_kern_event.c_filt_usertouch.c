
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
struct kevent {int fflags; int flags; int data; } ;
struct knote {int kn_hookid; int kn_sfflags; int kn_flags; int kn_fflags; int kn_data; int kn_sdata; struct kevent kn_kevent; } ;




 int EV_CLEAR ;


 int NOTE_FFCTRLMASK ;
 int NOTE_FFLAGSMASK ;


 int NOTE_TRIGGER ;
 int panic (char*,int) ;

__attribute__((used)) static void
filt_usertouch(struct knote *kn, struct kevent *kev, u_long type)
{
 u_int ffctrl;

 switch (type) {
 case 132:
  if (kev->fflags & NOTE_TRIGGER)
   kn->kn_hookid = 1;

  ffctrl = kev->fflags & NOTE_FFCTRLMASK;
  kev->fflags &= NOTE_FFLAGSMASK;
  switch (ffctrl) {
  case 129:
   break;

  case 131:
   kn->kn_sfflags &= kev->fflags;
   break;

  case 128:
   kn->kn_sfflags |= kev->fflags;
   break;

  case 130:
   kn->kn_sfflags = kev->fflags;
   break;

  default:

   break;
  }
  kn->kn_sdata = kev->data;
  if (kev->flags & EV_CLEAR) {
   kn->kn_hookid = 0;
   kn->kn_data = 0;
   kn->kn_fflags = 0;
  }
  break;

        case 133:
  *kev = kn->kn_kevent;
  kev->fflags = kn->kn_sfflags;
  kev->data = kn->kn_sdata;
  if (kn->kn_flags & EV_CLEAR) {
   kn->kn_hookid = 0;
   kn->kn_data = 0;
   kn->kn_fflags = 0;
  }
  break;

 default:
  panic("filt_usertouch() - invalid type (%ld)", type);
  break;
 }
}
