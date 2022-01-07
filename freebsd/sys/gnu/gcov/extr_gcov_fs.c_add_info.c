
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_node {int num_loaded; struct gcov_info** loaded_info; struct gcov_info* unloaded_info; } ;
struct gcov_info {int dummy; } ;


 int LOG_WARNING ;
 int M_GCOV ;
 int M_NOWAIT ;
 int M_ZERO ;
 int free (struct gcov_info**,int ) ;
 int gcov_info_filename (struct gcov_info*) ;
 int gcov_info_free (struct gcov_info*) ;
 int gcov_info_is_compatible (struct gcov_info*,struct gcov_info*) ;
 int log (int ,char*,int ) ;
 struct gcov_info** malloc (int,int ,int) ;
 int memcpy (struct gcov_info**,struct gcov_info**,int) ;

__attribute__((used)) static void
add_info(struct gcov_node *node, struct gcov_info *info)
{
 struct gcov_info **loaded_info;
 int num = node->num_loaded;






 loaded_info = malloc((num + 1)* sizeof(struct gcov_info *), M_GCOV, M_NOWAIT|M_ZERO);
 if (!loaded_info) {
  log(LOG_WARNING, "could not add '%s' (out of memory)\n",
   gcov_info_filename(info));
  return;
 }
 memcpy(loaded_info, node->loaded_info,
        num * sizeof(struct gcov_info *));
 loaded_info[num] = info;

 if (num == 0) {




  if (!gcov_info_is_compatible(node->unloaded_info, info)) {
   log(LOG_WARNING, "discarding saved data for %s "
    "(incompatible version)\n",
    gcov_info_filename(info));
   gcov_info_free(node->unloaded_info);
   node->unloaded_info = ((void*)0);
  }
 } else {




  if (!gcov_info_is_compatible(node->loaded_info[0], info)) {
   log(LOG_WARNING, "could not add '%s' (incompatible "
    "version)\n", gcov_info_filename(info));
   free(loaded_info, M_GCOV);
   return;
  }
 }

 free(node->loaded_info, M_GCOV);
 node->loaded_info = loaded_info;
 node->num_loaded = num + 1;
}
