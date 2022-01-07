
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mntarg {int error; int list; } ;
struct mntaarg {int dummy; } ;


 int M_MOUNT ;
 int M_WAITOK ;
 int M_ZERO ;
 int SLIST_INIT (int *) ;
 int SLIST_INSERT_HEAD (int *,struct mntaarg*,int ) ;
 int copyinstr (void const*,char*,int,int *) ;
 void* malloc (int,int ,int) ;
 struct mntarg* mount_arg (struct mntarg*,char const*,char*,int) ;
 int next ;

struct mntarg *
mount_argsu(struct mntarg *ma, const char *name, const void *val, int len)
{
 struct mntaarg *maa;
 char *tbuf;

 if (val == ((void*)0))
  return (ma);
 if (ma == ((void*)0)) {
  ma = malloc(sizeof *ma, M_MOUNT, M_WAITOK | M_ZERO);
  SLIST_INIT(&ma->list);
 }
 if (ma->error)
  return (ma);
 maa = malloc(sizeof *maa + len, M_MOUNT, M_WAITOK | M_ZERO);
 SLIST_INSERT_HEAD(&ma->list, maa, next);
 tbuf = (void *)(maa + 1);
 ma->error = copyinstr(val, tbuf, len, ((void*)0));
 return (mount_arg(ma, name, tbuf, -1));
}
