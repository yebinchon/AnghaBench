
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int device_t ;


 int devctl_notify (char*,char*,char*,char*) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static u_int
abtn_receive_packet(device_t dev, u_char status,
    u_char command, u_char reg, int len, u_char *data)
{
 u_int cmd;

 cmd = data[0];

 switch (cmd) {
 case 0x0a:
  devctl_notify("PMU", "keys", "brightness",
      "notify=down");
  break;

 case 0x09:
  devctl_notify("PMU", "keys", "brightness", "notify=up");
  break;

 case 0x08:
 case 0x01:
  devctl_notify("PMU", "keys", "mute", ((void*)0));
  break;
 case 0x07:
 case 0x02:
  devctl_notify("PMU", "keys", "volume", "notify=down");
  break;
 case 0x06:
 case 0x03:
  devctl_notify("PMU", "keys", "volume", "notify=up");
  break;
 case 0x0c:

  break;
 case 0x0b:
  devctl_notify("PMU", "keys", "eject", ((void*)0));
  break;
 case 0x7f:

  break;

 default:




  break;
 }
 return 0;
}
