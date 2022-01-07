
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stream_filter {int dummy; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {int * vtbl; } ;
struct ident_filter {scalar_t__ state; TYPE_1__ filter; int left; int ident; } ;


 int ident_vtbl ;
 int oid_to_hex (struct object_id const*) ;
 int strbuf_init (int *,int ) ;
 struct ident_filter* xmalloc (int) ;
 int xsnprintf (int ,int,char*,int ) ;

__attribute__((used)) static struct stream_filter *ident_filter(const struct object_id *oid)
{
 struct ident_filter *ident = xmalloc(sizeof(*ident));

 xsnprintf(ident->ident, sizeof(ident->ident),
    ": %s $", oid_to_hex(oid));
 strbuf_init(&ident->left, 0);
 ident->filter.vtbl = &ident_vtbl;
 ident->state = 0;
 return (struct stream_filter *)ident;
}
