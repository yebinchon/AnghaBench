
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procstat {int dummy; } ;
struct kinfo_proc {int ki_cr_flags; unsigned int ki_ngroups; int * ki_groups; int ki_svgid; int ki_rgid; int ki_svuid; int ki_ruid; int ki_uid; int ki_comm; int ki_pid; } ;
typedef int gid_t ;


 int CRED_FLAG_CAPMODE ;
 int KI_CRF_GRP_OVERFLOW ;
 int PS_OPT_NOHEADER ;
 int get_umask (struct procstat*,struct kinfo_proc*) ;
 int procstat_freegroups (struct procstat*,int *) ;
 int * procstat_getgroups (struct procstat*,struct kinfo_proc*,unsigned int*) ;
 int procstat_opts ;
 int xo_close_list (char*) ;
 int xo_emit (char*,...) ;
 int xo_open_list (char*) ;

void
procstat_cred(struct procstat *procstat, struct kinfo_proc *kipp)
{
 unsigned int i, ngroups;
 gid_t *groups;

 if ((procstat_opts & PS_OPT_NOHEADER) == 0)
  xo_emit("{T:/%5s %-16s %5s %5s %5s %5s %5s %5s %5s %5s %-15s}\n",
      "PID", "COMM", "EUID", "RUID", "SVUID", "EGID", "RGID",
      "SVGID", "UMASK", "FLAGS", "GROUPS");

 xo_emit("{k:process_id/%5d/%d} ", kipp->ki_pid);
 xo_emit("{:command/%-16s/%s} ", kipp->ki_comm);
 xo_emit("{:uid/%5d} ", kipp->ki_uid);
 xo_emit("{:ruid/%5d} ", kipp->ki_ruid);
 xo_emit("{:svuid/%5d} ", kipp->ki_svuid);
 xo_emit("{:group/%5d} ", kipp->ki_groups[0]);
 xo_emit("{:rgid/%5d} ", kipp->ki_rgid);
 xo_emit("{:svgid/%5d} ", kipp->ki_svgid);
 xo_emit("{:umask/%5s} ", get_umask(procstat, kipp));
 xo_emit("{:cr_flags/%s}", kipp->ki_cr_flags & CRED_FLAG_CAPMODE ?
     "C" : "-");
 xo_emit("{P:     }");

 groups = ((void*)0);





 if (kipp->ki_cr_flags & KI_CRF_GRP_OVERFLOW)
  groups = procstat_getgroups(procstat, kipp, &ngroups);
 if (groups == ((void*)0)) {
  ngroups = kipp->ki_ngroups;
  groups = kipp->ki_groups;
 }
 xo_open_list("groups");
 for (i = 0; i < ngroups; i++)
  xo_emit("{D:/%s}{l:groups/%d}", (i > 0) ? "," : "", groups[i]);
 if (groups != kipp->ki_groups)
  procstat_freegroups(procstat, groups);

 xo_close_list("groups");
 xo_emit("\n");
}
