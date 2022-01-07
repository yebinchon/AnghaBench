
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blame_chunk_cb_data {long offset; int ignore_diffs; int target; int parent; int srcq; int dstq; } ;


 int blame_chunk (int *,int *,long,long,long,long,int ,int ,int ) ;
 int die (char*) ;

__attribute__((used)) static int blame_chunk_cb(long start_a, long count_a,
     long start_b, long count_b, void *data)
{
 struct blame_chunk_cb_data *d = data;
 if (start_a - start_b != d->offset)
  die("internal error in blame::blame_chunk_cb");
 blame_chunk(&d->dstq, &d->srcq, start_b, start_a - start_b,
      start_b + count_b, count_a, d->parent, d->target,
      d->ignore_diffs);
 d->offset = start_a + count_a - (start_b + count_b);
 return 0;
}
