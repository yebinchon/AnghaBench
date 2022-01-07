
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_tree {int dummy; } ;


 struct cache_tree* read_one (char const**,unsigned long*) ;

struct cache_tree *cache_tree_read(const char *buffer, unsigned long size)
{
 if (buffer[0])
  return ((void*)0);
 return read_one(&buffer, &size);
}
