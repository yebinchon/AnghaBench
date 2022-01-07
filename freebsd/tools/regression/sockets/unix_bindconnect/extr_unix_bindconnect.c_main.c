
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_MAX ;
 int bind_test (char*) ;
 int connect_test (char*) ;
 int err (int,char*) ;
 int * mkdtemp (char*) ;
 int push_path (char*) ;
 int strlcpy (char*,char*,int) ;
 int unwind () ;

int
main(void)
{
 char directory_path[PATH_MAX];
 int error;

 strlcpy(directory_path, "/tmp/unix_bind.XXXXXXX", PATH_MAX);
 if (mkdtemp(directory_path) == ((void*)0))
  err(-1, "mkdtemp");
 push_path(directory_path);

 error = bind_test(directory_path);

 if (error == 0)
  error = connect_test(directory_path);

 unwind();
 return (error);
}
