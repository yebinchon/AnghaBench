
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u_char ;



__attribute__((used)) static void
lba2msf(unsigned long lba, u_char *m, u_char *s, u_char *f)
{
 lba += 150;
 lba &= 0xffffff;
 *m = lba / (60 * 75);
 lba %= (60 * 75);
 *s = lba / 75;
 *f = lba % 75;
}
