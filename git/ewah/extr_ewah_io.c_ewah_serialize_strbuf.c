
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct ewah_bitmap {int dummy; } ;


 int ewah_serialize_to (struct ewah_bitmap*,int ,struct strbuf*) ;
 int write_strbuf ;

int ewah_serialize_strbuf(struct ewah_bitmap *self, struct strbuf *sb)
{
 return ewah_serialize_to(self, write_strbuf, sb);
}
