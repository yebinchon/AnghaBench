
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archiver_args {int dummy; } ;
struct archiver {int dummy; } ;


 int write_archive_entries (struct archiver_args*,int ) ;
 int write_global_extended_header (struct archiver_args*) ;
 int write_tar_entry ;
 int write_trailer () ;

__attribute__((used)) static int write_tar_archive(const struct archiver *ar,
        struct archiver_args *args)
{
 int err = 0;

 write_global_extended_header(args);
 err = write_archive_entries(args, write_tar_entry);
 if (!err)
  write_trailer();
 return err;
}
