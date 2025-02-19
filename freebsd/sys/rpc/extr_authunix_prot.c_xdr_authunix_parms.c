
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct xucred {int cr_uid; int* cr_groups; int cr_ngroups; } ;
typedef int hostbuf ;
typedef int bool_t ;
struct TYPE_7__ {scalar_t__ x_op; } ;
typedef TYPE_1__ XDR ;


 int FALSE ;
 int MAXHOSTNAMELEN ;
 int NGRPS ;
 scalar_t__ RNDUP (int) ;
 int TRUE ;
 scalar_t__ XDR_DECODE ;
 scalar_t__ XDR_ENCODE ;
 int getcredhostname (int *,char*,int) ;
 int ngroups_max ;
 int strlen (char*) ;
 scalar_t__ xdr_getpos (TYPE_1__*) ;
 int xdr_opaque (TYPE_1__*,char*,int) ;
 int xdr_setpos (TYPE_1__*,scalar_t__) ;
 int xdr_uint32_t (TYPE_1__*,int*) ;

bool_t
xdr_authunix_parms(XDR *xdrs, uint32_t *time, struct xucred *cred)
{
 uint32_t namelen;
 uint32_t ngroups, i;
 uint32_t junk;
 char hostbuf[MAXHOSTNAMELEN];

 if (xdrs->x_op == XDR_ENCODE) {



  getcredhostname(((void*)0), hostbuf, sizeof(hostbuf));
  namelen = strlen(hostbuf);
  if (namelen > 255)
   namelen = 255;
 } else {
  namelen = 0;
 }
 junk = 0;

 if (!xdr_uint32_t(xdrs, time)
     || !xdr_uint32_t(xdrs, &namelen))
  return (FALSE);




 if (xdrs->x_op == XDR_ENCODE) {
  if (!xdr_opaque(xdrs, hostbuf, namelen))
   return (FALSE);
 } else {
  xdr_setpos(xdrs, xdr_getpos(xdrs) + RNDUP(namelen));
 }

 if (!xdr_uint32_t(xdrs, &cred->cr_uid))
  return (FALSE);
 if (!xdr_uint32_t(xdrs, &cred->cr_groups[0]))
  return (FALSE);

 if (xdrs->x_op == XDR_ENCODE) {
  ngroups = cred->cr_ngroups - 1;
  if (ngroups > NGRPS)
   ngroups = NGRPS;
 }

 if (!xdr_uint32_t(xdrs, &ngroups))
  return (FALSE);
 for (i = 0; i < ngroups; i++) {
  if (i + 1 < ngroups_max + 1) {
   if (!xdr_uint32_t(xdrs, &cred->cr_groups[i + 1]))
    return (FALSE);
  } else {
   if (!xdr_uint32_t(xdrs, &junk))
    return (FALSE);
  }
 }

 if (xdrs->x_op == XDR_DECODE) {
  if (ngroups + 1 > ngroups_max + 1)
   cred->cr_ngroups = ngroups_max + 1;
  else
   cred->cr_ngroups = ngroups + 1;
 }

 return (TRUE);
}
