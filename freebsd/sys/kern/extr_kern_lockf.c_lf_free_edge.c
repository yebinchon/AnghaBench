
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lockf_edge {int dummy; } ;


 int M_LOCKF ;
 int free (struct lockf_edge*,int ) ;

__attribute__((used)) static void
lf_free_edge(struct lockf_edge *e)
{

 free(e, M_LOCKF);
}
