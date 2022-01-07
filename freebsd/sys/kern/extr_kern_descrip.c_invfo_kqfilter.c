
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;

int
invfo_kqfilter(struct file *fp, struct knote *kn)
{

 return (EINVAL);
}
