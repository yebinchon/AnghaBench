
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {int dummy; } ;
struct cmsghdr {int dummy; } ;


 int memset (void*,int ,size_t) ;

void
init_hdrs(struct msghdr *mhp, struct cmsghdr *cmhp, char *bufp, size_t bufsize)
{
 if (mhp != ((void*)0))
  memset((void *)mhp, 0, sizeof(struct msghdr));
 if (cmhp != ((void*)0))
  memset((void *)cmhp, 0, sizeof(struct cmsghdr));
 if (bufp != ((void*)0))
  memset((void *)bufp, 0, bufsize);
}
