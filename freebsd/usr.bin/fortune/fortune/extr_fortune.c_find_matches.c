
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPRINTF (int,int ) ;
 int FALSE ;
 int File_list ;
 scalar_t__ Fort_len ;
 int Fortbuf ;
 int Found_one ;
 int do_malloc (unsigned int) ;
 int matches_in_list (int ) ;
 scalar_t__ maxlen_in_list (int ) ;
 int stderr ;

__attribute__((used)) static int
find_matches(void)
{
 Fort_len = maxlen_in_list(File_list);
 DPRINTF(2, (stderr, "Maximum length is %d\n", Fort_len));

 Fortbuf = do_malloc((unsigned int) Fort_len + 10);

 Found_one = FALSE;
 matches_in_list(File_list);

 return (Found_one);
}
