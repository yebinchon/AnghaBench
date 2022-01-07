
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_len; } ;
struct ifaliasreq {int ifra_mask; int ifra_addr; int ifra_name; } ;


 int AF_INET ;
 int SOCK_DGRAM ;
 int close (int) ;
 int ioctl (int,unsigned long,char*) ;
 int memcpy (int *,struct sockaddr*,int ) ;
 int memset (struct ifaliasreq*,int ,int) ;
 int socket (int ,int ,int ) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static int
ifaddr_ad(unsigned long d, const char *ifnam, struct sockaddr *sa, struct sockaddr *mask)
{
 struct ifaliasreq req;
 int fd, error;

 fd = socket(AF_INET, SOCK_DGRAM, 0);
 if (fd < 0)
  return (-1);

 memset(&req, 0, sizeof(struct ifaliasreq));
 strlcpy(req.ifra_name, ifnam, sizeof(req.ifra_name));
 memcpy(&req.ifra_addr, sa, sa->sa_len);
 memcpy(&req.ifra_mask, mask, mask->sa_len);

 error = ioctl(fd, d, (char *)&req);
 close(fd);
 return (error);
}
