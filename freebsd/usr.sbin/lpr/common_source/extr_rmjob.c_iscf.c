
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char* d_name; } ;



int
iscf(const struct dirent *d)
{
 return(d->d_name[0] == 'c' && d->d_name[1] == 'f');
}
