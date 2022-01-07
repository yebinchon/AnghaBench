
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*,...) ;

__attribute__((used)) static void
link_elf_error(const char *filename, const char *s)
{
 if (filename == ((void*)0))
  printf("kldload: %s\n", s);
 else
  printf("kldload: %s: %s\n", filename, s);
}
