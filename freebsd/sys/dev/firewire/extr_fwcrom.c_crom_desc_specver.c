
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ CSRVAL_1394TA ;
 scalar_t__ CSRVAL_ANSIT10 ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static void
crom_desc_specver(uint32_t spec, uint32_t ver, char *buf, int len)
{
 char *s = ((void*)0);

 if (spec == CSRVAL_ANSIT10 || spec == 0) {
  switch (ver) {
  case 137:
   s = "SBP-2";
   break;
  default:
   if (spec != 0)
    s = "unknown ANSIT10";
  }
 }
 if (spec == CSRVAL_1394TA || spec == 0) {
  switch (ver) {
  case 136:
   s = "AV/C";
   break;
  case 135:
   s = "CAL";
   break;
  case 130:
   s = "EHS";
   break;
  case 129:
   s = "HAVi";
   break;
  case 134:
   s = "1394 Cam 1.04";
   break;
  case 133:
   s = "1394 Cam 1.20";
   break;
  case 132:
   s = "1394 Cam 1.30";
   break;
  case 131:
   s = "1394 Direct print";
   break;
  case 128:
   s = "Industrial & Instrument";
   break;
  default:
   if (spec != 0)
    s = "unknown 1394TA";
  }
 }
 if (s != ((void*)0))
  snprintf(buf, len, "%s", s);
}
