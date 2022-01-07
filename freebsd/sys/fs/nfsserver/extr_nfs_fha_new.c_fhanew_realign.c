
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;


 int newnfs_realign (struct mbuf**,int) ;

int
fhanew_realign(struct mbuf **mb, int malloc_flags)
{
 return (newnfs_realign(mb, malloc_flags));
}
