
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENAMETOOLONG ;
 int MAXPATHLEN ;
 int O_RDONLY ;
 int free (char*) ;
 int ksem_open_should_fail (char*,int ,int,int,int ) ;
 char* malloc (int) ;
 int memset (char*,char,int) ;

__attribute__((used)) static void
open_path_too_long(void)
{
 char *page;

 page = malloc(MAXPATHLEN + 1);
 memset(page, 'a', MAXPATHLEN);
 page[MAXPATHLEN] = '\0';
 ksem_open_should_fail(page, O_RDONLY, 0777, 1, ENAMETOOLONG);
 free(page);
}
