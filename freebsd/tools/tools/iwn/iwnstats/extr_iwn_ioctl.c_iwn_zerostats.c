
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwnstats {int s; } ;


 int SIOCZIWNSTATS ;
 int err (int,char*) ;
 scalar_t__ ioctl (int ,int ,int *) ;

void
iwn_zerostats(struct iwnstats *is)
{

 if (ioctl(is->s, SIOCZIWNSTATS, ((void*)0)) < 0)
  err(-1, "ioctl");
}
