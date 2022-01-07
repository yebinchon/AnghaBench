
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct object_id {int dummy; } ;


 int abbrev ;
 int find_unique_abbrev (struct object_id const*,int ) ;
 int strbuf_addf (struct strbuf*,char*,int,int ) ;

__attribute__((used)) static void append_suffix(int depth, const struct object_id *oid, struct strbuf *dst)
{
 strbuf_addf(dst, "-%d-g%s", depth, find_unique_abbrev(oid, abbrev));
}
