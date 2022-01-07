
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chap {int dummy; } ;


 int SIGTERM ;
 int chap_Cleanup (struct chap*,int ) ;

void
chap_ReInit(struct chap *chap)
{
  chap_Cleanup(chap, SIGTERM);
}
