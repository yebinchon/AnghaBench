
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct uuid {int time_low; int time_mid; int time_hi_and_version; int clock_seq_hi_and_reserved; int clock_seq_low; int* node; } ;


 int EINVAL ;
 int bzero (struct uuid*,int) ;
 int sscanf (char const*,char*,int*,int*,int*,int*,int*,int*,int*,int*,int*,int*,int*) ;
 int strlen (char const*) ;

int
parse_uuid(const char *str, struct uuid *uuid)
{
 u_int c[11];
 int n;


 if (*str == '\0') {
  bzero(uuid, sizeof(*uuid));
  return (0);
 }


 if (strlen(str) != 36)
  return (EINVAL);







 if (str[8] != '-')
  return (EINVAL);

 n = sscanf(str, "%8x-%4x-%4x-%2x%2x-%2x%2x%2x%2x%2x%2x", c + 0, c + 1,
     c + 2, c + 3, c + 4, c + 5, c + 6, c + 7, c + 8, c + 9, c + 10);

 if (n != 11)
  return (EINVAL);


 uuid->time_low = c[0];
 uuid->time_mid = c[1];
 uuid->time_hi_and_version = c[2];
 uuid->clock_seq_hi_and_reserved = c[3];
 uuid->clock_seq_low = c[4];
 for (n = 0; n < 6; n++)
  uuid->node[n] = c[n + 5];


 return (((c[3] & 0x80) != 0x00 &&
     (c[3] & 0xc0) != 0x80 &&
     (c[3] & 0xe0) != 0xc0) ? EINVAL : 0);
}
