
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const comment_line_char ;
 char* memchr (char const*,char,size_t) ;
 scalar_t__ starts_with (char const*,char*) ;
 size_t wt_status_locate_end (char const*,size_t) ;

size_t ignore_non_trailer(const char *buf, size_t len)
{
 size_t boc = 0;
 size_t bol = 0;
 int in_old_conflicts_block = 0;
 size_t cutoff = wt_status_locate_end(buf, len);

 while (bol < cutoff) {
  const char *next_line = memchr(buf + bol, '\n', len - bol);

  if (!next_line)
   next_line = buf + len;
  else
   next_line++;

  if (buf[bol] == comment_line_char || buf[bol] == '\n') {

   if (!boc)
    boc = bol;

  } else if (starts_with(buf + bol, "Conflicts:\n")) {
   in_old_conflicts_block = 1;
   if (!boc)
    boc = bol;
  } else if (in_old_conflicts_block && buf[bol] == '\t') {
   ;
  } else if (boc) {

   boc = 0;
   in_old_conflicts_block = 0;
  }
  bol = next_line - buf;
 }
 return boc ? len - boc : len - cutoff;
}
