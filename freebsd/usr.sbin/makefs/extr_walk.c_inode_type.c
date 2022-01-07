
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISFIFO (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ S_ISSOCK (int ) ;

const char *
inode_type(mode_t mode)
{
 if (S_ISREG(mode))
  return ("file");
 if (S_ISLNK(mode))
  return ("symlink");
 if (S_ISDIR(mode))
  return ("dir");
 if (S_ISLNK(mode))
  return ("link");
 if (S_ISFIFO(mode))
  return ("fifo");
 if (S_ISSOCK(mode))
  return ("socket");

 if (S_ISCHR(mode))
  return ("char");
 if (S_ISBLK(mode))
  return ("block");
 return ("unknown");
}
