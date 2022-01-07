
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; struct lline* lost_tail; struct lline* lost_head; } ;
struct sline {TYPE_1__ plost; } ;
struct lline {int len; unsigned long parent_map; struct lline* next; struct lline* prev; } ;


 int FLEX_ALLOC_MEM (struct lline*,char const*,char const*,int) ;

__attribute__((used)) static void append_lost(struct sline *sline, int n, const char *line, int len)
{
 struct lline *lline;
 unsigned long this_mask = (1UL<<n);
 if (line[len-1] == '\n')
  len--;

 FLEX_ALLOC_MEM(lline, line, line, len);
 lline->len = len;
 lline->next = ((void*)0);
 lline->prev = sline->plost.lost_tail;
 if (lline->prev)
  lline->prev->next = lline;
 else
  sline->plost.lost_head = lline;
 sline->plost.lost_tail = lline;
 sline->plost.len++;
 lline->parent_map = this_mask;
}
