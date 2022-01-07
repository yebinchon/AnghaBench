
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; } ;


 char* bits_to_msg (unsigned int) ;
 int garbage ;
 int size_garbage ;
 int stat (char const*,struct stat*) ;
 int warning (char*,char const*,char const*) ;

__attribute__((used)) static void real_report_garbage(unsigned seen_bits, const char *path)
{
 struct stat st;
 const char *desc = bits_to_msg(seen_bits);

 if (!desc)
  return;

 if (!stat(path, &st))
  size_garbage += st.st_size;
 warning("%s: %s", desc, path);
 garbage++;
}
