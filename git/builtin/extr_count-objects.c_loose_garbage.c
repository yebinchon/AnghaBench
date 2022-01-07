
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PACKDIR_FILE_GARBAGE ;
 int report_garbage (int ,char const*) ;
 scalar_t__ verbose ;

__attribute__((used)) static void loose_garbage(const char *path)
{
 if (verbose)
  report_garbage(PACKDIR_FILE_GARBAGE, path);
}
