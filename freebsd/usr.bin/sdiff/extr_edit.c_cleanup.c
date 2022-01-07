
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*,char const*) ;
 int exit (int) ;
 scalar_t__ unlink (char const*) ;

__attribute__((used)) static void
cleanup(const char *filename)
{

 if (unlink(filename))
  err(2, "could not delete: %s", filename);
 exit(2);
}
