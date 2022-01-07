
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {int dummy; } ;



__attribute__((used)) static int
filt_pipenotsup(struct knote *kn, long hint)
{

 return (0);
}
