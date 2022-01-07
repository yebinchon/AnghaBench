
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t errno ;
 int printf (char*,char const*,...) ;
 char* stripath (char const*) ;
 char** sys_errlist ;

__attribute__((used)) static int
report(const char *path, const char *name, int error)
{
    if (name)
 name = stripath(name);
    switch (error) {
    case 128:
 printf("%s: Unknown format\n", path);
 break;
    case 133:
 printf("%s: Invalid MD5 format\n", path);
 break;
    case 134:
 printf("%s: Invalid .inf format\n", path);
 break;
    case 129:
 printf("%s: Can't derive component name\n", path);
 break;
    case 130:
 printf("%s: %s: Size mismatch\n", path, name);
 break;
    case 132:
 printf("%s: %s: Checksum mismatch\n", path, name);
 break;
    case 131:
 printf("%s: %s: %s\n", path, name, sys_errlist[errno]);
 break;
    default:
 printf("%s: %s: OK\n", path, name);
    }
    return error != 0;
}
