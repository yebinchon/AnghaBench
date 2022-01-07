
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct stat {int st_mode; } ;
struct object_id {int dummy; } ;
typedef int FILE ;


 scalar_t__ EOF ;
 struct strbuf STRBUF_INIT ;
 int S_ISREG (int ) ;
 int fclose (int *) ;
 int * fopen_or_warn (char const*,char*) ;
 char* git_path_bisect_expected_rev () ;
 int oid_to_hex (struct object_id const*) ;
 scalar_t__ stat (char const*,struct stat*) ;
 scalar_t__ strbuf_getline_lf (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int is_expected_rev(const struct object_id *oid)
{
 const char *filename = git_path_bisect_expected_rev();
 struct stat st;
 struct strbuf str = STRBUF_INIT;
 FILE *fp;
 int res = 0;

 if (stat(filename, &st) || !S_ISREG(st.st_mode))
  return 0;

 fp = fopen_or_warn(filename, "r");
 if (!fp)
  return 0;

 if (strbuf_getline_lf(&str, fp) != EOF)
  res = !strcmp(str.buf, oid_to_hex(oid));

 strbuf_release(&str);
 fclose(fp);

 return res;
}
