
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int normalize_path_copy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 char* xmalloc (scalar_t__) ;
 char* xstrfmt (char*,char const*,char const*) ;

__attribute__((used)) static char *get_split_graph_filename(const char *obj_dir,
          const char *oid_hex)
{
 char *filename = xstrfmt("%s/info/commit-graphs/graph-%s.graph",
     obj_dir,
     oid_hex);
 char *normalized = xmalloc(strlen(filename) + 1);
 normalize_path_copy(normalized, filename);
 free(filename);
 return normalized;
}
