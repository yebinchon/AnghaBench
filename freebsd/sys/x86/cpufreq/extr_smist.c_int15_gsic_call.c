
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmf ;
struct vm86frame {int vmf_eax; int vmf_edx; int vmf_ebx; int vmf_ecx; } ;


 int bzero (struct vm86frame*,int) ;
 int vm86_intcall (int,struct vm86frame*) ;

__attribute__((used)) static int
int15_gsic_call(int *sig, int *smi_cmd, int *command, int *smi_data, int *flags)
{
 struct vm86frame vmf;

 bzero(&vmf, sizeof(vmf));
 vmf.vmf_eax = 0x0000E980;
 vmf.vmf_edx = 0x47534943;
 vm86_intcall(0x15, &vmf);

 if (vmf.vmf_eax == 0x47534943) {
  *sig = vmf.vmf_eax;
  *smi_cmd = vmf.vmf_ebx & 0xff;
  *command = (vmf.vmf_ebx >> 16) & 0xff;
  *smi_data = vmf.vmf_ecx;
  *flags = vmf.vmf_edx;
 } else {
  *sig = -1;
  *smi_cmd = -1;
  *command = -1;
  *smi_data = -1;
  *flags = -1;
 }

 return (0);
}
