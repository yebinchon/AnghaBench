
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {scalar_t__ len; } ;
typedef TYPE_1__ tokenstr_t ;
typedef int ssize_t ;
typedef int FILE ;


 int ATF_REQUIRE (int) ;
 int ATF_REQUIRE_EQ (int ,int ) ;
 int AU_OFLAG_NONE ;
 int atf_tc_fail (char*) ;
 int atf_utils_grep_string (char*,char*,char const*) ;
 int au_fetch_tok (TYPE_1__*,int *,int) ;
 int au_print_flags_tok (int *,TYPE_1__*,char*,int ) ;
 int au_read_rec (int *,int **) ;
 int fclose (int *) ;
 int * fmemopen (char*,int,char*) ;
 int free (int *) ;
 int perror (char*) ;

__attribute__((used)) static bool
get_records(const char *auditregex, FILE *pipestream)
{
 uint8_t *buff;
 tokenstr_t token;
 ssize_t size = 1024;
 char membuff[size];
 char del[] = ",";
 int reclen, bytes = 0;
 FILE *memstream;







 ATF_REQUIRE((memstream = fmemopen(membuff, size, "w")) != ((void*)0));
 ATF_REQUIRE((reclen = au_read_rec(pipestream, &buff)) != -1);





 while (bytes < reclen) {
  if (au_fetch_tok(&token, buff + bytes, reclen - bytes) == -1) {
   perror("au_read_rec");
   atf_tc_fail("Incomplete Audit Record");
  }


  au_print_flags_tok(memstream, &token, del, AU_OFLAG_NONE);
  bytes += token.len;
 }

 free(buff);
 ATF_REQUIRE_EQ(0, fclose(memstream));
 return (atf_utils_grep_string("%s", membuff, auditregex));
}
