
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct index_state {int dummy; } ;
struct attr_stack {int originlen; int origin; struct attr_stack* prev; } ;


 int GITATTRIBUTES_FILE ;
 struct strbuf STRBUF_INIT ;
 int assert (int ) ;
 int attr_stack_free (struct attr_stack*) ;
 int bootstrap_attr_stack (struct index_state const*,struct attr_stack**) ;
 int debug_pop (struct attr_stack*) ;
 scalar_t__ is_dir_sep (char const) ;
 int push_stack (struct attr_stack**,struct attr_stack*,char*,size_t) ;
 struct attr_stack* read_attr (struct index_state const*,int ,int ) ;
 int strbuf_add (struct strbuf*,char const*,size_t) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 int strbuf_addstr (struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,size_t) ;
 int strncmp (int ,char const*,int) ;
 char* xstrdup (int ) ;

__attribute__((used)) static void prepare_attr_stack(const struct index_state *istate,
          const char *path, int dirlen,
          struct attr_stack **stack)
{
 struct attr_stack *info;
 struct strbuf pathbuf = STRBUF_INIT;
 bootstrap_attr_stack(istate, stack);




 info = *stack;
 *stack = info->prev;







 while ((*stack)->origin) {
  int namelen = (*stack)->originlen;
  struct attr_stack *elem;

  elem = *stack;
  if (namelen <= dirlen &&
      !strncmp(elem->origin, path, namelen) &&
      (!namelen || path[namelen] == '/'))
   break;

  debug_pop(elem);
  *stack = elem->prev;
  attr_stack_free(elem);
 }







 assert((*stack)->origin);

 strbuf_addstr(&pathbuf, (*stack)->origin);

 while (pathbuf.len < dirlen) {
  size_t len = pathbuf.len;
  struct attr_stack *next;
  char *origin;


  if (len < dirlen && is_dir_sep(path[len]))
   len++;

  while (len < dirlen && !is_dir_sep(path[len]))
   len++;

  if (pathbuf.len > 0)
   strbuf_addch(&pathbuf, '/');
  strbuf_add(&pathbuf, path + pathbuf.len, (len - pathbuf.len));
  strbuf_addf(&pathbuf, "/%s", GITATTRIBUTES_FILE);

  next = read_attr(istate, pathbuf.buf, 0);


  strbuf_setlen(&pathbuf, len);

  origin = xstrdup(pathbuf.buf);
  push_stack(stack, next, origin, len);
 }




 push_stack(stack, info, ((void*)0), 0);

 strbuf_release(&pathbuf);
}
