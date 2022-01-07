
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t const uintmax_t ;
struct tmpfs_node {int dummy; } ;
struct tmpfs_mount {size_t tm_pages_used; scalar_t__ tm_nodes_inuse; } ;
struct tmpfs_dirent {int dummy; } ;


 int PAGE_SIZE ;
 size_t howmany (size_t const,int ) ;

size_t
tmpfs_pages_used(struct tmpfs_mount *tmp)
{
 const size_t node_size = sizeof(struct tmpfs_node) +
     sizeof(struct tmpfs_dirent);
 size_t meta_pages;

 meta_pages = howmany((uintmax_t)tmp->tm_nodes_inuse * node_size,
     PAGE_SIZE);
 return (meta_pages + tmp->tm_pages_used);
}
