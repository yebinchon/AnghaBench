
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpuset_t ;


 int CPU_SET (int,int *) ;
 int CPU_SETSIZE ;
 int CPU_ZERO (int *) ;
 int VM_MAXCPU ;
 int fprintf (int ,char*,...) ;
 int * malloc (int) ;
 int perror (char*) ;
 int sscanf (char const*,char*,int*,int*) ;
 int stderr ;
 int ** vcpumap ;

__attribute__((used)) static int
pincpu_parse(const char *opt)
{
 int vcpu, pcpu;

 if (sscanf(opt, "%d:%d", &vcpu, &pcpu) != 2) {
  fprintf(stderr, "invalid format: %s\n", opt);
  return (-1);
 }

 if (vcpu < 0 || vcpu >= VM_MAXCPU) {
  fprintf(stderr, "vcpu '%d' outside valid range from 0 to %d\n",
      vcpu, VM_MAXCPU - 1);
  return (-1);
 }

 if (pcpu < 0 || pcpu >= CPU_SETSIZE) {
  fprintf(stderr, "hostcpu '%d' outside valid range from "
      "0 to %d\n", pcpu, CPU_SETSIZE - 1);
  return (-1);
 }

 if (vcpumap[vcpu] == ((void*)0)) {
  if ((vcpumap[vcpu] = malloc(sizeof(cpuset_t))) == ((void*)0)) {
   perror("malloc");
   return (-1);
  }
  CPU_ZERO(vcpumap[vcpu]);
 }
 CPU_SET(pcpu, vcpumap[vcpu]);
 return (0);
}
