
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{

 fprintf(stderr,
     "Usage: mlx5tool -d pci<d:b:s:f> [-w -o dump.file | -r |"
     " -e | -f fw.mfa2 | -z]\n");
 fprintf(stderr, "\t-w - write firmware dump to the specified file\n");
 fprintf(stderr, "\t-r - reset dump\n");
 fprintf(stderr, "\t-E - get eeprom info\n");
 fprintf(stderr, "\t-e - force dump\n");
 fprintf(stderr, "\t-f fw.img - flash firmware from fw.img\n");
 fprintf(stderr, "\t-z - initiate firmware reset\n");
 exit(1);
}
