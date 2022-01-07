
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct autofs_daemon_done {int add_wildcards; int add_error; int add_id; } ;
typedef int add ;


 int AUTOFSDONE ;
 int autofs_fd ;
 int ioctl (int ,int ,struct autofs_daemon_done*) ;
 int log_debugx (char*,int ,int) ;
 int log_warn (char*) ;
 int memset (struct autofs_daemon_done*,int ,int) ;
 int request_id ;

__attribute__((used)) static void
done(int request_error, bool wildcards)
{
 struct autofs_daemon_done add;
 int error;

 memset(&add, 0, sizeof(add));
 add.add_id = request_id;
 add.add_wildcards = wildcards;
 add.add_error = request_error;

 log_debugx("completing request %d with error %d",
     request_id, request_error);

 error = ioctl(autofs_fd, AUTOFSDONE, &add);
 if (error != 0)
  log_warn("AUTOFSDONE");
}
