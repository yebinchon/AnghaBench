
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int ;
typedef scalar_t__ u_char ;
struct sockaddr_ng {scalar_t__ sg_len; int sg_data; int sg_family; } ;
struct sockaddr {int dummy; } ;
typedef int sagbuf ;
typedef int buf ;
typedef int FILE ;


 int AF_NETGRAPH ;
 int BUF_SIZE ;
 int CMDRTN_ERROR ;
 int CMDRTN_OK ;
 int CMDRTN_USAGE ;
 int dsock ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (char*,char*) ;
 int fread (scalar_t__*,int,int,int *) ;
 int sendto (int ,scalar_t__*,int,int ,struct sockaddr*,scalar_t__) ;
 int sscanf (char*,char*,int*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlcpy (int ,char const*,int) ;
 scalar_t__ strlen (char const*) ;
 int warn (char*,char const*) ;
 int warnx (char*,char*) ;

__attribute__((used)) static int
WriteCmd(int ac, char **av)
{
 u_int32_t sagbuf[64];
 struct sockaddr_ng *sag = (struct sockaddr_ng *)sagbuf;
 u_char buf[BUF_SIZE];
 const char *hook;
 FILE *fp;
 u_int len;
 int byte;
 int i;


 if (ac < 3)
  return (CMDRTN_USAGE);
 hook = av[1];


 if (strcmp(av[2], "-f") == 0) {
  if (ac != 4)
   return (CMDRTN_USAGE);
  if ((fp = fopen(av[3], "r")) == ((void*)0)) {
   warn("can't read file \"%s\"", av[3]);
   return (CMDRTN_ERROR);
  }
  if ((len = fread(buf, 1, sizeof(buf), fp)) == 0) {
   if (ferror(fp))
    warn("can't read file \"%s\"", av[3]);
   else
    warnx("file \"%s\" is empty", av[3]);
   fclose(fp);
   return (CMDRTN_ERROR);
  }
  fclose(fp);
 } else {
  for (i = 2, len = 0; i < ac && len < sizeof(buf); i++, len++) {
   if (sscanf(av[i], "%i", &byte) != 1
       || (byte < -128 || byte > 255)) {
    warnx("invalid byte \"%s\"", av[i]);
    return (CMDRTN_ERROR);
   }
   buf[len] = (u_char)byte;
  }
  if (len == 0)
   return (CMDRTN_USAGE);
 }


 sag->sg_len = 3 + strlen(hook);
 sag->sg_family = AF_NETGRAPH;
 strlcpy(sag->sg_data, hook, sizeof(sagbuf) - 2);
 if (sendto(dsock, buf, len,
     0, (struct sockaddr *)sag, sag->sg_len) == -1) {
  warn("writing to hook \"%s\"", hook);
  return (CMDRTN_ERROR);
 }


 return (CMDRTN_OK);
}
