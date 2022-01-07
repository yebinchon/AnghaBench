
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ktr_csw_old {scalar_t__ user; scalar_t__ out; } ;


 int printf (char*,char*,char*) ;

void
ktrcsw_old(struct ktr_csw_old *cs)
{
 printf("%s %s\n", cs->out ? "stop" : "resume",
  cs->user ? "user" : "kernel");
}
