
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arc4random () ;

__attribute__((used)) static void
getseed(char *seed, int seedsize, unsigned char *pass)
{
 int i;

 for (i = 0; i < seedsize; i++) {
  seed[i] = (arc4random() & 0xff) ^ pass[i % 8];
 }
}
