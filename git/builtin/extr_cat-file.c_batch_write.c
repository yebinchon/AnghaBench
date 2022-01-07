
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batch_options {scalar_t__ buffer_output; } ;


 int die_errno (char*) ;
 int fwrite (void const*,int,int,int ) ;
 int stdout ;
 int write_or_die (int,void const*,int) ;

__attribute__((used)) static void batch_write(struct batch_options *opt, const void *data, int len)
{
 if (opt->buffer_output) {
  if (fwrite(data, 1, len, stdout) != len)
   die_errno("unable to write to stdout");
 } else
  write_or_die(1, data, len);
}
