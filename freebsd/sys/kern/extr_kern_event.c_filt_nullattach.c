
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {int dummy; } ;


 int ENXIO ;

__attribute__((used)) static int
filt_nullattach(struct knote *kn)
{

 return (ENXIO);
}
