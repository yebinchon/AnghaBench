
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udf_node {struct file_entry* fentry; } ;
struct TYPE_2__ {int flags; } ;
struct file_entry {TYPE_1__ icbtag; } ;


 int le16toh (int ) ;

__attribute__((used)) static inline int
is_data_in_fentry(const struct udf_node *node)
{
 const struct file_entry *fentry = node->fentry;

 return ((le16toh(fentry->icbtag.flags) & 0x7) == 3);
}
