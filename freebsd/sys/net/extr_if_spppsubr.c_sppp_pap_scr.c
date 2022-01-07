
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_char ;
struct TYPE_2__ {int secret; int name; } ;
struct sppp {TYPE_1__ myauth; scalar_t__* confid; scalar_t__* pp_seq; } ;


 int AUTHKEYLEN ;
 int AUTHNAMELEN ;
 size_t IDX_PAP ;
 int PAP_REQ ;
 int pap ;
 int sppp_auth_send (int *,struct sppp*,int ,scalar_t__,int,char const*,size_t,int ,int,char const*,size_t,int ,int ) ;
 scalar_t__ sppp_strnlen (int ,int ) ;

__attribute__((used)) static void
sppp_pap_scr(struct sppp *sp)
{
 u_char idlen, pwdlen;

 sp->confid[IDX_PAP] = ++sp->pp_seq[IDX_PAP];
 pwdlen = sppp_strnlen(sp->myauth.secret, AUTHKEYLEN);
 idlen = sppp_strnlen(sp->myauth.name, AUTHNAMELEN);

 sppp_auth_send(&pap, sp, PAP_REQ, sp->confid[IDX_PAP],
         sizeof idlen, (const char *)&idlen,
         (size_t)idlen, sp->myauth.name,
         sizeof pwdlen, (const char *)&pwdlen,
         (size_t)pwdlen, sp->myauth.secret,
         0);
}
