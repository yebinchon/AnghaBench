
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
banner(void)
{

 fprintf(stderr,
  "WARNING: You are advised to run this program in single\r\n"
  "user mode, with few or no processes running.\r\n\r\n");
}
