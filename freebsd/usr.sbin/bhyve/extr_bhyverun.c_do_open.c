
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int dummy; } ;
typedef int cap_rights_t ;
typedef int cap_ioctl_t ;


 int CAP_IOCTL ;
 int CAP_MMAP_RW ;
 scalar_t__ EEXIST ;
 int EX_OSERR ;
 int cap_rights_init (int *,int ,int ) ;
 int caph_ioctls_limit (int ,int const*,size_t) ;
 int caph_rights_limit (int ,int *) ;
 int cores ;
 scalar_t__ errno ;
 int errx (int ,char*) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int free (int *) ;
 scalar_t__ lpc_bootrom () ;
 int maxcpus ;
 int perror (char*) ;
 int sockets ;
 int stderr ;
 int threads ;
 int vm_create (char const*) ;
 int vm_get_device_fd (struct vmctx*) ;
 int * vm_get_ioctls (size_t*) ;
 struct vmctx* vm_open (char const*) ;
 int vm_reinit (struct vmctx*) ;
 int vm_set_topology (struct vmctx*,int ,int ,int ,int ) ;

__attribute__((used)) static struct vmctx *
do_open(const char *vmname)
{
 struct vmctx *ctx;
 int error;
 bool reinit, romboot;

 cap_rights_t rights;
 const cap_ioctl_t *cmds;
 size_t ncmds;


 reinit = romboot = 0;

 if (lpc_bootrom())
  romboot = 1;

 error = vm_create(vmname);
 if (error) {
  if (errno == EEXIST) {
   if (romboot) {
    reinit = 1;
   } else {




   }
  } else {
   perror("vm_create");
   exit(4);
  }
 } else {
  if (!romboot) {




   fprintf(stderr, "virtual machine cannot be booted\n");
   exit(4);
  }
 }

 ctx = vm_open(vmname);
 if (ctx == ((void*)0)) {
  perror("vm_open");
  exit(4);
 }


 cap_rights_init(&rights, CAP_IOCTL, CAP_MMAP_RW);
 if (caph_rights_limit(vm_get_device_fd(ctx), &rights) == -1)
  errx(EX_OSERR, "Unable to apply rights for sandbox");
 vm_get_ioctls(&ncmds);
 cmds = vm_get_ioctls(((void*)0));
 if (cmds == ((void*)0))
  errx(EX_OSERR, "out of memory");
 if (caph_ioctls_limit(vm_get_device_fd(ctx), cmds, ncmds) == -1)
  errx(EX_OSERR, "Unable to apply rights for sandbox");
 free((cap_ioctl_t *)cmds);


 if (reinit) {
  error = vm_reinit(ctx);
  if (error) {
   perror("vm_reinit");
   exit(4);
  }
 }
 error = vm_set_topology(ctx, sockets, cores, threads, maxcpus);
 if (error)
  errx(EX_OSERR, "vm_set_topology");
 return (ctx);
}
