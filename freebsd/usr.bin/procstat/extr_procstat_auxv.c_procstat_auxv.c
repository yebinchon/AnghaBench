
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_long ;
typedef size_t u_int ;
struct procstat {int dummy; } ;
struct kinfo_proc {int ki_pid; char* ki_comm; } ;
typedef int prefix ;
struct TYPE_5__ {int a_val; int a_ptr; } ;
struct TYPE_6__ {int a_type; TYPE_1__ a_un; } ;
typedef TYPE_2__ Elf_Auxinfo ;
 int PS_OPT_NOHEADER ;
 int VM_PROT_EXECUTE ;
 int procstat_freeauxv (struct procstat*,TYPE_2__*) ;
 TYPE_2__* procstat_getauxv (struct procstat*,struct kinfo_proc*,size_t*) ;
 int procstat_opts ;
 int snprintf (char*,int,char*,int,char*) ;
 int xo_emit (char*,...) ;

void
procstat_auxv(struct procstat *procstat, struct kinfo_proc *kipp)
{
 Elf_Auxinfo *auxv;
 u_int count, i;
 static char prefix[256];

 if ((procstat_opts & PS_OPT_NOHEADER) == 0)
  xo_emit("{T:/%5s %-16s %-16s %-16s}\n", "PID", "COMM", "AUXV",
      "VALUE");

 auxv = procstat_getauxv(procstat, kipp, &count);
 if (auxv == ((void*)0))
  return;
        snprintf(prefix, sizeof(prefix), "%5d %-16s", kipp->ki_pid,
            kipp->ki_comm);

 xo_emit("{e:process_id/%5d/%d}{e:command/%-16s/%s}", kipp->ki_pid,
     kipp->ki_comm);

 for (i = 0; i < count; i++) {
  switch(auxv[i].a_type) {
  case 138:
   return;
  case 141:
   break;
  case 147:
   xo_emit("{dw:/%s}{Lw:/%-16s/%s}{:AT_EXECFD/%ld}\n",
       prefix, "AT_EXECFD", (long)auxv[i].a_un.a_val);
   break;
  case 133:
   xo_emit("{dw:/%s}{Lw:/%-16s/%s}{:AT_PHDR/%p}\n",
       prefix, "AT_PHDR", auxv[i].a_un.a_ptr);
   break;
  case 132:
   xo_emit("{dw:/%s}{Lw:/%-16s/%s}{:AT_PHENT/%ld}\n",
       prefix, "AT_PHENT", (long)auxv[i].a_un.a_val);
   break;
  case 131:
   xo_emit("{dw:/%s}{Lw:/%-16s/%s}{:AT_PHNUM/%ld}\n",
       prefix, "AT_PHNUM", (long)auxv[i].a_un.a_val);
   break;
  case 134:
   xo_emit("{dw:/%s}{Lw:/%-16s/%s}{:AT_PAGESZ/%ld}\n",
       prefix, "AT_PAGESZ", (long)auxv[i].a_un.a_val);
   break;
  case 154:
   xo_emit("{dw:/%s}{Lw:/%-16s/%s}{:AT_BASE/%p}\n",
       prefix, "AT_BASE", auxv[i].a_un.a_ptr);
   break;
  case 145:
   xo_emit("{dw:/%s}{Lw:/%-16s/%s}{:AT_FLAGS/%#lx}\n",
       prefix, "AT_FLAGS", (u_long)auxv[i].a_un.a_val);
   break;
  case 149:
   xo_emit("{dw:/%s}{Lw:/%-16s/%s}{:AT_ENTRY/%p}\n",
       prefix, "AT_ENTRY", auxv[i].a_un.a_ptr);
   break;

  case 139:
   xo_emit("{dw:/%s}{Lw:/%-16s/%s}{:AT_NOTELF/%ld}\n",
       prefix, "AT_NOTELF", (long)auxv[i].a_un.a_val);
   break;


  case 128:
   xo_emit("{dw:/%s}{Lw:/%-16s/%s}{:AT_UID/%ld}\n",
       prefix, "AT_UID", (long)auxv[i].a_un.a_val);
   break;


  case 148:
   xo_emit("{dw:/%s}{Lw:/%-16s/%s}{:AT_EUID/%ld}\n",
       prefix, "AT_EUID", (long)auxv[i].a_un.a_val);
   break;


  case 144:
   xo_emit("{dw:/%s}{Lw:/%-16s/%s}{:AT_GID/%ld}\n",
       prefix, "AT_GID", (long)auxv[i].a_un.a_val);
   break;


  case 151:
   xo_emit("{dw:/%s}{Lw:/%-16s/%s}{:AT_EGID/%ld}\n",
       prefix, "AT_EGID", (long)auxv[i].a_un.a_val);
   break;

  case 146:
   xo_emit("{dw:/%s}{Lw:/%-16s/%s}{:AT_EXECPATH/%p}\n",
       prefix, "AT_EXECPATH", auxv[i].a_un.a_ptr);
   break;
  case 153:
   xo_emit("{dw:/%s}{Lw:/%-16s/%s}{:AT_CANARY/%p}\n",
       prefix, "AT_CANARY", auxv[i].a_un.a_ptr);
   break;
  case 152:
   xo_emit("{dw:/%s}{Lw:/%-16s/%s}{:AT_CANARYLEN/%ld}\n",
       prefix, "AT_CANARYLEN", (long)auxv[i].a_un.a_val);
   break;
  case 137:
   xo_emit("{dw:/%s}{Lw:/%-16s/%s}{:AT_OSRELDATE/%ld}\n",
       prefix, "AT_OSRELDATE", (long)auxv[i].a_un.a_val);
   break;
  case 140:
   xo_emit("{dw:/%s}{Lw:/%-16s/%s}{:AT_NCPUS/%ld}\n",
       prefix, "AT_NCPUS", (long)auxv[i].a_un.a_val);
   break;
  case 136:
   xo_emit("{dw:/%s}{Lw:/%-16s/%s}{:AT_PAGESIZES/%p}\n",
       prefix, "AT_PAGESIZES", auxv[i].a_un.a_ptr);
   break;
  case 135:
   xo_emit("{dw:/%s}{Lw:/%-16s/%s}"
       "{:AT_PAGESIZESLEN/%ld}\n", prefix,
       "AT_PAGESIZESLEN", (long)auxv[i].a_un.a_val);
   break;
  case 130:
   if ((auxv[i].a_un.a_val & VM_PROT_EXECUTE) != 0)
    xo_emit("{dw:/%s}{Lw:/%-16s/%s}"
        "{:AT_STACKPROT/%s}\n", prefix,
        "AT_STACKPROT", "EXECUTABLE");
   else
    xo_emit("{dw:/%s}{Lw:/%-16s/%s}"
        "{:AT_STACKPROT/%s}\n", prefix,
        "AT_STACKPROT", "NONEXECUTABLE");
   break;

  case 129:
   xo_emit("{dw:/%s}{Lw:/%-16s/%s}{:AT_TIMEKEEP/%p}\n",
       prefix, "AT_TIMEKEEP", auxv[i].a_un.a_ptr);
   break;


  case 150:
   xo_emit("{dw:/%s}{Lw:/%-16s/%s}{:AT_EHDRFLAGS/%#lx}\n",
       prefix, "AT_EHDRFLAGS", (u_long)auxv[i].a_un.a_val);
   break;


  case 143:
   xo_emit("{dw:/%s}{Lw:/%-16s/%s}{:AT_HWCAP/%#lx}\n",
       prefix, "AT_HWCAP", (u_long)auxv[i].a_un.a_val);
   break;


  case 142:
   xo_emit("{dw:/%s}{Lw:/%-16s/%s}{:AT_HWCAP2/%#lx}\n",
       prefix, "AT_HWCAP2", (u_long)auxv[i].a_un.a_val);
   break;

  default:
   xo_emit("{dw:/%s}{Lw:/%16ld/%ld}{:UNKNOWN/%#lx}\n",
       prefix, auxv[i].a_type, auxv[i].a_un.a_val);
   break;
  }
 }
 xo_emit("\n");
 procstat_freeauxv(procstat, auxv);
}
