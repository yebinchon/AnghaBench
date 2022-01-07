
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;







 int TEMPERATURE_OFFSET ;
 double be16dec (int*) ;
 int sesutil_print (int*,char*,...) ;
 int xo_close_container (char*) ;

__attribute__((used)) static void
print_extra_status(int eletype, u_char *cstat)
{
 bool title = 0;

 if (cstat[0] & 0x40) {
  sesutil_print(&title, "\t\t-{e:predicted_failure/true} Predicted Failure\n");
 }
 if (cstat[0] & 0x20) {
  sesutil_print(&title, "\t\t-{e:disabled/true} Disabled\n");
 }
 if (cstat[0] & 0x10) {
  sesutil_print(&title, "\t\t-{e:swapped/true} Swapped\n");
 }
 switch (eletype) {
 case 131:
 case 132:
  if (cstat[2] & 0x02) {
   sesutil_print(&title, "\t\t- LED={q:led/locate}\n");
  }
  if (cstat[2] & 0x20) {
   sesutil_print(&title, "\t\t- LED={q:led/fault}\n");
  }
  break;
 case 130:
  sesutil_print(&title, "\t\t- Speed: {:speed/%d}{Uw:rpm}\n",
      (((0x7 & cstat[1]) << 8) + cstat[2]) * 10);
  break;
 case 129:
  if (cstat[2]) {
   sesutil_print(&title, "\t\t- Temperature: {:temperature/%d}{Uw:C}\n",
       cstat[2] - TEMPERATURE_OFFSET);
  } else {
   sesutil_print(&title, "\t\t- Temperature: -{q:temperature/reserved}-\n");
  }
  break;
 case 128:
  sesutil_print(&title, "\t\t- Voltage: {:voltage/%.2f}{Uw:V}\n",
      be16dec(cstat + 2) / 100.0);
  break;
 }
 if (title) {
  xo_close_container("extra_status");
 }
}
