
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bundle_header {int dummy; } ;
typedef int header ;


 int O_RDONLY ;
 int close (int) ;
 int memset (struct bundle_header*,int ,int) ;
 int open (char const*,int ) ;
 int parse_bundle_header (int,struct bundle_header*,char const*) ;

int is_bundle(const char *path, int quiet)
{
 struct bundle_header header;
 int fd = open(path, O_RDONLY);

 if (fd < 0)
  return 0;
 memset(&header, 0, sizeof(header));
 fd = parse_bundle_header(fd, &header, quiet ? ((void*)0) : path);
 if (fd >= 0)
  close(fd);
 return (fd >= 0);
}
