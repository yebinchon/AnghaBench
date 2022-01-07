
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;


 int ofw_dump_node (int,int ,int ,int,int,char const*,int,int) ;
 int ofw_finddevice (int,char const*) ;
 int ofw_root (int) ;

__attribute__((used)) static void
ofw_dump(int fd, const char *start, int rec, int prop, const char *pmatch,
    int raw, int str)
{
 phandle_t n;

 n = start == ((void*)0) ? ofw_root(fd) : ofw_finddevice(fd, start);
 ofw_dump_node(fd, n, 0, rec, prop, pmatch, raw, str);
}
