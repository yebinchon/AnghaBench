
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {int dummy; } ;
struct file {int dummy; } ;


 int EBADF ;

__attribute__((used)) static int
badfo_kqfilter(struct file *fp, struct knote *kn)
{

 return (EBADF);
}
