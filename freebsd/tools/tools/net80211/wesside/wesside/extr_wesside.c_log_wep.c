
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct pcap_pkthdr {int caplen; int len; struct timeval ts; } ;
struct ieee80211_frame {int caplen; int len; struct timeval ts; } ;
typedef int pkh ;
struct TYPE_2__ {int packets; int iv; int fd; } ;


 int err (int,char*) ;
 int exit (int) ;
 int fsync (int ) ;
 int gettimeofday (struct timeval*,int *) ;
 int memcpy (int ,unsigned char*,int) ;
 int memset (struct pcap_pkthdr*,int ,int) ;
 int perror (char*) ;
 int time_print (char*,int,int) ;
 TYPE_1__ weplog ;
 int write (int ,struct pcap_pkthdr*,int) ;

void log_wep(struct ieee80211_frame* wh, int len) {
 int rd;
 struct pcap_pkthdr pkh;
 struct timeval tv;
 unsigned char *body = (unsigned char*) (wh+1);

 memset(&pkh, 0, sizeof(pkh));
 pkh.caplen = pkh.len = len;
 if (gettimeofday(&tv, ((void*)0)) == -1)
  err(1, "gettimeofday()");
 pkh.ts = tv;
 if (write(weplog.fd, &pkh, sizeof(pkh)) != sizeof(pkh))
  err(1, "write()");

 rd = write(weplog.fd, wh, len);

 if (rd == -1) {
  perror("write()");
  exit(1);
 }
 if (rd != len) {
  time_print("short write %d out of %d\n", rd, len);
  exit(1);
 }
 memcpy(weplog.iv, body, 3);
 weplog.packets++;
}
