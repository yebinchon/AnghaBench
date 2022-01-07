
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ STREQ (char const*,char const*) ;
 int pbstr (char const*) ;

__attribute__((used)) static void
doifelse(const char *argv[], int argc)
{
 while (argc > 4) {
  if (STREQ(argv[2], argv[3])) {
   pbstr(argv[4]);
   break;
  } else if (argc == 6) {
   pbstr(argv[5]);
   break;
  } else {
   argv += 3;
   argc -= 3;
  }
 }
}
