
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int D_BRIEF ;






 int diff_format ;
 int printf (char*,char*,char const*,...) ;
 int sflag ;

void
print_status(int val, char *path1, char *path2, const char *entry)
{
 switch (val) {
 case 134:
  printf("Binary files %s%s and %s%s differ\n",
      path1, entry, path2, entry);
  break;
 case 133:
  if (diff_format == D_BRIEF)
   printf("Files %s%s and %s%s differ\n",
       path1, entry, path2, entry);
  break;
 case 130:
  if (sflag)
   printf("Files %s%s and %s%s are identical\n",
       path1, entry, path2, entry);
  break;
 case 132:
  printf("File %s%s is a directory while file %s%s is a regular file\n",
      path1, entry, path2, entry);
  break;
 case 131:
  printf("File %s%s is a regular file while file %s%s is a directory\n",
      path1, entry, path2, entry);
  break;
 case 129:
  printf("File %s%s is not a regular file or directory and was skipped\n",
      path1, entry);
  break;
 case 128:
  printf("File %s%s is not a regular file or directory and was skipped\n",
      path2, entry);
  break;
 }
}
