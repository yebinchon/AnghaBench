
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch {int lines_added; int lines_deleted; scalar_t__ is_new; scalar_t__ is_delete; scalar_t__ recount; int ws_rule; } ;
struct fragment {unsigned long oldlines; unsigned long newlines; unsigned long leading; unsigned long trailing; } ;
struct apply_state {int ws_error_action; int apply_in_reverse; int linenr; } ;


 int _ (char*) ;
 int check_old_for_crlf (struct patch*,char const*,int) ;
 int check_whitespace (struct apply_state*,char const*,int,int ) ;
 int correct_ws_error ;
 int error (int ) ;
 int linelen (char const*,unsigned long) ;
 scalar_t__ memcmp (char const*,char*,int) ;
 int nowarn_ws_error ;
 int parse_fragment_header (char const*,int,struct fragment*) ;
 int recount_diff (char const*,unsigned long,struct fragment*) ;

__attribute__((used)) static int parse_fragment(struct apply_state *state,
     const char *line,
     unsigned long size,
     struct patch *patch,
     struct fragment *fragment)
{
 int added, deleted;
 int len = linelen(line, size), offset;
 unsigned long oldlines, newlines;
 unsigned long leading, trailing;

 offset = parse_fragment_header(line, len, fragment);
 if (offset < 0)
  return -1;
 if (offset > 0 && patch->recount)
  recount_diff(line + offset, size - offset, fragment);
 oldlines = fragment->oldlines;
 newlines = fragment->newlines;
 leading = 0;
 trailing = 0;


 line += len;
 size -= len;
 state->linenr++;
 added = deleted = 0;
 for (offset = len;
      0 < size;
      offset += len, size -= len, line += len, state->linenr++) {
  if (!oldlines && !newlines)
   break;
  len = linelen(line, size);
  if (!len || line[len-1] != '\n')
   return -1;
  switch (*line) {
  default:
   return -1;
  case '\n':
  case ' ':
   oldlines--;
   newlines--;
   if (!deleted && !added)
    leading++;
   trailing++;
   check_old_for_crlf(patch, line, len);
   if (!state->apply_in_reverse &&
       state->ws_error_action == correct_ws_error)
    check_whitespace(state, line, len, patch->ws_rule);
   break;
  case '-':
   if (!state->apply_in_reverse)
    check_old_for_crlf(patch, line, len);
   if (state->apply_in_reverse &&
       state->ws_error_action != nowarn_ws_error)
    check_whitespace(state, line, len, patch->ws_rule);
   deleted++;
   oldlines--;
   trailing = 0;
   break;
  case '+':
   if (state->apply_in_reverse)
    check_old_for_crlf(patch, line, len);
   if (!state->apply_in_reverse &&
       state->ws_error_action != nowarn_ws_error)
    check_whitespace(state, line, len, patch->ws_rule);
   added++;
   newlines--;
   trailing = 0;
   break;
  case '\\':
   if (len < 12 || memcmp(line, "\\ ", 2))
    return -1;
   break;
  }
 }
 if (oldlines || newlines)
  return -1;
 if (!patch->recount && !deleted && !added)
  return -1;

 fragment->leading = leading;
 fragment->trailing = trailing;






 if (12 < size && !memcmp(line, "\\ ", 2))
  offset += linelen(line, size);

 patch->lines_added += added;
 patch->lines_deleted += deleted;

 if (0 < patch->is_new && oldlines)
  return error(_("new file depends on old contents"));
 if (0 < patch->is_delete && newlines)
  return error(_("deleted file still has contents"));
 return offset;
}
