
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {int iov_len; struct ieee80211_bpf_params* iov_base; } ;
struct ieee80211_bpf_params {int ibp_len; } ;
typedef int iov ;


 int err (int,char*) ;
 int exit (int) ;
 int printf (char*,int,int) ;
 int writev (int,struct iovec*,int) ;

void inject(int fd, void *buf, int buflen, struct ieee80211_bpf_params *p)
{
 struct iovec iov[2];
 int totlen;
 int rc;

 iov[0].iov_base = p;
 iov[0].iov_len = p->ibp_len;

 iov[1].iov_base = buf;
 iov[1].iov_len = buflen;
 totlen = iov[0].iov_len + iov[1].iov_len;

 rc = writev(fd, iov, sizeof(iov)/sizeof(struct iovec));
 if (rc == -1)
  err(1, "writev()");
 if (rc != totlen) {
  printf("Wrote only %d/%d\n", rc, totlen);
  exit(1);
 }
}
