
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct object_id {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int feof (int ) ;
 int flush_current_id (int,struct object_id*,struct object_id*) ;
 int get_one_patchid (struct object_id*,struct object_id*,struct strbuf*,int) ;
 int oidclr (struct object_id*) ;
 int oidcpy (struct object_id*,struct object_id*) ;
 int stdin ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void generate_id_list(int stable)
{
 struct object_id oid, n, result;
 int patchlen;
 struct strbuf line_buf = STRBUF_INIT;

 oidclr(&oid);
 while (!feof(stdin)) {
  patchlen = get_one_patchid(&n, &result, &line_buf, stable);
  flush_current_id(patchlen, &oid, &result);
  oidcpy(&oid, &n);
 }
 strbuf_release(&line_buf);
}
