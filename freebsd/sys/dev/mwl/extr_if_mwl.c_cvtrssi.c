
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;



__attribute__((used)) static __inline int
cvtrssi(uint8_t ssi)
{
 int rssi = (int) ssi + 8;

 rssi = 2*(87 - rssi);
 return (rssi < 0 ? 0 : rssi > 127 ? 127 : rssi);
}
