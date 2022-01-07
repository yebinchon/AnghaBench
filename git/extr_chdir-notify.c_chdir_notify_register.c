
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chdir_notify_entry {char const* name; int list; void* data; int cb; } ;
typedef int chdir_notify_callback ;


 int chdir_notify_entries ;
 int list_add_tail (int *,int *) ;
 struct chdir_notify_entry* xmalloc (int) ;

void chdir_notify_register(const char *name,
      chdir_notify_callback cb,
      void *data)
{
 struct chdir_notify_entry *e = xmalloc(sizeof(*e));
 e->name = name;
 e->cb = cb;
 e->data = data;
 list_add_tail(&e->list, &chdir_notify_entries);
}
