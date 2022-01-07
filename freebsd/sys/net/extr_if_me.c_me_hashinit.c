
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct me_list {int dummy; } ;


 int CK_LIST_INIT (struct me_list*) ;
 int ME_HASH_SIZE ;
 int M_IFME ;
 int M_WAITOK ;
 struct me_list* malloc (int,int ,int ) ;

__attribute__((used)) static struct me_list *
me_hashinit(void)
{
 struct me_list *hash;
 int i;

 hash = malloc(sizeof(struct me_list) * ME_HASH_SIZE,
     M_IFME, M_WAITOK);
 for (i = 0; i < ME_HASH_SIZE; i++)
  CK_LIST_INIT(&hash[i]);

 return (hash);
}
