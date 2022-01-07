
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 struct strbuf STRBUF_INIT ;
 int git_path_bisect_expected_rev () ;
 int strbuf_read_file (struct strbuf*,int ,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_trim (struct strbuf*) ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static int is_expected_rev(const char *expected_hex)
{
 struct strbuf actual_hex = STRBUF_INIT;
 int res = 0;
 if (strbuf_read_file(&actual_hex, git_path_bisect_expected_rev(), 0) >= 40) {
  strbuf_trim(&actual_hex);
  res = !strcmp(actual_hex.buf, expected_hex);
 }
 strbuf_release(&actual_hex);
 return res;
}
