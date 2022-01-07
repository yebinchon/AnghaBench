
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int O_WRONLY ;
 int WNOHANG ;
 int W_OK ;
 scalar_t__ access (char*,int ) ;
 int atoi (char*) ;
 scalar_t__ chdir (char*) ;
 int chmod (char*,int) ;
 int close (int) ;
 int con_sock ;
 scalar_t__ daemonize ;
 int exit (int) ;
 char* fetch_mode ;
 int fork () ;
 char* getenv (char*) ;
 scalar_t__ geteuid () ;
 int getopt (int,char**,char*) ;
 char* homedir ;
 int http_port ;
 int http_request () ;
 int http_sock ;
 int init_servconnection () ;
 scalar_t__ listen (int ,int) ;
 char* logfile ;
 int open (char*,int ) ;
 char* optarg ;
 int perror (char*) ;
 int printf (char*,...) ;
 int puts (char*) ;
 int setpgrp (int,int) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int verbose ;
 int wait3 (int ,int ,int ) ;
 int wait_connection () ;

int
main(int argc, char *argv[])
{
 int ch, ld;
 pid_t httpd_group = 65534;
 pid_t server_pid;


 strcpy (homedir,getenv("HOME"));
 if (!geteuid()) strcpy (homedir,"/httphome");
    else strcat (homedir,"/httphome");


 if (geteuid()) {
     strcpy(logfile,getenv("HOME"));
     strcat(logfile,"/");
     strcat(logfile,"jhttp.log");
 } else
   strcpy(logfile,"/var/log/jhttpd.log");


 while ((ch = getopt(argc, argv, "d:f:g:l:p:vDh")) != -1)
   switch (ch) {
   case 'd':
     strcpy(homedir,optarg);
     break;
   case 'f':
     daemonize = 0;
     verbose = 1;
     fetch_mode = optarg;
     break;
   case 'g':
     httpd_group = atoi(optarg);
     break;
   case 'l':
     strcpy(logfile,optarg);
     break;
   case 'p':
     http_port = atoi(optarg);
     break;
   case 'v':
     verbose = 1;
     break;
   case 'D':
     daemonize = 0;
     break;
   case '?':
   case 'h':
   default:
     printf("usage: simple_httpd [[-d directory][-g grpid][-l logfile][-p port][-vD]]\n");
     exit(1);

   }


 if ((http_port == 80) && geteuid()) {
   http_port = 1080;
 }


 if (fetch_mode == ((void*)0)) {
   if (chdir(homedir)) {
     perror("chdir");
     puts(homedir);
     exit(1);
   }
 }


 if ((access(logfile,W_OK)) && daemonize) {
   ld = open (logfile,O_WRONLY);
   chmod (logfile,00600);
   close(ld);
 }

 init_servconnection();

 if (verbose) {
   printf("Server started with options \n");
   printf("port: %d\n",http_port);
   if (fetch_mode == ((void*)0)) printf("html home: %s\n",homedir);
   if (daemonize) printf("logfile: %s\n",logfile);
 }


 if (daemonize) {
   if ((server_pid = fork()) != 0) {
     wait3(0,WNOHANG,0);
     if (verbose) printf("pid: %d\n",server_pid);
     exit(0);
   }
   wait3(0,WNOHANG,0);
 }

 if (fetch_mode == ((void*)0))
  setpgrp((pid_t)0, httpd_group);




 if (listen(http_sock,15) < 0) exit(1);

 label:
 wait_connection();

 if (fork()) {
   wait3(0,WNOHANG,0);
   close(con_sock);
   goto label;
 }

 http_request();

 wait3(0,WNOHANG,0);
 exit(0);
}
