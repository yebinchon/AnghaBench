
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_list_entry {struct fb_info* fb_info; } ;
struct fb_info {int dummy; } ;


 scalar_t__ LIST_EMPTY (int *) ;
 int LIST_INSERT_HEAD (int *,struct fb_list_entry*,int ) ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int fb_init (struct fb_list_entry*,int ) ;
 int fb_list ;
 int fb_list_head ;
 struct fb_list_entry* fbd_find (struct fb_info*) ;
 int framebuffer_dev_unit ;
 struct fb_list_entry* malloc (int,int ,int) ;
 int vt_fb_attach (struct fb_info*) ;

int
fbd_register(struct fb_info* info)
{
 struct fb_list_entry *entry;
 int err, first;

 first = 0;
 if (LIST_EMPTY(&fb_list_head))
  first++;

 entry = fbd_find(info);
 if (entry != ((void*)0)) {

  return (0);
 }

 entry = malloc(sizeof(struct fb_list_entry), M_DEVBUF, M_WAITOK|M_ZERO);
 entry->fb_info = info;

 LIST_INSERT_HEAD(&fb_list_head, entry, fb_list);

 err = fb_init(entry, framebuffer_dev_unit++);
 if (err)
  return (err);

 if (first) {
  err = vt_fb_attach(info);
  if (err)
   return (err);
 }

 return (0);
}
