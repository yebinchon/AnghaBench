
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
typedef int tim ;
struct tm {int dummy; } ;
struct TYPE_2__ {int tv_sec; } ;
struct node_info {int chan; int max; struct node_info* next; int wep; int mac; TYPE_1__ seen; } ;
typedef int FILE ;


 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,char*,char*,char*,int,char*,int) ;
 struct tm* localtime (int *) ;
 char* mac2str (int ) ;
 struct node_info* nodes ;
 int perror (char*) ;
 char* ssid2str (struct node_info*) ;
 int strftime (char*,int,char*,struct tm*) ;
 char* wep2str (int ) ;

void save_state() {
 FILE* f;
 struct node_info* node = nodes;

 f = fopen("stumbler.log", "w");
 if (!f) {
  perror("fopen()");
  exit(1);
 }

 while (node) {
  struct tm* t;
  char tim[16];

  t = localtime( (time_t*) &node->seen.tv_sec);
  if (!t) {
   perror("localtime()");
   exit(1);
  }
  tim[0] = 0;
  strftime(tim, sizeof(tim), "%H:%M:%S", t);

  fprintf(f, "%s %s %s %2d %s 0x%.2x\n", tim,
   mac2str(node->mac), wep2str(node->wep),
   node->chan, ssid2str(node), node->max);

  node = node->next;
 }

 fclose(f);
}
