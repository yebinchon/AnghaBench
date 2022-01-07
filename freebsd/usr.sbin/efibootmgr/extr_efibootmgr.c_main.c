
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bmgr_opts_t ;
struct TYPE_3__ {char* label; int bootnum; int verbose; int timeout; scalar_t__ set_timeout; scalar_t__ del_timeout; scalar_t__ delete; scalar_t__ delete_bootnext; scalar_t__ set_bootnext; int * order; scalar_t__ set_active; scalar_t__ set_inactive; scalar_t__ has_bootnum; int dry_run; int env; int kernel; int loader; scalar_t__ create; } ;


 int del_bootnext () ;
 int delete_bootvar (int) ;
 int delete_timeout () ;
 int efi_variables_supported () ;
 int errx (int,char*) ;
 int handle_activity (int,scalar_t__) ;
 int handle_bootnext (int) ;
 int handle_timeout (int ) ;
 int make_boot_var (char*,int ,int ,int ,int ,int,scalar_t__) ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__ opts ;
 int parse_args (int,char**) ;
 int print_boot_vars (int ) ;
 int read_vars () ;
 int set_boot_order (int *) ;

int
main(int argc, char *argv[])
{

 if (!efi_variables_supported())
  errx(1, "efi variables not supported on this system. root? kldload efirt?");

 memset(&opts, 0, sizeof (bmgr_opts_t));
 parse_args(argc, argv);
 read_vars();

 if (opts.create)



  make_boot_var(opts.label ? opts.label : "",
      opts.loader, opts.kernel, opts.env, opts.dry_run,
      opts.has_bootnum ? opts.bootnum : -1, opts.set_active);
 else if (opts.set_active || opts.set_inactive )
  handle_activity(opts.bootnum, opts.set_active);
 else if (opts.order != ((void*)0))
  set_boot_order(opts.order);
 else if (opts.set_bootnext)
  handle_bootnext(opts.bootnum);
 else if (opts.delete_bootnext)
  del_bootnext();
 else if (opts.delete)
  delete_bootvar(opts.bootnum);
 else if (opts.del_timeout)
  delete_timeout();
 else if (opts.set_timeout)
  handle_timeout(opts.timeout);

 print_boot_vars(opts.verbose);
}
