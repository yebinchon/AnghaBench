
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* BCMFW ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stdout ;

__attribute__((used)) static void
bcmfw_usage(void)
{
 fprintf(stdout,
"Usage: %s -n name -m md_file -f fw_file\n"
"Where:\n" "\t-n name              device name\n" "\t-m mini-driver       image mini-driver image file name for download\n" "\t-f firmware image    firmware image file name for download\n" "\t-h                   display this message\n", BCMFW);





 exit(255);
}
