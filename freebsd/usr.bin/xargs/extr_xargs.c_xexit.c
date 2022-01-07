
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int const) ;
 int waitchildren (char const*,int) ;

__attribute__((used)) static void
xexit(const char *name, const int exit_code) {
 waitchildren(name, 1);
 exit(exit_code);
}
