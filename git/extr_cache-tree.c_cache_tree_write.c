
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct cache_tree {int dummy; } ;


 int write_one (struct strbuf*,struct cache_tree*,char*,int ) ;

void cache_tree_write(struct strbuf *sb, struct cache_tree *root)
{
 write_one(sb, root, "", 0);
}
