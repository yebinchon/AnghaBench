
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SHA256_CTX ;
typedef int FILE ;


 int BUFSIZ ;
 int SEEK_SET ;
 int SHA256_DIGEST_LENGTH ;
 int SHA256_Final (unsigned char*,int *) ;
 int SHA256_Init (int *) ;
 int SHA256_Update (int *,char*,size_t) ;
 int close (int) ;
 int dup (int) ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 scalar_t__ ferror (int *) ;
 size_t fread (char*,int,int,int *) ;
 int lseek (int,int ,int ) ;
 int sha256_hash (unsigned char*,char*) ;
 int warnx (char*) ;

__attribute__((used)) static int
sha256_fd(int fd, char out[SHA256_DIGEST_LENGTH * 2 + 1])
{
 int my_fd;
 FILE *fp;
 char buffer[BUFSIZ];
 unsigned char hash[SHA256_DIGEST_LENGTH];
 size_t r;
 int ret;
 SHA256_CTX sha256;

 my_fd = -1;
 fp = ((void*)0);
 r = 0;
 ret = 1;

 out[0] = '\0';


 if ((my_fd = dup(fd)) == -1) {
  warnx("dup");
  goto cleanup;
 }

 if ((fp = fdopen(my_fd, "rb")) == ((void*)0)) {
  warnx("fdopen");
  goto cleanup;
 }

 SHA256_Init(&sha256);

 while ((r = fread(buffer, 1, BUFSIZ, fp)) > 0)
  SHA256_Update(&sha256, buffer, r);

 if (ferror(fp) != 0) {
  warnx("fread");
  goto cleanup;
 }

 SHA256_Final(hash, &sha256);
 sha256_hash(hash, out);
 ret = 0;

cleanup:
 if (fp != ((void*)0))
  fclose(fp);
 else if (my_fd != -1)
  close(my_fd);
 (void)lseek(fd, 0, SEEK_SET);

 return (ret);
}
