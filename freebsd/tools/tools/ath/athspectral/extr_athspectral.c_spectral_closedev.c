
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spectralhandler {int s; } ;


 int close (int) ;

void
spectral_closedev(struct spectralhandler *spectral)
{
 close(spectral->s);
 spectral->s = -1;
}
