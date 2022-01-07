
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cap_rights_t ;


 int CAP_ACCEPT ;
 int CAP_EVENT ;
 int CAP_IOCTL ;
 int CAP_READ ;
 int CAP_SETSOCKOPT ;
 int CAP_WRITE ;
 int EX_OSERR ;
 unsigned long FIONREAD ;
 int cap_rights_init (int *,int ,int ,int ,int ,int ,int ) ;
 int caph_ioctls_limit (int,unsigned long*,int ) ;
 int caph_rights_limit (int,int *) ;
 int errx (int ,char*) ;
 int nitems (unsigned long*) ;

void
limit_gdb_socket(int s)
{
 cap_rights_t rights;
 unsigned long ioctls[] = { FIONREAD };

 cap_rights_init(&rights, CAP_ACCEPT, CAP_EVENT, CAP_READ, CAP_WRITE,
     CAP_SETSOCKOPT, CAP_IOCTL);
 if (caph_rights_limit(s, &rights) == -1)
  errx(EX_OSERR, "Unable to apply rights for sandbox");
 if (caph_ioctls_limit(s, ioctls, nitems(ioctls)) == -1)
  errx(EX_OSERR, "Unable to apply rights for sandbox");
}
