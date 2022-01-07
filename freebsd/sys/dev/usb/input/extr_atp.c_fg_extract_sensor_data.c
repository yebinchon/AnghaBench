
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int int8_t ;
typedef enum fountain_geyser_trackpad_type { ____Placeholder_fountain_geyser_trackpad_type } fountain_geyser_trackpad_type ;
typedef int atp_axis ;






 int X ;
 int Y ;

__attribute__((used)) static void
fg_extract_sensor_data(const int8_t *sensor_data, u_int num, atp_axis axis,
    int *arr, enum fountain_geyser_trackpad_type prot)
{
 u_int i;
 u_int di;

 switch (prot) {
 case 131:




  for (i = 0, di = (axis == Y) ? 1 : 2; i < 8; di += 5, i++) {
   arr[i] = sensor_data[di];
   arr[i+8] = sensor_data[di+2];
   if ((axis == X) && (num > 16))
    arr[i+16] = sensor_data[di+40];
  }

  break;
 case 130:
  for (i = 0, di = (axis == Y) ? 1 : 19; i < num; ) {
   arr[i++] = sensor_data[di++];
   arr[i++] = sensor_data[di++];
   di++;
  }
  break;
 case 129:
 case 128:
  for (i = 0, di = (axis == Y) ? 2 : 20; i < num; ) {
   arr[i++] = sensor_data[di++];
   arr[i++] = sensor_data[di++];
   di++;
  }
  break;
 default:
  break;
 }
}
