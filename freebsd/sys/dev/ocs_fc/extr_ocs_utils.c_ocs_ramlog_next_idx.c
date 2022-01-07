
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ textbuf_count; scalar_t__ textbuf_base; } ;
typedef TYPE_1__ ocs_ramlog_t ;



__attribute__((used)) static uint32_t
ocs_ramlog_next_idx(ocs_ramlog_t *ramlog, uint32_t idx)
{
 idx = idx + 1;

 if (idx >= ramlog->textbuf_count) {
  idx = ramlog->textbuf_base;
 }

 return idx;
}
