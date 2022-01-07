
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int UINT16_MAX ;
 int cores ;
 int free (char*) ;
 int guest_ncpus ;
 int m ;
 int sockets ;
 int sscanf (char*,char*,int*,int*) ;
 char* strdup (char const*) ;
 char* strsep (char**,char*) ;
 int threads ;

__attribute__((used)) static int
topology_parse(const char *opt)
{
 uint64_t ncpus;
 int c, chk, n, s, t, tmp;
 char *cp, *str;
 bool ns, scts;

 c = 1, n = 1, s = 1, t = 1;
 ns = 0, scts = 0;
 str = strdup(opt);
 if (str == ((void*)0))
  goto out;

 while ((cp = strsep(&str, ",")) != ((void*)0)) {
  if (sscanf(cp, "%i%n", &tmp, &chk) == 1) {
   n = tmp;
   ns = 1;
  } else if (sscanf(cp, "cpus=%i%n", &tmp, &chk) == 1) {
   n = tmp;
   ns = 1;
  } else if (sscanf(cp, "sockets=%i%n", &tmp, &chk) == 1) {
   s = tmp;
   scts = 1;
  } else if (sscanf(cp, "cores=%i%n", &tmp, &chk) == 1) {
   c = tmp;
   scts = 1;
  } else if (sscanf(cp, "threads=%i%n", &tmp, &chk) == 1) {
   t = tmp;
   scts = 1;





  } else if (cp[0] == '\0')
   continue;
  else
   goto out;

  if (cp[chk] != '\0')
   goto out;
 }
 free(str);
 str = ((void*)0);




 if (n < 1 || s < 1 || c < 1 || t < 1 ||
     n > UINT16_MAX || s > UINT16_MAX || c > UINT16_MAX ||
     t > UINT16_MAX)
  return (-1);


 if (!scts)
  s = n;





 ncpus = (uint64_t)s * c * t;
 if (ncpus > UINT16_MAX || (ns && n != ncpus))
  return (-1);

 guest_ncpus = ncpus;
 sockets = s;
 cores = c;
 threads = t;
 return(0);

out:
 free(str);
 return (-1);
}
