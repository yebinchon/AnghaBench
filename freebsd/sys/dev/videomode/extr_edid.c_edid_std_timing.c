
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct videomode {int dummy; } ;
typedef int name ;


 unsigned int EDID_STD_TIMING_HRES (int*) ;
 int EDID_STD_TIMING_RATIO (int*) ;




 unsigned int EDID_STD_TIMING_VFREQ (int*) ;
 struct videomode* edid_mode_lookup_list (char*) ;
 int snprintf (char*,int,char*,unsigned int,unsigned int,unsigned int) ;
 int vesagtf_mode (unsigned int,unsigned int,unsigned int,struct videomode*) ;

__attribute__((used)) static int
edid_std_timing(uint8_t *data, struct videomode *vmp)
{
 unsigned x, y, f;
 const struct videomode *lookup;
 char name[80];

 if ((data[0] == 1 && data[1] == 1) ||
     (data[0] == 0 && data[1] == 0) ||
     (data[0] == 0x20 && data[1] == 0x20))
  return 0;

 x = EDID_STD_TIMING_HRES(data);
 switch (EDID_STD_TIMING_RATIO(data)) {
 case 131:
  y = x * 10 / 16;
  break;
 case 129:
  y = x * 3 / 4;
  break;
 case 128:
  y = x * 4 / 5;
  break;
 case 130:
 default:
  y = x * 9 / 16;
  break;
 }
 f = EDID_STD_TIMING_VFREQ(data);


 snprintf(name, sizeof(name), "%dx%dx%d", x, y, f);
 if ((lookup = edid_mode_lookup_list(name)) != ((void*)0)) {
  *vmp = *lookup;
 } else {





  vesagtf_mode(x, y, f, vmp);
 }
 return 1;
}
