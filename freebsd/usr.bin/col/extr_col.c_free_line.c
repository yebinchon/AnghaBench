
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* l_next; } ;
typedef TYPE_1__ LINE ;


 TYPE_1__* line_freelist ;

__attribute__((used)) static void
free_line(LINE *l)
{

 l->l_next = line_freelist;
 line_freelist = l;
}
