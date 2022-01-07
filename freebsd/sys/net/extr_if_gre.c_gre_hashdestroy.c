
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gre_list {int dummy; } ;


 int M_GRE ;
 int free (struct gre_list*,int ) ;

void
gre_hashdestroy(struct gre_list *hash)
{

 free(hash, M_GRE);
}
