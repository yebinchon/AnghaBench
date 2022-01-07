
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct index_state {int dummy; } ;


 int convert_to_working_tree_internal (struct index_state const*,char const*,char const*,size_t,struct strbuf*,int ,void*) ;

int async_convert_to_working_tree(const struct index_state *istate,
      const char *path, const char *src,
      size_t len, struct strbuf *dst,
      void *dco)
{
 return convert_to_working_tree_internal(istate, path, src, len, dst, 0, dco);
}
