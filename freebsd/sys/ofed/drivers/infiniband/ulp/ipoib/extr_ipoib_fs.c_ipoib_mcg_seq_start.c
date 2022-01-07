
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
typedef void ipoib_mcast_iter ;
typedef int loff_t ;


 void* ipoib_mcast_iter_init (int ) ;
 scalar_t__ ipoib_mcast_iter_next (void*) ;
 int kfree (void*) ;

__attribute__((used)) static void *ipoib_mcg_seq_start(struct seq_file *file, loff_t *pos)
{
 struct ipoib_mcast_iter *iter;
 loff_t n = *pos;

 iter = ipoib_mcast_iter_init(file->private);
 if (!iter)
  return ((void*)0);

 while (n--) {
  if (ipoib_mcast_iter_next(iter)) {
   kfree(iter);
   return ((void*)0);
  }
 }

 return iter;
}
