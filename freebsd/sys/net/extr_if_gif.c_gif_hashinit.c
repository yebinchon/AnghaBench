
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gif_list {int dummy; } ;


 int CK_LIST_INIT (struct gif_list*) ;
 int GIF_HASH_SIZE ;
 int M_GIF ;
 int M_WAITOK ;
 struct gif_list* malloc (int,int ,int ) ;

struct gif_list *
gif_hashinit(void)
{
 struct gif_list *hash;
 int i;

 hash = malloc(sizeof(struct gif_list) * GIF_HASH_SIZE,
     M_GIF, M_WAITOK);
 for (i = 0; i < GIF_HASH_SIZE; i++)
  CK_LIST_INIT(&hash[i]);

 return (hash);
}
