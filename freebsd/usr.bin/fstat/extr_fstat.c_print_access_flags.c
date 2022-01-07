
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PS_FST_FFLAG_READ ;
 int PS_FST_FFLAG_WRITE ;
 int printf (char*,char*) ;
 int strcat (char*,char*) ;

__attribute__((used)) static void
print_access_flags(int flags)
{
 char rw[3];

 rw[0] = '\0';
 if (flags & PS_FST_FFLAG_READ)
  strcat(rw, "r");
 if (flags & PS_FST_FFLAG_WRITE)
  strcat(rw, "w");
 printf(" %2s", rw);
}
