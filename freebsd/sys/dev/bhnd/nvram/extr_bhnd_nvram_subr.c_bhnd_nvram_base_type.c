
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bhnd_nvram_type ;
 int BHND_NV_PANIC (char*,int) ;

bhnd_nvram_type
bhnd_nvram_base_type(bhnd_nvram_type type)
{
 switch (type) {
 case 129:
 case 135:
 case 133:
 case 131:
 case 140:
 case 146:
 case 144:
 case 142:
 case 149:
 case 137:
 case 151:
 case 138:
 case 147:
  return (type);

 case 128: return (129);
 case 134: return (135);
 case 132: return (133);
 case 130: return (131);
 case 139: return (140);
 case 145: return (146);
 case 143: return (144);
 case 141: return (142);
 case 148: return (149);
 case 136: return (137);
 case 150: return (151);
 }


 BHND_NV_PANIC("bhnd nvram type %u unknown", type);
}
