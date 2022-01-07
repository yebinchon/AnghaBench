
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int out_line; int out_name; } ;
struct TYPE_4__ {TYPE_1__ myutmp; int myhost; } ;


 TYPE_2__* MYUTMP (void const*) ;
 int strcmp (int ,int ) ;
 int strncmp (int ,int ,int) ;

__attribute__((used)) static int
utmpcmp(const void *u1, const void *u2)
{
 int rc;

 rc = strncmp(MYUTMP(u1)->myutmp.out_name, MYUTMP(u2)->myutmp.out_name,
     sizeof(MYUTMP(u2)->myutmp.out_name));
 if (rc != 0)
  return (rc);
 rc = strcmp(MYUTMP(u1)->myhost, MYUTMP(u2)->myhost);
 if (rc != 0)
  return (rc);
 return (strncmp(MYUTMP(u1)->myutmp.out_line,
     MYUTMP(u2)->myutmp.out_line, sizeof(MYUTMP(u2)->myutmp.out_line)));
}
