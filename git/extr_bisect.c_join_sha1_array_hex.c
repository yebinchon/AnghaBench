
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct oid_array {int nr; scalar_t__ oid; } ;


 struct strbuf STRBUF_INIT ;
 int oid_to_hex (scalar_t__) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,int ) ;
 char* strbuf_detach (struct strbuf*,int *) ;

__attribute__((used)) static char *join_sha1_array_hex(struct oid_array *array, char delim)
{
 struct strbuf joined_hexs = STRBUF_INIT;
 int i;

 for (i = 0; i < array->nr; i++) {
  strbuf_addstr(&joined_hexs, oid_to_hex(array->oid + i));
  if (i + 1 < array->nr)
   strbuf_addch(&joined_hexs, delim);
 }

 return strbuf_detach(&joined_hexs, ((void*)0));
}
