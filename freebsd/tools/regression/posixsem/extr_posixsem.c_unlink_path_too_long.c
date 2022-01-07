
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENAMETOOLONG ;
 int MAXPATHLEN ;
 int free (char*) ;
 int ksem_unlink_should_fail (char*,int ) ;
 char* malloc (int) ;
 int memset (char*,char,int) ;

__attribute__((used)) static void
unlink_path_too_long(void)
{
 char *page;

 page = malloc(MAXPATHLEN + 1);
 memset(page, 'a', MAXPATHLEN);
 page[MAXPATHLEN] = '\0';
 ksem_unlink_should_fail(page, ENAMETOOLONG);
 free(page);
}
