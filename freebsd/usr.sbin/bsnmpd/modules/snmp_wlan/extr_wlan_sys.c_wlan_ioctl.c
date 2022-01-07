
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ieee80211req {int i_val; size_t i_len; void* i_data; int i_type; int i_name; } ;


 int IFNAMSIZ ;
 int LOG_ERR ;
 int SIOCG80211 ;
 int SIOCS80211 ;
 int errno ;
 scalar_t__ ioctl (int ,int ,struct ieee80211req*) ;
 int memset (struct ieee80211req*,int ,int) ;
 int sock ;
 int strerror (int ) ;
 int strlcpy (int ,char*,int ) ;
 int syslog (int ,char*,char*,char*,int ,int ) ;

__attribute__((used)) static int
wlan_ioctl(char *wif_name, uint16_t req_type, int *val, void *arg,
     size_t *argsize, int set)
{
 struct ieee80211req ireq;

 memset(&ireq, 0, sizeof(struct ieee80211req));
 strlcpy(ireq.i_name, wif_name, IFNAMSIZ);

 ireq.i_type = req_type;
 ireq.i_val = *val;
 ireq.i_len = *argsize;
 ireq.i_data = arg;

 if (ioctl(sock, set ? SIOCS80211 : SIOCG80211, &ireq) < 0) {
  syslog(LOG_ERR, "iface %s - %s param: ioctl(%d) "
      "failed: %s", wif_name, set ? "set" : "get",
      req_type, strerror(errno));
  return (-1);
 }

 *argsize = ireq.i_len;
 *val = ireq.i_val;

 return (0);
}
