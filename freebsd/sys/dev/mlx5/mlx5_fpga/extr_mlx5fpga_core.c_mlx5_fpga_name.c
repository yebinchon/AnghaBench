
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int ret ;






 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static const char *mlx5_fpga_name(u32 fpga_id)
{
 static char ret[32];

 switch (fpga_id) {
 case 128:
  return "Newton";
 case 131:
  return "Edison";
 case 130:
  return "Morse";
 case 129:
  return "MorseQ";
 }

 snprintf(ret, sizeof(ret), "Unknown %d", fpga_id);
 return ret;
}
