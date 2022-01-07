
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int UINT8 ;
typedef int UINT64 ;
typedef int UINT32 ;
typedef int ACPI_STATUS ;
typedef int ACPI_PHYSICAL_ADDRESS ;




 int AE_NO_MEMORY ;
 int AE_OK ;
 int aml_simulate_prompt (char*,int) ;
 int aml_simulate_regcontent_read (int,int,int*) ;
 int aml_simulate_regcontent_write (int,int,int*) ;
 int sprintf (char*,char*,char const*,int,int ) ;

__attribute__((used)) static ACPI_STATUS
aml_vm_space_handler(
 UINT32 SpaceID,
 UINT32 Function,
 ACPI_PHYSICAL_ADDRESS Address,
 UINT32 BitWidth,
 UINT64 *Value,
 int Prompt)
{
 int state;
 UINT8 val;
 UINT64 value, i;
 char msg[256];
 static const char *space_names[] = {
  "SYSTEM_MEMORY", "SYSTEM_IO", "PCI_CONFIG",
  "EC", "SMBUS", "CMOS", "PCI_BAR_TARGET"};

 switch (Function) {
 case 129:
  value = 0;
  for (i = 0; (i * 8) < BitWidth; i++) {
   state = aml_simulate_regcontent_read(SpaceID,
            Address + i, &val);
   if (state == -1) {
    return (AE_NO_MEMORY);
   }
   value |= val << (i * 8);
  }
  *Value = value;
  if (Prompt) {
   sprintf(msg, "[read (%s, %2d, 0x%jx)]",
    space_names[SpaceID], BitWidth,
    (uintmax_t)Address);
   *Value = aml_simulate_prompt(msg, value);
   if (*Value != value) {
    return(aml_vm_space_handler(SpaceID,
      128,
      Address, BitWidth, Value, 0));
   }
  }
  break;

 case 128:
  value = *Value;
  if (Prompt) {
   sprintf(msg, "[write(%s, %2d, 0x%jx)]",
    space_names[SpaceID], BitWidth,
    (uintmax_t)Address);
   value = aml_simulate_prompt(msg, *Value);
  }
  *Value = value;
  for (i = 0; (i * 8) < BitWidth; i++) {
   val = value & 0xff;
   state = aml_simulate_regcontent_write(SpaceID,
             Address + i, &val);
   if (state == -1) {
    return (AE_NO_MEMORY);
   }
   value = value >> 8;
  }
 }

 return (AE_OK);
}
