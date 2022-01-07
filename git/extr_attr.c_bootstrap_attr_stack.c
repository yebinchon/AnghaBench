
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct index_state {int dummy; } ;
struct attr_stack {int dummy; } ;
struct TYPE_2__ {scalar_t__ have_repository; } ;


 int GITATTRIBUTES_FILE ;
 int builtin_attr ;
 scalar_t__ get_home_gitattributes () ;
 scalar_t__ git_attr_system () ;
 scalar_t__ git_etc_gitattributes () ;
 scalar_t__ git_path_info_attributes () ;
 int push_stack (struct attr_stack**,struct attr_stack*,int *,int ) ;
 struct attr_stack* read_attr (struct index_state const*,int ,int) ;
 struct attr_stack* read_attr_from_array (int ) ;
 struct attr_stack* read_attr_from_file (scalar_t__,int) ;
 TYPE_1__* startup_info ;
 struct attr_stack* xcalloc (int,int) ;
 int * xstrdup (char*) ;

__attribute__((used)) static void bootstrap_attr_stack(const struct index_state *istate,
     struct attr_stack **stack)
{
 struct attr_stack *e;

 if (*stack)
  return;


 e = read_attr_from_array(builtin_attr);
 push_stack(stack, e, ((void*)0), 0);


 if (git_attr_system()) {
  e = read_attr_from_file(git_etc_gitattributes(), 1);
  push_stack(stack, e, ((void*)0), 0);
 }


 if (get_home_gitattributes()) {
  e = read_attr_from_file(get_home_gitattributes(), 1);
  push_stack(stack, e, ((void*)0), 0);
 }


 e = read_attr(istate, GITATTRIBUTES_FILE, 1);
 push_stack(stack, e, xstrdup(""), 0);


 if (startup_info->have_repository)
  e = read_attr_from_file(git_path_info_attributes(), 1);
 else
  e = ((void*)0);
 if (!e)
  e = xcalloc(1, sizeof(struct attr_stack));
 push_stack(stack, e, ((void*)0), 0);
}
