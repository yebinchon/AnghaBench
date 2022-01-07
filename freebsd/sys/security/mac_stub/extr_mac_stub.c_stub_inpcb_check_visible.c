
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct label {int dummy; } ;
struct inpcb {int dummy; } ;



__attribute__((used)) static int
stub_inpcb_check_visible(struct ucred *cred, struct inpcb *inp,
   struct label *inplabel)
{

 return (0);
}
