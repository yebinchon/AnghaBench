
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gif_list {int dummy; } ;


 int M_GIF ;
 int free (struct gif_list*,int ) ;

void
gif_hashdestroy(struct gif_list *hash)
{

 free(hash, M_GIF);
}
