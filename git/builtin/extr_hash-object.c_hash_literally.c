
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct object_id {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int hash_object_file_literally (int ,int ,char const*,struct object_id*,unsigned int) ;
 scalar_t__ strbuf_read (struct strbuf*,int,int) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int hash_literally(struct object_id *oid, int fd, const char *type, unsigned flags)
{
 struct strbuf buf = STRBUF_INIT;
 int ret;

 if (strbuf_read(&buf, fd, 4096) < 0)
  ret = -1;
 else
  ret = hash_object_file_literally(buf.buf, buf.len, type, oid,
       flags);
 strbuf_release(&buf);
 return ret;
}
