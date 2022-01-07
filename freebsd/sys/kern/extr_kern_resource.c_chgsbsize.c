
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct uidinfo {int ui_sbsize; } ;
typedef scalar_t__ rlim_t ;


 int chglimit (struct uidinfo*,int *,int,scalar_t__,char*) ;

int
chgsbsize(struct uidinfo *uip, u_int *hiwat, u_int to, rlim_t max)
{
 int diff, rv;

 diff = to - *hiwat;
 if (diff > 0 && max == 0) {
  rv = 0;
 } else {
  rv = chglimit(uip, &uip->ui_sbsize, diff, max, "sbsize");
  if (rv != 0)
   *hiwat = to;
 }
 return (rv);
}
