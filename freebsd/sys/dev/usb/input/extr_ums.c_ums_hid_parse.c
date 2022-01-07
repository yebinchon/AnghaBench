
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct ums_softc {size_t sc_buttons; struct ums_info* sc_info; } ;
struct TYPE_2__ {int pos; } ;
struct ums_info {int sc_flags; size_t sc_buttons; int sc_iid_x; int * sc_iid_btn; TYPE_1__* sc_loc_btn; int sc_iid_t; TYPE_1__ sc_loc_t; int sc_iid_z; TYPE_1__ sc_loc_z; int sc_iid_w; TYPE_1__ sc_loc_w; int sc_iid_y; TYPE_1__ sc_loc_y; TYPE_1__ sc_loc_x; } ;
typedef int device_t ;


 int HID_USAGE2 (int ,size_t) ;
 size_t HUC_AC_PAN ;
 size_t HUG_TWHEEL ;
 size_t HUG_WHEEL ;
 size_t HUG_X ;
 size_t HUG_Y ;
 size_t HUG_Z ;
 int HUP_BUTTON ;
 int HUP_CONSUMER ;
 int HUP_GENERIC_DESKTOP ;
 int HUP_MICROSOFT ;
 int MOUSE_FLAGS ;
 int MOUSE_FLAGS_MASK ;
 size_t UMS_BUTTON_MAX ;
 int UMS_FLAG_T_AXIS ;
 int UMS_FLAG_W_AXIS ;
 int UMS_FLAG_X_AXIS ;
 int UMS_FLAG_Y_AXIS ;
 int UMS_FLAG_Z_AXIS ;
 int device_printf (int ,char*,size_t,char*,char*,char*,char*,char*,int ) ;
 int hid_input ;
 scalar_t__ hid_locate (size_t const*,int ,int ,int ,size_t,TYPE_1__*,int*,int *) ;

__attribute__((used)) static void
ums_hid_parse(struct ums_softc *sc, device_t dev, const uint8_t *buf,
    uint16_t len, uint8_t index)
{
 struct ums_info *info = &sc->sc_info[index];
 uint32_t flags;
 uint8_t i;
 uint8_t j;

 if (hid_locate(buf, len, HID_USAGE2(HUP_GENERIC_DESKTOP, HUG_X),
     hid_input, index, &info->sc_loc_x, &flags, &info->sc_iid_x)) {

  if ((flags & MOUSE_FLAGS_MASK) == MOUSE_FLAGS) {
   info->sc_flags |= UMS_FLAG_X_AXIS;
  }
 }
 if (hid_locate(buf, len, HID_USAGE2(HUP_GENERIC_DESKTOP, HUG_Y),
     hid_input, index, &info->sc_loc_y, &flags, &info->sc_iid_y)) {

  if ((flags & MOUSE_FLAGS_MASK) == MOUSE_FLAGS) {
   info->sc_flags |= UMS_FLAG_Y_AXIS;
  }
 }

 if (hid_locate(buf, len, HID_USAGE2(HUP_GENERIC_DESKTOP,
     HUG_WHEEL), hid_input, index, &info->sc_loc_z, &flags,
     &info->sc_iid_z) ||
     hid_locate(buf, len, HID_USAGE2(HUP_GENERIC_DESKTOP,
     HUG_TWHEEL), hid_input, index, &info->sc_loc_z, &flags,
     &info->sc_iid_z)) {
  if ((flags & MOUSE_FLAGS_MASK) == MOUSE_FLAGS) {
   info->sc_flags |= UMS_FLAG_Z_AXIS;
  }




  if (hid_locate(buf, len, HID_USAGE2(HUP_GENERIC_DESKTOP,
      HUG_Z), hid_input, index, &info->sc_loc_w, &flags,
      &info->sc_iid_w)) {

   if ((flags & MOUSE_FLAGS_MASK) == MOUSE_FLAGS) {
    info->sc_flags |= UMS_FLAG_W_AXIS;
   }
  }
 } else if (hid_locate(buf, len, HID_USAGE2(HUP_GENERIC_DESKTOP,
     HUG_Z), hid_input, index, &info->sc_loc_z, &flags,
     &info->sc_iid_z)) {

  if ((flags & MOUSE_FLAGS_MASK) == MOUSE_FLAGS) {
   info->sc_flags |= UMS_FLAG_Z_AXIS;
  }
 }







 if (hid_locate(buf, len, HID_USAGE2(HUP_GENERIC_DESKTOP,
     HUG_TWHEEL), hid_input, index, &info->sc_loc_t,
     &flags, &info->sc_iid_t)) {

  info->sc_loc_t.pos += 8;

  if ((flags & MOUSE_FLAGS_MASK) == MOUSE_FLAGS) {
   info->sc_flags |= UMS_FLAG_T_AXIS;
  }
 } else if (hid_locate(buf, len, HID_USAGE2(HUP_CONSUMER,
  HUC_AC_PAN), hid_input, index, &info->sc_loc_t,
  &flags, &info->sc_iid_t)) {

  if ((flags & MOUSE_FLAGS_MASK) == MOUSE_FLAGS)
   info->sc_flags |= UMS_FLAG_T_AXIS;
 }


 for (i = 0; i < UMS_BUTTON_MAX; i++) {
  if (!hid_locate(buf, len, HID_USAGE2(HUP_BUTTON, (i + 1)),
      hid_input, index, &info->sc_loc_btn[i], ((void*)0),
      &info->sc_iid_btn[i])) {
   break;
  }
 }



 for (j = 0; (i < UMS_BUTTON_MAX) && (j < 2); i++, j++) {
  if (!hid_locate(buf, len, HID_USAGE2(HUP_MICROSOFT, (j + 1)),
      hid_input, index, &info->sc_loc_btn[i], ((void*)0),
      &info->sc_iid_btn[i])) {
   break;
  }
 }

 info->sc_buttons = i;

 if (i > sc->sc_buttons)
  sc->sc_buttons = i;

 if (info->sc_flags == 0)
  return;


 device_printf(dev, "%d buttons and [%s%s%s%s%s] coordinates ID=%u\n",
     (info->sc_buttons),
     (info->sc_flags & UMS_FLAG_X_AXIS) ? "X" : "",
     (info->sc_flags & UMS_FLAG_Y_AXIS) ? "Y" : "",
     (info->sc_flags & UMS_FLAG_Z_AXIS) ? "Z" : "",
     (info->sc_flags & UMS_FLAG_T_AXIS) ? "T" : "",
     (info->sc_flags & UMS_FLAG_W_AXIS) ? "W" : "",
     info->sc_iid_x);
}
