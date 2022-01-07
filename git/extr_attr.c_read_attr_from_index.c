
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;
struct attr_stack {int dummy; } ;


 int free (char*) ;
 int handle_attr_line (struct attr_stack*,char*,char const*,int,int) ;
 char* read_blob_data_from_index (struct index_state const*,char const*,int *) ;
 char* strchrnul (char*,char) ;
 struct attr_stack* xcalloc (int,int) ;

__attribute__((used)) static struct attr_stack *read_attr_from_index(const struct index_state *istate,
            const char *path,
            int macro_ok)
{
 struct attr_stack *res;
 char *buf, *sp;
 int lineno = 0;

 if (!istate)
  return ((void*)0);

 buf = read_blob_data_from_index(istate, path, ((void*)0));
 if (!buf)
  return ((void*)0);

 res = xcalloc(1, sizeof(*res));
 for (sp = buf; *sp; ) {
  char *ep;
  int more;

  ep = strchrnul(sp, '\n');
  more = (*ep == '\n');
  *ep = '\0';
  handle_attr_line(res, sp, path, ++lineno, macro_ok);
  sp = ep + more;
 }
 free(buf);
 return res;
}
