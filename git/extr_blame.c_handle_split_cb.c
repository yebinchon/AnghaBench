
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct handle_split_cb_data {long tlno; long plno; int split; int parent; int ent; int sb; } ;


 int handle_split (int ,int ,long,long,long,int ,int ) ;

__attribute__((used)) static int handle_split_cb(long start_a, long count_a,
      long start_b, long count_b, void *data)
{
 struct handle_split_cb_data *d = data;
 handle_split(d->sb, d->ent, d->tlno, d->plno, start_b, d->parent,
       d->split);
 d->plno = start_a + count_a;
 d->tlno = start_b + count_b;
 return 0;
}
