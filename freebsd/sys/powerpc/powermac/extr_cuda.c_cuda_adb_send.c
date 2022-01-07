
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
typedef int u_char ;
struct cuda_softc {int dummy; } ;
typedef int device_t ;


 int CUDA_ADB ;
 int cuda_send (struct cuda_softc*,int ,int,int *) ;
 struct cuda_softc* device_get_softc (int ) ;

__attribute__((used)) static u_int
cuda_adb_send(device_t dev, u_char command_byte, int len, u_char *data,
    u_char poll)
{
 struct cuda_softc *sc = device_get_softc(dev);
 uint8_t packet[16];
 int i;


 packet[0] = CUDA_ADB;
 packet[1] = command_byte;
 for (i = 0; i < len; i++)
  packet[i + 2] = data[i];

 cuda_send(sc, poll, len + 2, packet);

 return (0);
}
