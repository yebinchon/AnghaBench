
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcrypt {int sesn; int csessions; } ;
struct csession {scalar_t__ ses; } ;


 int TAILQ_INSERT_TAIL (int *,struct csession*,int ) ;
 int next ;

__attribute__((used)) static struct csession *
cseadd(struct fcrypt *fcr, struct csession *cse)
{
 TAILQ_INSERT_TAIL(&fcr->csessions, cse, next);
 cse->ses = fcr->sesn++;
 return (cse);
}
