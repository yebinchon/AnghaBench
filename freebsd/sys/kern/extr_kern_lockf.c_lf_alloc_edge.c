
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lockf_edge {int dummy; } ;


 int M_LOCKF ;
 int M_WAITOK ;
 int M_ZERO ;
 struct lockf_edge* malloc (int,int ,int) ;

__attribute__((used)) static struct lockf_edge *
lf_alloc_edge(void)
{

 return (malloc(sizeof(struct lockf_edge), M_LOCKF, M_WAITOK|M_ZERO));
}
