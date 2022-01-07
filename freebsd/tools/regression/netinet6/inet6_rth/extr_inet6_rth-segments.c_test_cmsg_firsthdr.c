
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {int msg_controllen; int * msg_control; } ;
struct cmsghdr {int dummy; } ;
typedef int magic ;
typedef int cmh ;
typedef void* caddr_t ;
typedef int ancbuf ;


 struct cmsghdr* CMSG_FIRSTHDR (struct msghdr*) ;
 int bcopy (void*,void*,int) ;
 int checkptr (int *,void*,char*) ;
 int checkstr (char const*,char const*,int,char*) ;
 int init_hdrs (struct msghdr*,struct cmsghdr*,char*,int) ;
 int memset (void*,int ,int) ;
 int set_funcname (char*,int) ;
 int strlcpy (char*,char const*,int) ;

void
test_cmsg_firsthdr()
{
 struct msghdr mh;
 struct cmsghdr cmh;
 struct cmsghdr *cmhp;
 char ancbuf[1024];
 char magic[] = "MAGIC";

 set_funcname("test_cmsg_firsthdr", sizeof("test_cmsg_firsthdr"));


 init_hdrs(&mh, ((void*)0), ((void*)0), 0);
 mh.msg_control = ((void*)0);
 cmhp = CMSG_FIRSTHDR(&mh);
 checkptr(((void*)0), (caddr_t)cmhp,
     "msg_control is NULL\0");


 init_hdrs(&mh, ((void*)0), ((void*)0), 0);
 mh.msg_control = (caddr_t)&cmh;
 mh.msg_controllen = sizeof(cmh) - 1;
 cmhp = CMSG_FIRSTHDR(&mh);
 checkptr(((void*)0), (caddr_t)cmhp,
     "msg_controllen < sizeof cmsghdr\0");


 init_hdrs(&mh, ((void*)0), ((void*)0), 0);
 mh.msg_control = (caddr_t)&cmh;
 mh.msg_controllen = 0;
 cmhp = CMSG_FIRSTHDR(&mh);
 checkptr(((void*)0), (caddr_t)cmhp,
     "msg_controllen == 0\0");


 init_hdrs(&mh, &cmh, ancbuf, sizeof(ancbuf));
 memset((void *)ancbuf, 0, sizeof(ancbuf));
 mh.msg_control = (caddr_t)ancbuf;
 mh.msg_controllen = sizeof(ancbuf);
 strlcpy((char *)&cmh, (const char *)&magic, sizeof(magic));
 bcopy((void *)&cmh, (void *)ancbuf, sizeof(cmh));
 cmhp = CMSG_FIRSTHDR(&mh);
 checkstr((const char *)&magic, (const char *)cmhp, sizeof(magic),
     "with payload\0");
}
