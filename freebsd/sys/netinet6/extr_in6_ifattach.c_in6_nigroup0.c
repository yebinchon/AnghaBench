
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int8_t ;
typedef char u_char ;
struct prison {char* pr_hostname; int pr_mtx; } ;
struct in6_addr {int* s6_addr8; int* s6_addr32; int * s6_addr16; } ;
struct ifnet {int dummy; } ;
typedef int n ;
typedef int l ;
typedef int ctxt ;
struct TYPE_4__ {TYPE_1__* td_ucred; } ;
struct TYPE_3__ {struct prison* cr_prison; } ;
typedef struct in6_addr MD5_CTX ;


 int IPV6_ADDR_INT16_MLL ;
 int MD5Final (int *,struct in6_addr*) ;
 int MD5Init (struct in6_addr*) ;
 int MD5Update (struct in6_addr*,char*,char) ;
 int bcopy (int *,int*,int) ;
 int bzero (struct in6_addr*,int) ;
 TYPE_2__* curthread ;
 scalar_t__ in6_setscope (struct in6_addr*,struct ifnet*,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int strlen (char const*) ;
 int strncpy (char*,char const*,char) ;

__attribute__((used)) static int
in6_nigroup0(struct ifnet *ifp, const char *name, int namelen,
    struct in6_addr *in6, int oldmcprefix)
{
 struct prison *pr;
 const char *p;
 u_char *q;
 MD5_CTX ctxt;
 u_int8_t digest[16];
 char l;
 char n[64];





 if (!name && namelen == -1) {
  pr = curthread->td_ucred->cr_prison;
  mtx_lock(&pr->pr_mtx);
  name = pr->pr_hostname;
  namelen = strlen(name);
 } else
  pr = ((void*)0);
 if (!name || !namelen) {
  if (pr != ((void*)0))
   mtx_unlock(&pr->pr_mtx);
  return -1;
 }

 p = name;
 while (p && *p && *p != '.' && p - name < namelen)
  p++;
 if (p == name || p - name > sizeof(n) - 1) {
  if (pr != ((void*)0))
   mtx_unlock(&pr->pr_mtx);
  return -1;
 }
 l = p - name;
 strncpy(n, name, l);
 if (pr != ((void*)0))
  mtx_unlock(&pr->pr_mtx);
 n[(int)l] = '\0';
 for (q = n; *q; q++) {
  if ('A' <= *q && *q <= 'Z')
   *q = *q - 'A' + 'a';
 }


 bzero(&ctxt, sizeof(ctxt));
 MD5Init(&ctxt);
 MD5Update(&ctxt, &l, sizeof(l));
 MD5Update(&ctxt, n, l);
 MD5Final(digest, &ctxt);

 bzero(in6, sizeof(*in6));
 in6->s6_addr16[0] = IPV6_ADDR_INT16_MLL;
 in6->s6_addr8[11] = 2;
 if (oldmcprefix == 0) {
  in6->s6_addr8[12] = 0xff;

  bcopy(digest, &in6->s6_addr8[13], 3);
 } else {

  bcopy(digest, &in6->s6_addr32[3], sizeof(in6->s6_addr32[3]));
 }
 if (in6_setscope(in6, ifp, ((void*)0)))
  return (-1);

 return 0;
}
