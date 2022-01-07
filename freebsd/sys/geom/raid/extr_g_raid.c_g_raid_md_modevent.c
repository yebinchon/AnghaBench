
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_md_class {int mdc_priority; } ;
typedef int module_t ;


 int EOPNOTSUPP ;
 struct g_raid_md_class* LIST_FIRST (int *) ;
 int LIST_INSERT_AFTER (struct g_raid_md_class*,struct g_raid_md_class*,int ) ;
 int LIST_INSERT_HEAD (int *,struct g_raid_md_class*,int ) ;
 struct g_raid_md_class* LIST_NEXT (struct g_raid_md_class*,int ) ;
 int LIST_REMOVE (struct g_raid_md_class*,int ) ;


 int g_raid_class ;
 int g_raid_md_classes ;
 int g_raid_started ;
 int g_retaste (int *) ;
 int mdc_list ;

int
g_raid_md_modevent(module_t mod, int type, void *arg)
{
 struct g_raid_md_class *class, *c, *nc;
 int error;

 error = 0;
 class = arg;
 switch (type) {
 case 129:
  c = LIST_FIRST(&g_raid_md_classes);
  if (c == ((void*)0) || c->mdc_priority > class->mdc_priority)
   LIST_INSERT_HEAD(&g_raid_md_classes, class, mdc_list);
  else {
   while ((nc = LIST_NEXT(c, mdc_list)) != ((void*)0) &&
       nc->mdc_priority < class->mdc_priority)
    c = nc;
   LIST_INSERT_AFTER(c, class, mdc_list);
  }
  if (g_raid_started)
   g_retaste(&g_raid_class);
  break;
 case 128:
  LIST_REMOVE(class, mdc_list);
  break;
 default:
  error = EOPNOTSUPP;
  break;
 }

 return (error);
}
