
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct adb_softc {int sync_packet; int ** children; int packet_reply; int * syncreg; TYPE_1__* devinfo; } ;
typedef int device_t ;
struct TYPE_2__ {int handler_id; int register3; } ;


 int ADB_COMMAND_TALK ;
 int ADB_RECEIVE_PACKET (int *,int,int,int,int,int*) ;
 int atomic_store_rel_int (int *,int) ;
 struct adb_softc* device_get_softc (int ) ;
 int memcpy (int *,int*,int) ;
 int wakeup (struct adb_softc*) ;

u_int
adb_receive_raw_packet(device_t dev, u_char status, u_char command, int len,
    u_char *data)
{
 struct adb_softc *sc = device_get_softc(dev);
 u_char addr = command >> 4;

 if (len > 0 && (command & 0x0f) == ((ADB_COMMAND_TALK << 2) | 3)) {
  memcpy(&sc->devinfo[addr].register3,data,2);
  sc->devinfo[addr].handler_id = data[1];
 }

 if (sc->sync_packet == command) {
  memcpy(sc->syncreg,data,(len > 8) ? 8 : len);
  atomic_store_rel_int(&sc->packet_reply,len + 1);
  wakeup(sc);
 }

 if (sc->children[addr] != ((void*)0)) {
  ADB_RECEIVE_PACKET(sc->children[addr],status,
   (command & 0x0f) >> 2,command & 0x03,len,data);
 }

 return (0);
}
