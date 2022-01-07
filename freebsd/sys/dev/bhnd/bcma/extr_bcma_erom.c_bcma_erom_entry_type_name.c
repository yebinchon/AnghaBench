
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;





 int BCMA_EROM_GET_ATTR (int ,int ) ;
 int ENTRY_TYPE ;

__attribute__((used)) static const char *
bcma_erom_entry_type_name (uint8_t entry)
{
 switch (BCMA_EROM_GET_ATTR(entry, ENTRY_TYPE)) {
 case 130:
  return "core";
 case 129:
  return "mport";
 case 128:
  return "region";
 default:
  return "unknown";
 }
}
