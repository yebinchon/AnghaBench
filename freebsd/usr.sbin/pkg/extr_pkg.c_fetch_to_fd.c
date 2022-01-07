
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zone ;
struct url_stat {int dummy; } ;
struct url {char* scheme; char* host; int port; } ;
struct dns_srvinfo {struct dns_srvinfo* next; int port; int host; } ;
typedef scalar_t__ ssize_t ;
typedef int buf ;
typedef int FILE ;


 int MAXHOSTNAMELEN ;
 int MIRROR_TYPE ;
 int close (int) ;
 scalar_t__ config_string (int ,char const**) ;
 struct dns_srvinfo* dns_getsrvinfo (char*) ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 struct url* fetchParseURL (char const*) ;
 int * fetchXGet (struct url*,struct url_stat*,char*) ;
 scalar_t__ fread (char*,int,int,int *) ;
 int mkstemp (char*) ;
 int sleep (int) ;
 int snprintf (char*,int,char*,char*,char*) ;
 scalar_t__ strcasecmp (char const*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlcpy (char*,int ,int) ;
 int unlink (char*) ;
 int warn (char*,...) ;
 int warnx (char*) ;
 scalar_t__ write (int,char*,scalar_t__) ;

__attribute__((used)) static int
fetch_to_fd(const char *url, char *path)
{
 struct url *u;
 struct dns_srvinfo *mirrors, *current;
 struct url_stat st;
 FILE *remote;

 int fd;
 int retry, max_retry;
 ssize_t r;
 char buf[10240];
 char zone[MAXHOSTNAMELEN + 13];
 static const char *mirror_type = ((void*)0);

 max_retry = 3;
 current = mirrors = ((void*)0);
 remote = ((void*)0);

 if (mirror_type == ((void*)0) && config_string(MIRROR_TYPE, &mirror_type)
     != 0) {
  warnx("No MIRROR_TYPE defined");
  return (-1);
 }

 if ((fd = mkstemp(path)) == -1) {
  warn("mkstemp()");
  return (-1);
 }

 retry = max_retry;

 if ((u = fetchParseURL(url)) == ((void*)0)) {
  warn("fetchParseURL('%s')", url);
  return (-1);
 }

 while (remote == ((void*)0)) {
  if (retry == max_retry) {
   if (strcmp(u->scheme, "file") != 0 &&
       strcasecmp(mirror_type, "srv") == 0) {
    snprintf(zone, sizeof(zone),
        "_%s._tcp.%s", u->scheme, u->host);
    mirrors = dns_getsrvinfo(zone);
    current = mirrors;
   }
  }

  if (mirrors != ((void*)0)) {
   strlcpy(u->host, current->host, sizeof(u->host));
   u->port = current->port;
  }

  remote = fetchXGet(u, &st, "");
  if (remote == ((void*)0)) {
   --retry;
   if (retry <= 0)
    goto fetchfail;
   if (mirrors == ((void*)0)) {
    sleep(1);
   } else {
    current = current->next;
    if (current == ((void*)0))
     current = mirrors;
   }
  }
 }

 while ((r = fread(buf, 1, sizeof(buf), remote)) > 0) {
  if (write(fd, buf, r) != r) {
   warn("write()");
   goto fetchfail;
  }
 }

 if (r != 0) {
  warn("An error occurred while fetching pkg(8)");
  goto fetchfail;
 }

 if (ferror(remote))
  goto fetchfail;

 goto cleanup;

fetchfail:
 if (fd != -1) {
  close(fd);
  fd = -1;
  unlink(path);
 }

cleanup:
 if (remote != ((void*)0))
  fclose(remote);

 return fd;
}
