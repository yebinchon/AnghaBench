
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {int msg_iovlen; struct iovec* msg_iov; } ;
struct ip {scalar_t__ ip_p; int ip_hl; unsigned short ip_id; } ;
struct iovec {char* iov_base; int iov_len; } ;
typedef int mh ;
typedef int iov ;


 int hexdump (char*,int) ;
 unsigned short htons (int) ;
 int memcpy (char*,unsigned short*,int) ;
 int memset (struct msghdr*,int ,int) ;
 int ntohs (unsigned short) ;
 int printf (char*,int,int) ;
 int sendmsg (int,struct msghdr*,int ) ;

int handle_data(int dude, char *buf, int len)
{
 struct ip *ih;
 unsigned short id;
 char tmp[4];
 struct iovec iov[2];
 struct msghdr mh;

 ih = (struct ip*) buf;




 if (ih->ip_p != 0)
  return 0;

 if (ih->ip_hl != 5)
  return 0;


 id = ih->ip_id;
 len -= 20;
 buf += 20;
 printf("Got %d bytes [%d]\n", len, ntohs(id));





 memcpy(tmp, &id, 2);
 id = htons(len);
 memcpy(&tmp[2], &id, 2);

 iov[0].iov_base = tmp;
 iov[0].iov_len = 4;
 iov[1].iov_base = buf;
 iov[1].iov_len = len;

 memset(&mh, 0, sizeof(mh));
 mh.msg_iov = iov;
 mh.msg_iovlen = sizeof(iov)/sizeof(struct iovec);


 if (sendmsg(dude, &mh, 0) != (4 + len))
  return -1;
 return 0;
}
