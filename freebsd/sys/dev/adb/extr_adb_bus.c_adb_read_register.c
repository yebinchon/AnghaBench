
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct adb_softc {int sc_dev; } ;
struct adb_devinfo {int address; } ;
typedef int device_t ;


 int ADB_COMMAND_TALK ;
 size_t adb_send_raw_packet_sync (int ,int ,int ,int ,int ,int *,void*) ;
 struct adb_devinfo* device_get_ivars (int ) ;
 int device_get_parent (int ) ;
 struct adb_softc* device_get_softc (int ) ;

size_t
adb_read_register(device_t dev, u_char reg, void *data)
{
 struct adb_softc *sc;
 struct adb_devinfo *dinfo;
 size_t result;

 dinfo = device_get_ivars(dev);
 sc = device_get_softc(device_get_parent(dev));

 result = adb_send_raw_packet_sync(sc->sc_dev,dinfo->address,
            ADB_COMMAND_TALK, reg, 0, ((void*)0), data);

 return (result);
}
