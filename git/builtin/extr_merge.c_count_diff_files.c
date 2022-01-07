
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_queue_struct {scalar_t__ nr; } ;
struct diff_options {int dummy; } ;



__attribute__((used)) static void count_diff_files(struct diff_queue_struct *q,
        struct diff_options *opt, void *data)
{
 int *count = data;

 (*count) += q->nr;
}
