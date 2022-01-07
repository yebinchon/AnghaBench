
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct bus_space_tag {int dummy; } ;
typedef TYPE_1__* bus_space_tag_t ;
struct TYPE_4__ {int bst_type; void* bst_cookie; } ;


 int M_DEVBUF ;
 int M_NOWAIT ;
 TYPE_1__* malloc (int,int ,int ) ;

bus_space_tag_t
sparc64_alloc_bus_tag(void *cookie, int type)
{
 bus_space_tag_t bt;

 bt = malloc(sizeof(struct bus_space_tag), M_DEVBUF, M_NOWAIT);
 if (bt == ((void*)0))
  return (((void*)0));
 bt->bst_cookie = cookie;
 bt->bst_type = type;
 return (bt);
}
