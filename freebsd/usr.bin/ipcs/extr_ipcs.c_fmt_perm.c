
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;



char *
fmt_perm(u_short mode)
{
 static char buffer[100];

 buffer[0] = '-';
 buffer[1] = '-';
 buffer[2] = ((mode & 0400) ? 'r' : '-');
 buffer[3] = ((mode & 0200) ? 'w' : '-');
 buffer[4] = ((mode & 0100) ? 'a' : '-');
 buffer[5] = ((mode & 0040) ? 'r' : '-');
 buffer[6] = ((mode & 0020) ? 'w' : '-');
 buffer[7] = ((mode & 0010) ? 'a' : '-');
 buffer[8] = ((mode & 0004) ? 'r' : '-');
 buffer[9] = ((mode & 0002) ? 'w' : '-');
 buffer[10] = ((mode & 0001) ? 'a' : '-');
 buffer[11] = '\0';
 return (&buffer[0]);
}
