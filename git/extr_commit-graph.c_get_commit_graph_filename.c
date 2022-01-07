
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int normalize_path_copy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 char* xmalloc (scalar_t__) ;
 char* xstrfmt (char*,char const*) ;

char *get_commit_graph_filename(const char *obj_dir)
{
 char *filename = xstrfmt("%s/info/commit-graph", obj_dir);
 char *normalized = xmalloc(strlen(filename) + 1);
 normalize_path_copy(normalized, filename);
 free(filename);
 return normalized;
}
