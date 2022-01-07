
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
ath_rx_ampdu_to_byte(char a)
{
 switch (a) {
 case 131:
  return 16384;
  break;
 case 130:
  return 32768;
  break;
 case 129:
  return 65536;
  break;
 case 128:
 default:
  return 8192;
  break;
 }
}
