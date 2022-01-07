
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef struct strbuf {char const* buf; } const strbuf ;
struct object {int oid; } ;
struct TYPE_2__ {int object_names; } ;


 int ARRAY_SIZE (struct strbuf const*) ;

 TYPE_1__ fsck_walk_options ;
 char* lookup_decoration (int ,struct object*) ;
 scalar_t__ name_objects ;
 int oid_to_hex (int *) ;
 int strbuf_addf (struct strbuf const*,char*,char*) ;
 int strbuf_addstr (struct strbuf const*,int ) ;
 int strbuf_reset (struct strbuf const*) ;

__attribute__((used)) static const char *describe_object(struct object *obj)
{
 static struct strbuf bufs[] = {
  128, 128, 128, 128
 };
 static int b = 0;
 struct strbuf *buf;
 char *name = ((void*)0);

 if (name_objects)
  name = lookup_decoration(fsck_walk_options.object_names, obj);

 buf = bufs + b;
 b = (b + 1) % ARRAY_SIZE(bufs);
 strbuf_reset(buf);
 strbuf_addstr(buf, oid_to_hex(&obj->oid));
 if (name)
  strbuf_addf(buf, " (%s)", name);

 return buf->buf;
}
