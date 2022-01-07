
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_command {char* command; } ;


 int fprintf (int ,char*,char*) ;
 int stdout ;

__attribute__((used)) static void
print_l2cap_command(struct l2cap_command *category)
{
 struct l2cap_command *c = ((void*)0);

 for (c = category; c->command != ((void*)0); c++)
  fprintf(stdout, "\t%s\n", c->command);
}
