
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ has_dos_drive_prefix (char const*) ;
 char* strchr (char const*,char) ;

int url_is_local_not_ssh(const char *url)
{
 const char *colon = strchr(url, ':');
 const char *slash = strchr(url, '/');
 return !colon || (slash && slash < colon) ||
  has_dos_drive_prefix(url);
}
