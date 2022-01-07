
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fd_set ;
typedef int fd_mask ;


 int NFDBITS ;
 int getdtablesize () ;
 int howmany (int ,int ) ;
 scalar_t__ malloc (int) ;

fd_set *
mkfdset()
{
  return (fd_set *)malloc(howmany(getdtablesize(), NFDBITS) * sizeof (fd_mask));
}
