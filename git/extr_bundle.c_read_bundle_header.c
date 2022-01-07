
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bundle_header {int dummy; } ;


 int O_RDONLY ;
 int _ (char*) ;
 int error (int ,char const*) ;
 int open (char const*,int ) ;
 int parse_bundle_header (int,struct bundle_header*,char const*) ;

int read_bundle_header(const char *path, struct bundle_header *header)
{
 int fd = open(path, O_RDONLY);

 if (fd < 0)
  return error(_("could not open '%s'"), path);
 return parse_bundle_header(fd, header, path);
}
