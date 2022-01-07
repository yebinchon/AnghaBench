
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct diff_queue_struct {int nr; TYPE_2__** queue; } ;
struct diff_options {int dummy; } ;
struct TYPE_4__ {TYPE_1__* one; } ;
struct TYPE_3__ {int path; } ;


 int strbuf_addch (void*,char) ;
 int strbuf_addstr (void*,int ) ;

__attribute__((used)) static void add_diff_to_buf(struct diff_queue_struct *q,
       struct diff_options *options,
       void *data)
{
 int i;

 for (i = 0; i < q->nr; i++) {
  strbuf_addstr(data, q->queue[i]->one->path);


  strbuf_addch(data, '\0');
 }
}
