
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct ads111x_softc {TYPE_1__* chipinfo; int dev; } ;
typedef int rateidx ;
typedef scalar_t__ phandle_t ;
typedef int gainidx ;
typedef int chan ;
struct TYPE_2__ {scalar_t__ numchan; } ;


 scalar_t__ ADS111x_MAX_CHANNELS ;
 scalar_t__ DEFAULT_GAINIDX ;
 scalar_t__ DEFAULT_RATEIDX ;
 scalar_t__ OF_child (scalar_t__) ;
 int OF_getencprop (scalar_t__,char*,scalar_t__*,int) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int ads111x_setup_channel (struct ads111x_softc*,scalar_t__,scalar_t__,scalar_t__) ;
 char* device_get_name (int ) ;
 scalar_t__ device_get_unit (int ) ;
 scalar_t__ ofw_bus_get_node (int ) ;
 scalar_t__ resource_int_value (char const*,scalar_t__,char*,scalar_t__*) ;

__attribute__((used)) static void
ads111x_add_channels(struct ads111x_softc *sc)
{
 const char *name;
 uint32_t chan, gainidx, num_added, rateidx, unit;
 bool found;
 num_added = 0;



 name = device_get_name(sc->dev);
 unit = device_get_unit(sc->dev);
 for (chan = 0; chan < sc->chipinfo->numchan; ++chan) {
  found = 0;
  gainidx = DEFAULT_GAINIDX;
  rateidx = DEFAULT_RATEIDX;
  if (resource_int_value(name, unit, "gain_index", &gainidx) == 0)
   found = 1;
  if (resource_int_value(name, unit, "rate_index", &gainidx) == 0)
   found = 1;
  if (found) {
   ads111x_setup_channel(sc, chan, gainidx, rateidx);
   ++num_added;
  }
 }


 if (num_added > 0)
  return;





 for (chan = 0; chan < sc->chipinfo->numchan; ++chan) {
  gainidx = DEFAULT_GAINIDX;
  rateidx = DEFAULT_RATEIDX;
  ads111x_setup_channel(sc, chan, gainidx, rateidx);
 }
}
