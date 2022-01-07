
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct object_id {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int die (char*) ;
 int die_errno (char*) ;
 char* oid_to_hex (struct object_id*) ;
 int printf (char*,char*) ;
 scalar_t__ strbuf_read (struct strbuf*,int ,int) ;
 int strbuf_release (struct strbuf*) ;
 int tag_type ;
 int usage (char*) ;
 scalar_t__ verify_tag (int ,int ) ;
 scalar_t__ write_object_file (int ,int ,int ,struct object_id*) ;

int cmd_mktag(int argc, const char **argv, const char *prefix)
{
 struct strbuf buf = STRBUF_INIT;
 struct object_id result;

 if (argc != 1)
  usage("git mktag");

 if (strbuf_read(&buf, 0, 4096) < 0) {
  die_errno("could not read from stdin");
 }



 if (verify_tag(buf.buf, buf.len) < 0)
  die("invalid tag signature file");

 if (write_object_file(buf.buf, buf.len, tag_type, &result) < 0)
  die("unable to write tag file");

 strbuf_release(&buf);
 printf("%s\n", oid_to_hex(&result));
 return 0;
}
