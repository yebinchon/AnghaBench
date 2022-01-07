
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* local; } ;
struct chap {int peertries; int auth; TYPE_1__ challenge; } ;


 int chap_Challenge (int *) ;

__attribute__((used)) static int
chap_HaveAnotherGo(struct chap *chap)
{
  if (++chap->peertries < 3) {

    *chap->challenge.local = '\0';
    chap_Challenge(&chap->auth);
    return 1;
  }

  return 0;
}
