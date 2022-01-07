
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_ratestats {int re; int s; } ;


 int SIOCGATHNODERATESTATS ;
 int err (int,char*) ;
 scalar_t__ ioctl (int ,int ,int *) ;

__attribute__((used)) static void
ath_rate_ioctl(struct ath_ratestats *r)
{

 if (ioctl(r->s, SIOCGATHNODERATESTATS, &r->re) < 0)
  err(1, "ioctl");
}
