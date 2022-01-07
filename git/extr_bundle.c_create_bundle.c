
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int pending; } ;
struct repository {int dummy; } ;
struct lock_file {int dummy; } ;


 int LOCK_DIE_ON_ERROR ;
 struct lock_file LOCK_INIT ;
 int _ (char*) ;
 int bundle_signature ;
 scalar_t__ commit_lock_file (struct lock_file*) ;
 scalar_t__ compute_and_write_prerequisites (int,struct rev_info*,int,char const**) ;
 int die (int ) ;
 int die_errno (int ,char const*) ;
 int error (int ,char const*) ;
 int hold_lock_file_for_update (struct lock_file*,char const*,int ) ;
 int object_array_remove_duplicates (int *) ;
 int repo_init_revisions (struct repository*,struct rev_info*,int *) ;
 int rollback_lock_file (struct lock_file*) ;
 scalar_t__ save_commit_buffer ;
 int setup_revisions (int,char const**,struct rev_info*,int *) ;
 int strcmp (char const*,char*) ;
 int strlen (int ) ;
 int write_bundle_refs (int,struct rev_info*) ;
 int write_or_die (int,int ,int ) ;
 scalar_t__ write_pack_data (int,struct rev_info*) ;

int create_bundle(struct repository *r, const char *path,
    int argc, const char **argv)
{
 struct lock_file lock = LOCK_INIT;
 int bundle_fd = -1;
 int bundle_to_stdout;
 int ref_count = 0;
 struct rev_info revs;

 bundle_to_stdout = !strcmp(path, "-");
 if (bundle_to_stdout)
  bundle_fd = 1;
 else
  bundle_fd = hold_lock_file_for_update(&lock, path,
            LOCK_DIE_ON_ERROR);


 write_or_die(bundle_fd, bundle_signature, strlen(bundle_signature));


 save_commit_buffer = 0;
 repo_init_revisions(r, &revs, ((void*)0));


 if (compute_and_write_prerequisites(bundle_fd, &revs, argc, argv))
  goto err;

 argc = setup_revisions(argc, argv, &revs, ((void*)0));

 if (argc > 1) {
  error(_("unrecognized argument: %s"), argv[1]);
  goto err;
 }

 object_array_remove_duplicates(&revs.pending);

 ref_count = write_bundle_refs(bundle_fd, &revs);
 if (!ref_count)
  die(_("Refusing to create empty bundle."));
 else if (ref_count < 0)
  goto err;


 if (write_pack_data(bundle_fd, &revs))
  goto err;

 if (!bundle_to_stdout) {
  if (commit_lock_file(&lock))
   die_errno(_("cannot create '%s'"), path);
 }
 return 0;
err:
 rollback_lock_file(&lock);
 return -1;
}
