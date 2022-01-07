
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int line ;
typedef int FILE ;


 int * fgets (char*,int,int *) ;
 int my_pclose (int *,int ) ;
 int * my_popen (char*,char*,int *) ;
 int printf (char*,...) ;
 int sprintf (char*,char*,char const*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static void
test_for_a_pmc(const char *pmc, int out_so_far)
{
 FILE *io;
 pid_t pid_of_command=0;
 char my_command[1024];
 char line[1024];
 char resp[1024];
 int len, llen, i;

 if (out_so_far < 50) {
  len = 50 - out_so_far;
  for(i=0; i<len; i++) {
   printf(" ");
  }
 }
 sprintf(my_command, "/usr/sbin/pmcstat -w .25 -c 0 -s %s", pmc);
 io = my_popen(my_command, "r", &pid_of_command);
 if (io == ((void*)0)) {
  printf("Failed -- popen fails\n");
  return;
 }

 len = sprintf(resp, "%s", pmc);
 if (fgets(line, sizeof(line), io) == ((void*)0)) {
  printf("Failed -- no output from pmstat\n");
  goto out;
 }
 llen = strlen(line);
 if (line[(llen-1)] == '\n') {
  line[(llen-1)] = 0;
  llen--;
 }
 for(i=2; i<(llen-len); i++) {
  if (strncmp(&line[i], "ERROR", 5) == 0) {
   printf("Failed %s\n", line);
   goto out;
  } else if (strncmp(&line[i], resp, len) == 0) {
   int j, k;

   if (fgets(line, sizeof(line), io) == ((void*)0)) {
    printf("Failed -- no second output from pmstat\n");
    goto out;
   }
   len = strlen(line);
   for (j=0; j<len; j++) {
    if (line[j] == ' ') {
     j++;
    } else {
     break;
    }
   }
   printf("Pass");
   len = strlen(&line[j]);
   if (len < 20) {
    for(k=0; k<(20-len); k++) {
     printf(" ");
    }
   }
   if (len) {
    printf("%s", &line[j]);
   } else {
    printf("\n");
   }
   goto out;
  }
 }
 printf("Failed -- '%s' not '%s'\n", line, resp);
out:
 my_pclose(io, pid_of_command);

}
