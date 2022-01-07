
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
typedef int u_char ;
struct adb_softc {int sc_dev; } ;
struct adb_devinfo {int register3; scalar_t__ handler_id; int address; } ;
typedef int device_t ;


 int ADB_COMMAND_LISTEN ;
 int ADB_COMMAND_TALK ;
 int adb_send_raw_packet_sync (int ,int ,int ,int,int,int *,int *) ;
 struct adb_devinfo* device_get_ivars (int ) ;
 int device_get_parent (int ) ;
 struct adb_softc* device_get_softc (int ) ;

uint8_t
adb_set_device_handler(device_t dev, uint8_t newhandler)
{
 struct adb_softc *sc;
 struct adb_devinfo *dinfo;
 uint16_t newr3;

 dinfo = device_get_ivars(dev);
 sc = device_get_softc(device_get_parent(dev));

 newr3 = dinfo->register3 & 0xff00;
 newr3 |= (uint16_t)(newhandler);

 adb_send_raw_packet_sync(sc->sc_dev,dinfo->address, ADB_COMMAND_LISTEN,
     3, sizeof(uint16_t), (u_char *)(&newr3), ((void*)0));
 adb_send_raw_packet_sync(sc->sc_dev,dinfo->address,
     ADB_COMMAND_TALK, 3, 0, ((void*)0), ((void*)0));

 return (dinfo->handler_id);
}
