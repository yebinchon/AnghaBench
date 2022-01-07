
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_node {scalar_t__ unloaded_info; } ;
struct gcov_info {int dummy; } ;


 int LOG_WARNING ;
 int gcov_info_add (scalar_t__,struct gcov_info*) ;
 scalar_t__ gcov_info_dup (struct gcov_info*) ;
 int gcov_info_filename (struct gcov_info*) ;
 int log (int ,char*,int ) ;

__attribute__((used)) static void
save_info(struct gcov_node *node, struct gcov_info *info)
{
 if (node->unloaded_info)
  gcov_info_add(node->unloaded_info, info);
 else {
  node->unloaded_info = gcov_info_dup(info);
  if (!node->unloaded_info) {
   log(LOG_WARNING, "could not save data for '%s' "
    "(out of memory)\n",
    gcov_info_filename(info));
  }
 }
}
