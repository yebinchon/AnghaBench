
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ensure_socket_initialization () ;
 int gethostname (char*,int) ;

int mingw_gethostname(char *name, int namelen)
{
    ensure_socket_initialization();
    return gethostname(name, namelen);
}
