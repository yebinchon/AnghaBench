
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char) ;

char* mac2str(unsigned char* mac) {
 static char ret[6*3];

 sprintf(ret, "%.2X:%.2X:%.2X:%.2X:%.2X:%.2X",
  mac[0], mac[1], mac[2], mac[3], mac[4], mac[5]);

 return ret;
}
