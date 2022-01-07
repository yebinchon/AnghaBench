
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int _ (char*) ;
 int close (int) ;
 int die_errno (int ,...) ;
 scalar_t__ dup2 (int,int) ;
 int open (char const*,int,int) ;

__attribute__((used)) static void create_output_file(const char *output_file)
{
 int output_fd = open(output_file, O_CREAT | O_WRONLY | O_TRUNC, 0666);
 if (output_fd < 0)
  die_errno(_("could not create archive file '%s'"), output_file);
 if (output_fd != 1) {
  if (dup2(output_fd, 1) < 0)
   die_errno(_("could not redirect output"));
  else
   close(output_fd);
 }
}
