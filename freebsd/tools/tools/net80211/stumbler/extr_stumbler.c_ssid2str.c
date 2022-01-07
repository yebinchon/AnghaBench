
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node_info {char* ssid; scalar_t__ ap; } ;
typedef int res ;


 int memcpy (char*,char*,int) ;
 int memset (char*,char,int) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

char* ssid2str(struct node_info* node) {
 static char res[24];

 memset(res, ' ', sizeof(res));
 res[0] = '[';
 strcpy(&res[sizeof(res)-2], "]");

 if (node->ap) {
  int left = sizeof(res) - 3;

  if (strlen(node->ssid) < left)
   left = strlen(node->ssid);
  memcpy(&res[1], node->ssid, left);
 }
 else {
  memcpy(&res[1], "<client>", 8);
 }
 return res;
}
