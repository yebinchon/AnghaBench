
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_consumer {TYPE_1__* provider; } ;
typedef int off_t ;
struct TYPE_2__ {int sectorsize; } ;


 int ENOENT ;
 int KASSERT (int ,char*) ;
 void* g_read_data (struct g_consumer*,int,int,int *) ;

int
g_use_g_read_data(void *devfd, off_t loc, void **bufp, int size)
{
 struct g_consumer *cp;

 KASSERT(*bufp == ((void*)0),
     ("g_use_g_read_data: non-NULL *bufp %p\n", *bufp));

 cp = (struct g_consumer *)devfd;






 if (loc % cp->provider->sectorsize != 0)
  return (ENOENT);
 *bufp = g_read_data(cp, loc, size, ((void*)0));
 if (*bufp == ((void*)0))
  return (ENOENT);
 return (0);
}
