
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct credential_operation {scalar_t__ name; } ;
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {char* name; } ;


 struct credential_operation* credential_helper_ops ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static void usage(const char *name)
{
 struct credential_operation const *try_op = credential_helper_ops;
 const char *basename = strrchr(name, '/');

 basename = (basename) ? basename + 1 : name;
 fprintf(stderr, "usage: %s <", basename);
 while (try_op->name) {
  fprintf(stderr, "%s", (try_op++)->name);
  if (try_op->name)
   fprintf(stderr, "%s", "|");
 }
 fprintf(stderr, "%s", ">\n");
}
