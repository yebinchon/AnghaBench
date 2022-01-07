
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ktr_csw {char* wmesg; scalar_t__ user; scalar_t__ out; } ;


 int printf (char*,char*,char*,char*) ;

void
ktrcsw(struct ktr_csw *cs)
{
 printf("%s %s \"%s\"\n", cs->out ? "stop" : "resume",
     cs->user ? "user" : "kernel", cs->wmesg);
}
