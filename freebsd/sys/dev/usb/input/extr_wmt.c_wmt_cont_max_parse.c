
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct wmt_softc {int dev; TYPE_1__* ai; int cont_max_loc; } ;
struct TYPE_2__ {scalar_t__ max; } ;


 int DPRINTF (char*,int,scalar_t__) ;
 scalar_t__ MAX_MT_SLOTS ;
 size_t WMT_SLOT ;
 int device_printf (int ,char*,scalar_t__) ;
 scalar_t__ hid_get_data_unsigned (int const*,scalar_t__,int *) ;

__attribute__((used)) static void
wmt_cont_max_parse(struct wmt_softc *sc, const void *r_ptr, uint16_t r_len)
{
 uint32_t cont_count_max;

 cont_count_max = hid_get_data_unsigned((const uint8_t *)r_ptr + 1,
     r_len - 1, &sc->cont_max_loc);
 if (cont_count_max > MAX_MT_SLOTS) {
  DPRINTF("Hardware reported %d contacts while only %d is "
      "supported\n", (int)cont_count_max, MAX_MT_SLOTS);
  cont_count_max = MAX_MT_SLOTS;
 }

 if (cont_count_max > 0 &&
     cont_count_max != sc->ai[WMT_SLOT].max + 1) {
  sc->ai[WMT_SLOT].max = cont_count_max - 1;
  device_printf(sc->dev, "%d feature report contacts",
      cont_count_max);
 }
}
