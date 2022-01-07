
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lio_stailq_node {int dummy; } ;
struct lio_stailq_head {int dummy; } ;


 scalar_t__ STAILQ_EMPTY (struct lio_stailq_head*) ;
 struct lio_stailq_node* STAILQ_FIRST (struct lio_stailq_head*) ;
 int STAILQ_REMOVE_HEAD (struct lio_stailq_head*,int ) ;
 int entries ;

__attribute__((used)) static inline struct lio_stailq_node *
lio_delete_first_node(struct lio_stailq_head *root)
{
 struct lio_stailq_node *node;

 if (STAILQ_EMPTY(root))
  node = ((void*)0);
 else
  node = STAILQ_FIRST(root);

 if (node != ((void*)0))
  STAILQ_REMOVE_HEAD(root, entries);

 return (node);
}
