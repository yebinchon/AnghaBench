
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ close (int) ;
 int fail (char const*,char*) ;

__attribute__((used)) static void
ipdivert_close(const char *test, int s)
{

 if (close(s) < 0)
  fail(test, "close");
}
