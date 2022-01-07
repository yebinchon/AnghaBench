
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch {scalar_t__ is_new; scalar_t__ is_delete; int new_name; int old_name; struct fragment* fragments; } ;
struct fragment {char const* patch; int size; struct fragment* next; scalar_t__ trailing; scalar_t__ leading; scalar_t__ newlines; scalar_t__ oldlines; int linenr; } ;
struct apply_state {scalar_t__ apply_verbosity; int linenr; } ;


 int _ (char*) ;
 int error (int ,int ) ;
 int fprintf_ln (int ,int ,int ) ;
 int free (struct fragment*) ;
 int memcmp (char const*,char*,int) ;
 int parse_fragment (struct apply_state*,char const*,unsigned long,struct patch*,struct fragment*) ;
 int stderr ;
 scalar_t__ verbosity_silent ;
 struct fragment* xcalloc (int,int) ;

__attribute__((used)) static int parse_single_patch(struct apply_state *state,
         const char *line,
         unsigned long size,
         struct patch *patch)
{
 unsigned long offset = 0;
 unsigned long oldlines = 0, newlines = 0, context = 0;
 struct fragment **fragp = &patch->fragments;

 while (size > 4 && !memcmp(line, "@@ -", 4)) {
  struct fragment *fragment;
  int len;

  fragment = xcalloc(1, sizeof(*fragment));
  fragment->linenr = state->linenr;
  len = parse_fragment(state, line, size, patch, fragment);
  if (len <= 0) {
   free(fragment);
   return error(_("corrupt patch at line %d"), state->linenr);
  }
  fragment->patch = line;
  fragment->size = len;
  oldlines += fragment->oldlines;
  newlines += fragment->newlines;
  context += fragment->leading + fragment->trailing;

  *fragp = fragment;
  fragp = &fragment->next;

  offset += len;
  line += len;
  size -= len;
 }
 if (patch->is_new < 0 &&
     (oldlines || (patch->fragments && patch->fragments->next)))
  patch->is_new = 0;
 if (patch->is_delete < 0 &&
     (newlines || (patch->fragments && patch->fragments->next)))
  patch->is_delete = 0;

 if (0 < patch->is_new && oldlines)
  return error(_("new file %s depends on old contents"), patch->new_name);
 if (0 < patch->is_delete && newlines)
  return error(_("deleted file %s still has contents"), patch->old_name);
 if (!patch->is_delete && !newlines && context && state->apply_verbosity > verbosity_silent)
  fprintf_ln(stderr,
      _("** warning: "
        "file %s becomes empty but is not deleted"),
      patch->new_name);

 return offset;
}
