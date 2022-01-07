
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
struct gcov_node {scalar_t__ num_loaded; } ;
struct gcov_info {int dummy; } ;
struct file {struct seq_file* private_data; } ;
typedef size_t ssize_t ;
typedef int off_t ;


 int gcov_info_filename (struct gcov_info*) ;
 int gcov_info_reset (struct gcov_info*) ;
 struct gcov_info* gcov_iter_get_info (int ) ;
 struct gcov_node* get_node_by_name (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int node_lock ;
 int remove_node (struct gcov_node*) ;
 int reset_node (struct gcov_node*) ;

__attribute__((used)) static ssize_t
gcov_seq_write(struct file *file, const char *addr, size_t len, off_t *pos)
{
 struct seq_file *seq;
 struct gcov_info *info;
 struct gcov_node *node;

 seq = file->private_data;
 info = gcov_iter_get_info(seq->private);
 mtx_lock(&node_lock);
 node = get_node_by_name(gcov_info_filename(info));
 if (node) {

  if (node->num_loaded == 0)
   remove_node(node);
  else
   reset_node(node);
 }

 gcov_info_reset(info);
 mtx_unlock(&node_lock);

 return (len);
}
