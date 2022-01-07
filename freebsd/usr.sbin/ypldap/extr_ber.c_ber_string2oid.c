
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ber_oid {scalar_t__ bo_n; int * bo_id; } ;
typedef int str ;


 scalar_t__ BER_MAX_OID_LEN ;
 int BUFSIZ ;
 int UINT_MAX ;
 int bzero (struct ber_oid*,int) ;
 int strlcpy (char*,char const*,int) ;
 char* strpbrk (char*,char*) ;
 int strtonum (char*,int ,int ,char const**) ;

int
ber_string2oid(const char *oidstr, struct ber_oid *o)
{
 char *sp, *p, str[BUFSIZ];
 const char *errstr;

 if (strlcpy(str, oidstr, sizeof(str)) >= sizeof(str))
  return (-1);
 bzero(o, sizeof(*o));


 for (p = sp = str; p != ((void*)0); sp = p) {
  if ((p = strpbrk(p, "._-")) != ((void*)0))
   *p++ = '\0';
  o->bo_id[o->bo_n++] = strtonum(sp, 0, UINT_MAX, &errstr);
  if (errstr || o->bo_n > BER_MAX_OID_LEN)
   return (-1);
 }

 return (0);
}
