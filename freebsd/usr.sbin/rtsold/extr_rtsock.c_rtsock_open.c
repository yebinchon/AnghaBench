
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cap_rights_t ;


 int CAP_EVENT ;
 int CAP_READ ;
 int PF_ROUTE ;
 int SOCK_RAW ;
 int cap_rights_init (int *,int ,int ) ;
 scalar_t__ caph_rights_limit (int,int *) ;
 int close (int) ;
 int errno ;
 int socket (int ,int ,int ) ;

int
rtsock_open(void)
{
 cap_rights_t rights;
 int error, s;

 s = socket(PF_ROUTE, SOCK_RAW, 0);
 if (s < 0)
  return (s);
 cap_rights_init(&rights, CAP_EVENT, CAP_READ);
 if (caph_rights_limit(s, &rights) != 0) {
  error = errno;
  (void)close(s);
  errno = errno;
  return (-1);
 }
 return (s);
}
