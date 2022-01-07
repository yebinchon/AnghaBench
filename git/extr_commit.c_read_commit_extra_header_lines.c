
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct commit_extra_header {int len; void* value; struct commit_extra_header* next; int key; } ;


 struct strbuf STRBUF_INIT ;
 scalar_t__ excluded_header_field (char const*,int,char const**) ;
 char* memchr (char const*,char,int) ;
 scalar_t__ standard_header_field (char const*,int) ;
 int strbuf_add (struct strbuf*,char const*,int) ;
 void* strbuf_detach (struct strbuf*,int *) ;
 int strbuf_reset (struct strbuf*) ;
 struct commit_extra_header* xcalloc (int,int) ;
 int xmemdupz (char const*,int) ;

__attribute__((used)) static struct commit_extra_header *read_commit_extra_header_lines(
 const char *buffer, size_t size,
 const char **exclude)
{
 struct commit_extra_header *extra = ((void*)0), **tail = &extra, *it = ((void*)0);
 const char *line, *next, *eof, *eob;
 struct strbuf buf = STRBUF_INIT;

 for (line = buffer, eob = line + size;
      line < eob && *line != '\n';
      line = next) {
  next = memchr(line, '\n', eob - line);
  next = next ? next + 1 : eob;
  if (*line == ' ') {

   if (it)
    strbuf_add(&buf, line + 1, next - (line + 1));
   continue;
  }
  if (it)
   it->value = strbuf_detach(&buf, &it->len);
  strbuf_reset(&buf);
  it = ((void*)0);

  eof = memchr(line, ' ', next - line);
  if (!eof)
   eof = next;
  else if (standard_header_field(line, eof - line) ||
    excluded_header_field(line, eof - line, exclude))
   continue;

  it = xcalloc(1, sizeof(*it));
  it->key = xmemdupz(line, eof-line);
  *tail = it;
  tail = &it->next;
  if (eof + 1 < next)
   strbuf_add(&buf, eof + 1, next - (eof + 1));
 }
 if (it)
  it->value = strbuf_detach(&buf, &it->len);
 return extra;
}
