
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {scalar_t__ kn_data; } ;



__attribute__((used)) static int
filt_timer(struct knote *kn, long hint)
{

 return (kn->kn_data != 0);
}
