
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gre_list {int dummy; } ;


 int CK_LIST_INIT (struct gre_list*) ;
 int GRE_HASH_SIZE ;
 int M_GRE ;
 int M_WAITOK ;
 struct gre_list* malloc (int,int ,int ) ;

struct gre_list *
gre_hashinit(void)
{
 struct gre_list *hash;
 int i;

 hash = malloc(sizeof(struct gre_list) * GRE_HASH_SIZE,
     M_GRE, M_WAITOK);
 for (i = 0; i < GRE_HASH_SIZE; i++)
  CK_LIST_INIT(&hash[i]);

 return (hash);
}
