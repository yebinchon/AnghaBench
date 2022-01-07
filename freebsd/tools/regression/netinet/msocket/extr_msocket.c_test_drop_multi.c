
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_mreq {int imr_interface; int imr_multiaddr; } ;
typedef int imr ;


 scalar_t__ EADDRNOTAVAIL ;
 int IPPROTO_IP ;
 int IP_DROP_MEMBERSHIP ;
 int WARN_SUCCESS ;
 int err (int,char*,char const*,char*,int ) ;
 scalar_t__ errno ;
 int inet_ntoa (int ) ;
 int setsockopt (int,int ,int ,struct ip_mreq*,int) ;
 int strlcpy (char*,int ,int) ;
 int warnx (char*,char const*,char*,int ) ;

__attribute__((used)) static void
test_drop_multi(int sock, const char *socktype, struct ip_mreq imr,
    int flags)
{
 char buf[128];
 int ret;

 ret = setsockopt(sock, IPPROTO_IP, IP_DROP_MEMBERSHIP, &imr,
     sizeof(imr));
 if (ret < 0) {
  strlcpy(buf, inet_ntoa(imr.imr_multiaddr), 128);
  err(-1, "FAIL: setsockopt(%s, IPPROTO_IP, IP_DROP_MEMBERSHIP "
      "%s, %s)", socktype, buf, inet_ntoa(imr.imr_interface));
 }
 if (ret == 0 && (flags & WARN_SUCCESS)) {
  strlcpy(buf, inet_ntoa(imr.imr_multiaddr), 128);
  warnx("WARN: setsockopt(%s, IPPROTO_IP, IP_DROP_MEMBERSHIP "
      "%s, %s) returned 0", socktype, buf,
      inet_ntoa(imr.imr_interface));
 }


 ret = setsockopt(sock, IPPROTO_IP, IP_DROP_MEMBERSHIP, &imr,
     sizeof(imr));
 if (ret == 0) {
  strlcpy(buf, inet_ntoa(imr.imr_multiaddr), 128);
  err(-1, "FAIL: setsockopt(%s, IPPROTO_IP, IP_DROP_MEMBERSHIP "
      "%s, %s) returned 0", socktype, buf,
      inet_ntoa(imr.imr_interface));
 }
 if (ret < 0 && errno != EADDRNOTAVAIL) {
  strlcpy(buf, inet_ntoa(imr.imr_multiaddr), 128);
  err(-1, "FAIL: setsockopt(%s, IPPROTO_IP, IP_DROP_MEMBERSHIP "
      "%s, %s)", socktype, buf, inet_ntoa(imr.imr_interface));
 }
}
