
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_int ;


 int MSR_VM_CR ;
 int VM_CR_SVMDIS ;
 int bootverbose ;
 int do_cpuid (int,int*) ;
 int printf (char*,...) ;
 int rdmsr (int ) ;

__attribute__((used)) static void
print_svm_info(void)
{
 u_int features, regs[4];
 uint64_t msr;
 int comma;

 printf("\n  SVM: ");
 do_cpuid(0x8000000A, regs);
 features = regs[3];

 msr = rdmsr(MSR_VM_CR);
 if ((msr & VM_CR_SVMDIS) == VM_CR_SVMDIS)
  printf("(disabled in BIOS) ");

 if (!bootverbose) {
  comma = 0;
  if (features & (1 << 0)) {
   printf("%sNP", comma ? "," : "");
                        comma = 1;
  }
  if (features & (1 << 3)) {
   printf("%sNRIP", comma ? "," : "");
                        comma = 1;
  }
  if (features & (1 << 5)) {
   printf("%sVClean", comma ? "," : "");
                        comma = 1;
  }
  if (features & (1 << 6)) {
   printf("%sAFlush", comma ? "," : "");
                        comma = 1;
  }
  if (features & (1 << 7)) {
   printf("%sDAssist", comma ? "," : "");
                        comma = 1;
  }
  printf("%sNAsids=%d", comma ? "," : "", regs[1]);
  return;
 }

 printf("Features=0x%b", features,
        "\020"
        "\001NP"
        "\002LbrVirt"
        "\003SVML"
        "\004NRIPS"
        "\005TscRateMsr"
        "\006VmcbClean"
        "\007FlushByAsid"
        "\010DecodeAssist"
        "\011<b8>"
        "\012<b9>"
        "\013PauseFilter"
        "\014EncryptedMcodePatch"
        "\015PauseFilterThreshold"
        "\016AVIC"
        "\017<b14>"
        "\020V_VMSAVE_VMLOAD"
        "\021vGIF"
        "\022GMET"
        "\023<b18>"
        "\024<b19>"
        "\025<b20>"
        "\026<b21>"
        "\027<b22>"
        "\030<b23>"
        "\031<b24>"
        "\032<b25>"
        "\033<b26>"
        "\034<b27>"
        "\035<b28>"
        "\036<b29>"
        "\037<b30>"
        "\040<b31>"
                );
 printf("\nRevision=%d, ASIDs=%d", regs[0] & 0xff, regs[1]);
}
