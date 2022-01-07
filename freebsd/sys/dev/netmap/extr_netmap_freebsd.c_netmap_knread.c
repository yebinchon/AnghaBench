
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {int dummy; } ;


 int POLLIN ;
 int netmap_knrw (struct knote*,long,int ) ;

__attribute__((used)) static int
netmap_knread(struct knote *kn, long hint)
{
 return netmap_knrw(kn, hint, POLLIN);
}
