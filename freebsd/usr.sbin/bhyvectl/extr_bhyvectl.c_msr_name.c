
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int buf ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static const char *
msr_name(uint32_t msr)
{
 static char buf[32];

 switch(msr) {
 case 128:
  return ("MSR_TSC");
 case 139:
  return ("MSR_EFER");
 case 132:
  return ("MSR_STAR");
 case 135:
  return ("MSR_LSTAR");
 case 140:
  return ("MSR_CSTAR");
 case 133:
  return ("MSR_SF_MASK");
 case 138:
  return ("MSR_FSBASE");
 case 137:
  return ("MSR_GSBASE");
 case 136:
  return ("MSR_KGSBASE");
 case 131:
  return ("MSR_SYSENTER_CS_MSR");
 case 129:
  return ("MSR_SYSENTER_ESP_MSR");
 case 130:
  return ("MSR_SYSENTER_EIP_MSR");
 case 134:
  return ("MSR_PAT");
 }
 snprintf(buf, sizeof(buf), "MSR       %#08x", msr);

 return (buf);
}
