
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_tr_class {int trc_priority; } ;
typedef int module_t ;


 int EOPNOTSUPP ;
 struct g_raid_tr_class* LIST_FIRST (int *) ;
 int LIST_INSERT_AFTER (struct g_raid_tr_class*,struct g_raid_tr_class*,int ) ;
 int LIST_INSERT_HEAD (int *,struct g_raid_tr_class*,int ) ;
 struct g_raid_tr_class* LIST_NEXT (struct g_raid_tr_class*,int ) ;
 int LIST_REMOVE (struct g_raid_tr_class*,int ) ;


 int g_raid_tr_classes ;
 int trc_list ;

int
g_raid_tr_modevent(module_t mod, int type, void *arg)
{
 struct g_raid_tr_class *class, *c, *nc;
 int error;

 error = 0;
 class = arg;
 switch (type) {
 case 129:
  c = LIST_FIRST(&g_raid_tr_classes);
  if (c == ((void*)0) || c->trc_priority > class->trc_priority)
   LIST_INSERT_HEAD(&g_raid_tr_classes, class, trc_list);
  else {
   while ((nc = LIST_NEXT(c, trc_list)) != ((void*)0) &&
       nc->trc_priority < class->trc_priority)
    c = nc;
   LIST_INSERT_AFTER(c, class, trc_list);
  }
  break;
 case 128:
  LIST_REMOVE(class, trc_list);
  break;
 default:
  error = EOPNOTSUPP;
  break;
 }

 return (error);
}
