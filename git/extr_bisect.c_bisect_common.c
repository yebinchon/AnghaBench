
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {scalar_t__ tree_objects; } ;


 int die (char*) ;
 int mark_edges_uninteresting (struct rev_info*,int *,int ) ;
 scalar_t__ prepare_revision_walk (struct rev_info*) ;

__attribute__((used)) static void bisect_common(struct rev_info *revs)
{
 if (prepare_revision_walk(revs))
  die("revision walk setup failed");
 if (revs->tree_objects)
  mark_edges_uninteresting(revs, ((void*)0), 0);
}
