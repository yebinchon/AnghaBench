
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int8_t ;
typedef int u_int64_t ;
typedef int u_int16_t ;
typedef char* caddr_t ;


 int NFSBCOPY (char*,scalar_t__*,int) ;
 int arc4random () ;
 int strlen (char*) ;

void
nfscl_fillclid(u_int64_t clval, char *uuid, u_int8_t *cp, u_int16_t idlen)
{
 int uuidlen;




 if (idlen >= sizeof (u_int64_t)) {
  NFSBCOPY((caddr_t)&clval, cp, sizeof (u_int64_t));
  cp += sizeof (u_int64_t);
  idlen -= sizeof (u_int64_t);
 }




 uuidlen = strlen(uuid);
 if (uuidlen > 0 && idlen >= uuidlen) {
  NFSBCOPY(uuid, cp, uuidlen);
  cp += uuidlen;
  idlen -= uuidlen;
 }




 while (idlen > 0) {
  *cp++ = (u_int8_t)(arc4random() % 256);
  idlen--;
 }
}
