
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partition_entry {scalar_t__* index; } ;


 int assert (int ) ;

__attribute__((used)) static int
partition_entry_cmp(const struct partition_entry *a,
    const struct partition_entry *b)
{
 assert(a != ((void*)0));
 assert(b != ((void*)0));

 if (a->index[0] < b->index[0])
  return (-1);

 if (a->index[0] > b->index[0])
  return (+1);

 if (a->index[1] < b->index[1])
  return (-1);

 if (a->index[1] > b->index[1])
  return (+1);

 return (0);
}
