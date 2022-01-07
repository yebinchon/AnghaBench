
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,unsigned char*) ;
 int sscanf (unsigned char*,char*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;

void str2mac(unsigned char* dst, unsigned char* mac) {
 unsigned int macf[6];
 int i;

 if( sscanf(mac, "%x:%x:%x:%x:%x:%x",
                   &macf[0], &macf[1], &macf[2],
                   &macf[3], &macf[4], &macf[5]) != 6) {

     printf("can't parse mac %s\n", mac);
     exit(1);
 }

 for (i = 0; i < 6; i++)
  *dst++ = (unsigned char) macf[i];
}
