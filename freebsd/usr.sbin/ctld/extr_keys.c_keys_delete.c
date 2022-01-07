
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keys {struct keys* keys_data; } ;


 int free (struct keys*) ;

void
keys_delete(struct keys *keys)
{

 free(keys->keys_data);
 free(keys);
}
