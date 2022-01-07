
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwnstats {int s; int st; } ;
struct iwn_ioctl_data {int dst_len; int * dst_addr; } ;
typedef int caddr_t ;


 int SIOCGIWNSTATS ;
 int ioctl (int ,int ,int ) ;
 int printf (char*,int *) ;
 int warn (char*) ;

int
iwn_collect(struct iwnstats *is)
{
 int err;
 struct iwn_ioctl_data d;

 printf("st: %p\n", &is->st);
 d.dst_addr = &is->st;
 d.dst_len = sizeof(is->st);
 err = ioctl(is->s, SIOCGIWNSTATS, (caddr_t) &d);
 if (err < 0)
  warn("ioctl");
 return (err);
}
