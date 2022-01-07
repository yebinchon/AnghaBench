
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* l_next; } ;
typedef TYPE_1__ LINE ;


 int NALLOC ;
 int err (int,int *) ;
 TYPE_1__* line_freelist ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* realloc (int *,int) ;

__attribute__((used)) static LINE *
alloc_line(void)
{
 LINE *l;
 int i;

 if (!line_freelist) {
  if ((l = realloc(((void*)0), sizeof(LINE) * NALLOC)) == ((void*)0))
   err(1, ((void*)0));
  line_freelist = l;
  for (i = 1; i < NALLOC; i++, l++)
   l->l_next = l + 1;
  l->l_next = ((void*)0);
 }
 l = line_freelist;
 line_freelist = l->l_next;

 memset(l, 0, sizeof(LINE));
 return (l);
}
