
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t4_offload_policy {int nrules; struct offload_rule* rule; } ;
struct offload_rule {int dummy; } ;
typedef int pcap_t ;
typedef int FILE ;


 int DLT_EN10MB ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 scalar_t__ REALLOC_STRIDE ;
 int errno ;
 int fclose (int *) ;
 int feof (int *) ;
 int * fopen (char const*,char*) ;
 int free (char*) ;
 int free_offload_policy (struct t4_offload_policy*) ;
 size_t getline (char**,size_t*,int *) ;
 scalar_t__ isempty_line (char*,size_t) ;
 int parse_offload_policy_line (int,char*,size_t,int *,struct offload_rule*) ;
 int pcap_close (int *) ;
 int * pcap_open_dead (int ,int) ;
 struct offload_rule* realloc (struct offload_rule*,int) ;
 int warn (char*,char const*,...) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
parse_offload_policy(const char *fname, struct t4_offload_policy *op)
{
 FILE *fp;
 char *line;
 int lno, maxrules, rc;
 size_t lcap, llen;
 struct offload_rule *r;
 pcap_t *pd;

 fp = fopen(fname, "r");
 if (fp == ((void*)0)) {
  warn("Unable to open file \"%s\"", fname);
  return (errno);
 }
 pd = pcap_open_dead(DLT_EN10MB, 128);
 if (pd == ((void*)0)) {
  warnx("Failed to open pcap device");
  fclose(fp);
  return (EIO);
 }

 rc = 0;
 lno = 0;
 lcap = 0;
 maxrules = 0;
 op->nrules = 0;
 op->rule = ((void*)0);
 line = ((void*)0);

 while ((llen = getline(&line, &lcap, fp)) != -1) {
  lno++;


  if (isempty_line(line, llen))
   continue;

  if (op->nrules == maxrules) {
   maxrules += REALLOC_STRIDE;
   r = realloc(op->rule,
       maxrules * sizeof(struct offload_rule));
   if (r == ((void*)0)) {
    warnx("failed to allocate memory for %d rules",
        maxrules);
    rc = ENOMEM;
    goto done;
   }
   op->rule = r;
  }

  r = &op->rule[op->nrules];
  rc = parse_offload_policy_line(lno, line, llen, pd, r);
  if (rc != 0) {
   warnx("Error parsing line %d of \"%s\"", lno, fname);
   goto done;
  }

  op->nrules++;
 }
 free(line);

 if (!feof(fp)) {
  warn("Error while reading from file \"%s\" at line %d",
      fname, lno);
  rc = errno;
  goto done;
 }

 if (op->nrules == 0) {
  warnx("No valid rules found in \"%s\"", fname);
  rc = EINVAL;
 }
done:
 pcap_close(pd);
 fclose(fp);
 if (rc != 0) {
  free_offload_policy(op);
 }

 return (rc);
}
