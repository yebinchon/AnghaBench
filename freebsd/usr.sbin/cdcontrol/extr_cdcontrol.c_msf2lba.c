
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;



__attribute__((used)) static unsigned int
msf2lba(u_char m, u_char s, u_char f)
{
 return (((m * 60) + s) * 75 + f) - 150;
}
