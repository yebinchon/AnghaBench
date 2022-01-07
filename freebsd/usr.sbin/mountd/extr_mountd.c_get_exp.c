
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exportlist {int dummy; } ;


 scalar_t__ calloc (int,int) ;
 int out_of_mem () ;

__attribute__((used)) static struct exportlist *
get_exp(void)
{
 struct exportlist *ep;

 ep = (struct exportlist *)calloc(1, sizeof (struct exportlist));
 if (ep == (struct exportlist *)((void*)0))
  out_of_mem();
 return (ep);
}
