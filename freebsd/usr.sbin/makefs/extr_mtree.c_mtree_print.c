
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct mtree_fileinfo {char* name; int line; } ;


 struct mtree_fileinfo* SLIST_FIRST (int *) ;
 int fprintf (int ,char*,char const*,...) ;
 int mtree_fileinfo ;
 int stderr ;
 int vfprintf (int ,char const*,int ) ;

__attribute__((used)) static void
mtree_print(const char *msgtype, const char *fmt, va_list ap)
{
 struct mtree_fileinfo *fi;

 if (msgtype != ((void*)0)) {
  fi = SLIST_FIRST(&mtree_fileinfo);
  if (fi != ((void*)0))
   fprintf(stderr, "%s:%u: ", fi->name, fi->line);
  fprintf(stderr, "%s: ", msgtype);
 }
 vfprintf(stderr, fmt, ap);
}
