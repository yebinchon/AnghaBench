
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXFILES ;
 int MAXUSERS ;
 long NBUF ;
 long NPROC ;
 int PAGE_SIZE ;
 int TUNABLE_INT_FETCH (char*,...) ;
 int TUNABLE_LONG_FETCH (char*,int*) ;
 int VM_MAX_AUTOTUNE_MAXUSERS ;
 int VM_MAX_KERNEL_ADDRESS ;
 int VM_MIN_KERNEL_ADDRESS ;
 long bio_transient_maxcnt ;
 long imax (int ,long) ;
 long maxfiles ;
 long maxfilesperproc ;
 int maxpipekva ;
 long maxproc ;
 long maxprocperuid ;
 int maxusers ;
 long nbuf ;
 long nswbuf ;
 long pid_max ;

void
init_param2(long physpages)
{


 maxusers = MAXUSERS;
 TUNABLE_INT_FETCH("kern.maxusers", &maxusers);
 if (maxusers == 0) {
  maxusers = physpages / (2 * 1024 * 1024 / PAGE_SIZE);
  if (maxusers < 32)
   maxusers = 32;
                if (maxusers > 384)
                        maxusers = 384 + ((maxusers - 384) / 8);
        }







 maxproc = NPROC;
 TUNABLE_INT_FETCH("kern.maxproc", &maxproc);
 if (maxproc > (physpages / 12))
  maxproc = physpages / 12;
 if (maxproc > pid_max)
  maxproc = pid_max;
 maxprocperuid = (maxproc * 9) / 10;






 maxfiles = imax(MAXFILES, physpages / 8);
 TUNABLE_INT_FETCH("kern.maxfiles", &maxfiles);
 if (maxfiles > (physpages / 4))
  maxfiles = physpages / 4;
 maxfilesperproc = (maxfiles / 10) * 9;
 TUNABLE_INT_FETCH("kern.maxfilesperproc", &maxfilesperproc);




 nbuf = NBUF;
 TUNABLE_INT_FETCH("kern.nbuf", &nbuf);
 TUNABLE_INT_FETCH("kern.bio_transient_maxcnt", &bio_transient_maxcnt);





 TUNABLE_INT_FETCH("kern.nswbuf", &nswbuf);





 maxpipekva = (physpages / 64) * PAGE_SIZE;
 TUNABLE_LONG_FETCH("kern.ipc.maxpipekva", &maxpipekva);
 if (maxpipekva < 512 * 1024)
  maxpipekva = 512 * 1024;
 if (maxpipekva > (VM_MAX_KERNEL_ADDRESS - VM_MIN_KERNEL_ADDRESS) / 64)
  maxpipekva = (VM_MAX_KERNEL_ADDRESS - VM_MIN_KERNEL_ADDRESS) /
      64;
}
