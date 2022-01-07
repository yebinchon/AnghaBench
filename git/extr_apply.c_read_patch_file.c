
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {scalar_t__ len; scalar_t__ buf; } ;


 int SLOP ;
 int error_errno (char*) ;
 int memset (scalar_t__,int ,int ) ;
 int strbuf_grow (struct strbuf*,int ) ;
 scalar_t__ strbuf_read (struct strbuf*,int,int ) ;

__attribute__((used)) static int read_patch_file(struct strbuf *sb, int fd)
{
 if (strbuf_read(sb, fd, 0) < 0)
  return error_errno("git apply: failed to read");






 strbuf_grow(sb, SLOP);
 memset(sb->buf + sb->len, 0, SLOP);
 return 0;
}
