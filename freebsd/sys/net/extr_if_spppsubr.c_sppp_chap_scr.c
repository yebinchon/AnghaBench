
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
typedef scalar_t__ u_char ;
struct TYPE_2__ {int name; scalar_t__ challenge; } ;
struct sppp {TYPE_1__ myauth; scalar_t__* confid; scalar_t__* pp_seq; } ;


 scalar_t__ AUTHKEYLEN ;
 int AUTHNAMELEN ;
 int CHAP_CHALLENGE ;
 size_t IDX_CHAP ;
 int arc4random_buf (int *,int) ;
 int chap ;
 int sppp_auth_send (int *,struct sppp*,int ,scalar_t__,int,char const*,size_t,scalar_t__,size_t,int ,int ) ;
 scalar_t__ sppp_strnlen (int ,int ) ;

__attribute__((used)) static void
sppp_chap_scr(struct sppp *sp)
{
 u_long *ch;
 u_char clen;


 ch = (u_long *)sp->myauth.challenge;
 arc4random_buf(ch, 4 * sizeof(*ch));
 clen = AUTHKEYLEN;

 sp->confid[IDX_CHAP] = ++sp->pp_seq[IDX_CHAP];

 sppp_auth_send(&chap, sp, CHAP_CHALLENGE, sp->confid[IDX_CHAP],
         sizeof clen, (const char *)&clen,
         (size_t)AUTHKEYLEN, sp->myauth.challenge,
         (size_t)sppp_strnlen(sp->myauth.name, AUTHNAMELEN),
         sp->myauth.name,
         0);
}
