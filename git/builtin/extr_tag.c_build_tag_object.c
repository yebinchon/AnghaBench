
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct object_id {int dummy; } ;


 int _ (char*) ;
 scalar_t__ do_sign (struct strbuf*) ;
 int error (int ) ;
 int tag_type ;
 scalar_t__ write_object_file (int ,int ,int ,struct object_id*) ;

__attribute__((used)) static int build_tag_object(struct strbuf *buf, int sign, struct object_id *result)
{
 if (sign && do_sign(buf) < 0)
  return error(_("unable to sign the tag"));
 if (write_object_file(buf->buf, buf->len, tag_type, result) < 0)
  return error(_("unable to write tag file"));
 return 0;
}
