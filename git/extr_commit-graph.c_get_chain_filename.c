
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* xstrfmt (char*,char const*) ;

__attribute__((used)) static char *get_chain_filename(const char *obj_dir)
{
 return xstrfmt("%s/info/commit-graphs/commit-graph-chain", obj_dir);
}
