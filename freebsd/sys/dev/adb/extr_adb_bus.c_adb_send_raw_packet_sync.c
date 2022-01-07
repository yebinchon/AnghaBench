
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_char ;
struct adb_softc {int sync_packet; int packet_reply; int syncreg; int parent; } ;
typedef int device_t ;


 int ADB_HB_SEND_RAW_PACKET (int ,int,int,int*,int) ;
 int atomic_cmpset_int (int*,int,int) ;
 int atomic_fetchadd_int (int*,int ) ;
 int atomic_set_int (int*,int) ;
 struct adb_softc* device_get_softc (int ) ;
 int hz ;
 int memcpy (int*,int ,int) ;
 int tsleep (struct adb_softc*,int ,char*,int) ;

__attribute__((used)) static int
adb_send_raw_packet_sync(device_t dev, uint8_t to, uint8_t command,
    uint8_t reg, int len, u_char *data, u_char *reply)
{
 u_char command_byte = 0;
 struct adb_softc *sc;
 int result = -1;
 int i = 1;

 sc = device_get_softc(dev);

 command_byte |= to << 4;
 command_byte |= command << 2;
 command_byte |= reg;


 while (!atomic_cmpset_int(&sc->sync_packet, 0xffff, command_byte))
  tsleep(sc, 0, "ADB sync", hz/10);

 sc->packet_reply = 0;
 sc->sync_packet = command_byte;

 ADB_HB_SEND_RAW_PACKET(sc->parent, command_byte, len, data, 1);

 while (!atomic_fetchadd_int(&sc->packet_reply,0)) {




  if (i % 40 == 0)
   ADB_HB_SEND_RAW_PACKET(sc->parent, command_byte,
       len, data, 1);

  tsleep(sc, 0, "ADB sync", hz/10);
  i++;
 }

 result = sc->packet_reply - 1;

 if (reply != ((void*)0) && result > 0)
  memcpy(reply,sc->syncreg,result);


 sc->packet_reply = 0;





 atomic_set_int(&sc->sync_packet, 0xffff);

 return (result);
}
