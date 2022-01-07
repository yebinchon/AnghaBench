
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {int msg_controllen; int * msg_control; } ;
struct cmsghdr {int cmsg_len; } ;
typedef int magic ;
typedef int cmh ;
typedef int * caddr_t ;
typedef int ancbuf ;


 struct cmsghdr* CMSG_FIRSTHDR (struct msghdr*) ;
 void* CMSG_LEN (int ) ;
 struct cmsghdr* CMSG_NXTHDR (struct msghdr*,struct cmsghdr*) ;
 int CMSG_SPACE (int ) ;
 int bcopy (void*,void*,int) ;
 int checkptr (int *,int *,char*) ;
 int checkstr (char const*,char const*,int,char*) ;
 int init_hdrs (struct msghdr*,struct cmsghdr*,char*,int) ;
 int set_funcname (char*,int) ;
 int strlcpy (char*,char const*,int) ;

void
test_cmsg_nexthdr()
{
 struct msghdr mh;
 struct cmsghdr cmh;
 struct cmsghdr *cmhp, *cmhnextp;
 char ancbuf[10240];
 char magic[] = "MAGIC";

 set_funcname("test_cmsg_nexthdr", sizeof("test_cmsg_nexthdr"));




 init_hdrs(&mh, &cmh, ancbuf, sizeof(ancbuf));
 mh.msg_control = (caddr_t)ancbuf;
 mh.msg_controllen = CMSG_SPACE(0) * 2;
 cmh.cmsg_len = CMSG_LEN(0);





 bcopy((void *)&cmh, (void *)ancbuf, sizeof(cmh));
 strlcpy((char *)&cmh, (const char *)&magic, sizeof(magic));
 bcopy((void *)&cmh,
     (void *)((caddr_t)ancbuf + CMSG_SPACE(0)),
     sizeof(cmh));
 cmhp = CMSG_FIRSTHDR(&mh);
 cmhnextp = CMSG_NXTHDR(&mh, cmhp);
 checkstr((const char *)&magic, (const char *)cmhnextp, sizeof(magic),
     "more than one cmsghdr\0");




 init_hdrs(&mh, &cmh, ancbuf, sizeof(ancbuf));
 mh.msg_control = (caddr_t)ancbuf;
 mh.msg_controllen = CMSG_SPACE(0);
 cmh.cmsg_len = CMSG_LEN(0);
 bcopy((void *)&cmh, (void *)ancbuf, sizeof(cmh));
 cmhp = CMSG_FIRSTHDR(&mh);
 cmhnextp = CMSG_NXTHDR(&mh, cmhp);
 checkptr(((void*)0), (caddr_t)cmhnextp, "only one cmsghdr\0");




 init_hdrs(&mh, &cmh, ancbuf, sizeof(ancbuf));
 mh.msg_control = (caddr_t)ancbuf;
 mh.msg_controllen = sizeof(ancbuf);
 cmh.cmsg_len = sizeof(ancbuf);
 bcopy((void *)&cmh, (void *)ancbuf, sizeof(cmh));
 cmhp = CMSG_FIRSTHDR(&mh);
 cmhnextp = CMSG_NXTHDR(&mh, ((void*)0));
 checkptr((caddr_t)cmhp, (caddr_t)cmhnextp, "null second argument\0");
}
