
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_IWGRP ;
 int S_IWOTH ;
 int S_IWUSR ;
 int S_IXGRP ;
 int S_IXOTH ;
 int S_IXUSR ;

__attribute__((used)) static void
shm_decode_mode(mode_t m, char *str)
{
 int i;

 i = 0;
 str[i++] = (m & S_IRUSR) != 0 ? 'r' : '-';
 str[i++] = (m & S_IWUSR) != 0 ? 'w' : '-';
 str[i++] = (m & S_IXUSR) != 0 ? 'x' : '-';
 str[i++] = (m & S_IRGRP) != 0 ? 'r' : '-';
 str[i++] = (m & S_IWGRP) != 0 ? 'w' : '-';
 str[i++] = (m & S_IXGRP) != 0 ? 'x' : '-';
 str[i++] = (m & S_IROTH) != 0 ? 'r' : '-';
 str[i++] = (m & S_IWOTH) != 0 ? 'w' : '-';
 str[i++] = (m & S_IXOTH) != 0 ? 'x' : '-';
 str[i] = '\0';
}
