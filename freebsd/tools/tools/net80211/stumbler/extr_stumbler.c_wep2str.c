
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int res ;
 int assert (int) ;
 int memcpy (char*,char*,int) ;
 int memset (char*,char,int) ;
 int strlen (char*) ;

char* wep2str(int w) {
 char* wep = 0;
 static char res[14];

 switch (w) {
 case 135:
  wep = "";
  break;

 case 134:
  wep = "WEP";
  break;

 case 132:
  wep = "WPA1";
  break;

 case 133:
  wep = "WPA?";
  break;

 case 129:
  wep = "WPA1-TKIP";
  break;

 case 128:
  wep = "WPA1-TKIP-PSK";
  break;

 case 131:
  wep = "WPA1-CCMP";
  break;

 case 130:
  wep = "WPA1-CCMP-PSK";
  break;

 case 138:
  wep = "i";
  break;

 case 137:
  wep = "11i-TKIP";
  break;

 case 136:
  wep = "11i-TKIP-PSK";
  break;

 default:
  wep = "FIXME!";
  break;
 }

 memset(res, ' ', sizeof(res));
 assert(strlen(wep) < sizeof(res));
 memcpy(res, wep, strlen(wep));
 res[sizeof(res)-1] = 0;
 return res;
}
