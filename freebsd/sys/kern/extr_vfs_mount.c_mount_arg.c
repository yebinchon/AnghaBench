
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mntarg {int len; TYPE_1__* v; scalar_t__ error; int list; } ;
struct TYPE_3__ {int iov_len; void* iov_base; } ;


 int M_MOUNT ;
 int M_WAITOK ;
 int M_ZERO ;
 int SLIST_INIT (int *) ;
 struct mntarg* malloc (int,int ,int) ;
 TYPE_1__* realloc (TYPE_1__*,int,int ,int) ;
 void* strlen (void const*) ;

struct mntarg *
mount_arg(struct mntarg *ma, const char *name, const void *val, int len)
{

 if (ma == ((void*)0)) {
  ma = malloc(sizeof *ma, M_MOUNT, M_WAITOK | M_ZERO);
  SLIST_INIT(&ma->list);
 }
 if (ma->error)
  return (ma);

 ma->v = realloc(ma->v, sizeof *ma->v * (ma->len + 2),
     M_MOUNT, M_WAITOK);
 ma->v[ma->len].iov_base = (void *)(uintptr_t)name;
 ma->v[ma->len].iov_len = strlen(name) + 1;
 ma->len++;

 ma->v[ma->len].iov_base = (void *)(uintptr_t)val;
 if (len < 0)
  ma->v[ma->len].iov_len = strlen(val) + 1;
 else
  ma->v[ma->len].iov_len = len;
 ma->len++;
 return (ma);
}
