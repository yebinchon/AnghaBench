
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archiver_args {int commit_oid; int time; } ;
struct archiver {int dummy; } ;


 int archive_zip_config ;
 int dos_time (int *,int *,int *) ;
 int git_config (int ,int *) ;
 int strbuf_init (int *,int ) ;
 int strbuf_release (int *) ;
 int write_archive_entries (struct archiver_args*,int ) ;
 int write_zip_entry ;
 int write_zip_trailer (int ) ;
 int zip_date ;
 int zip_dir ;
 int zip_time ;

__attribute__((used)) static int write_zip_archive(const struct archiver *ar,
        struct archiver_args *args)
{
 int err;

 git_config(archive_zip_config, ((void*)0));

 dos_time(&args->time, &zip_date, &zip_time);

 strbuf_init(&zip_dir, 0);

 err = write_archive_entries(args, write_zip_entry);
 if (!err)
  write_zip_trailer(args->commit_oid);

 strbuf_release(&zip_dir);

 return err;
}
