
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
struct sockaddr_nb {scalar_t__* snb_name; } ;
struct mbchain {int dummy; } ;


 int EINVAL ;
 int MB_MSYSTEM ;
 int NBDEBUG (char*,scalar_t__*) ;
 int mb_put_mem (struct mbchain*,scalar_t__*,scalar_t__,int ) ;

__attribute__((used)) static int
nb_put_name(struct mbchain *mbp, struct sockaddr_nb *snb)
{
 int error;
 u_char seglen, *cp;

 cp = snb->snb_name;
 if (*cp == 0)
  return EINVAL;
 NBDEBUG("[%s]\n", cp);
 for (;;) {
  seglen = (*cp) + 1;
  error = mb_put_mem(mbp, cp, seglen, MB_MSYSTEM);
  if (error)
   return error;
  if (seglen == 1)
   break;
  cp += seglen;
 }
 return 0;
}
