
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int*) ;
 int BUG (char*,int) ;
 int GIT_COLOR_AUTO ;
 int check_auto_color (int) ;
 int git_use_color_default ;

int want_color_fd(int fd, int var)
{







 static int want_auto[3] = { -1, -1, -1 };

 if (fd < 1 || fd >= ARRAY_SIZE(want_auto))
  BUG("file descriptor out of range: %d", fd);

 if (var < 0)
  var = git_use_color_default;

 if (var == GIT_COLOR_AUTO) {
  if (want_auto[fd] < 0)
   want_auto[fd] = check_auto_color(fd);
  return want_auto[fd];
 }
 return var;
}
