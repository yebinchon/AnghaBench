
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct camdd_io_opts {int write_dev; int min_cmd_size; void* debug; int offset; void* queue_depth; int blocksize; int * dev_name; int dev_type; } ;


 int CAMDD_DEV_FILE ;
 int CAMDD_DEV_PASS ;
 int expand_number (char*,int *) ;
 int free (char*) ;
 void* strdup (char*) ;
 scalar_t__ strncasecmp (char*,char*,int) ;
 char* strsep (char**,char*) ;
 int strtol (char*,char**,int ) ;
 void* strtoull (char*,char**,int ) ;
 int warn (char*,...) ;
 int warnx (char*,...) ;

int
camdd_parse_io_opts(char *args, int is_write, struct camdd_io_opts *io_opts)
{
 char *tmpstr, *tmpstr2;
 char *orig_tmpstr = ((void*)0);
 int retval = 0;

 io_opts->write_dev = is_write;

 tmpstr = strdup(args);
 if (tmpstr == ((void*)0)) {
  warn("strdup failed");
  retval = 1;
  goto bailout;
 }
 orig_tmpstr = tmpstr;
 while ((tmpstr2 = strsep(&tmpstr, ",")) != ((void*)0)) {
  char *name, *value;





  if (*tmpstr2 == '\0')
   continue;

  name = strsep(&tmpstr2, "=");
  if (*name == '\0') {
   warnx("Got empty I/O parameter name");
   retval = 1;
   goto bailout;
  }
  value = strsep(&tmpstr2, "=");
  if ((value == ((void*)0))
   || (*value == '\0')) {
   warnx("Empty I/O parameter value for %s", name);
   retval = 1;
   goto bailout;
  }
  if (strncasecmp(name, "file", 4) == 0) {
   io_opts->dev_type = CAMDD_DEV_FILE;
   io_opts->dev_name = strdup(value);
   if (io_opts->dev_name == ((void*)0)) {
    warn("Error allocating memory");
    retval = 1;
    goto bailout;
   }
  } else if (strncasecmp(name, "pass", 4) == 0) {
   io_opts->dev_type = CAMDD_DEV_PASS;
   io_opts->dev_name = strdup(value);
   if (io_opts->dev_name == ((void*)0)) {
    warn("Error allocating memory");
    retval = 1;
    goto bailout;
   }
  } else if ((strncasecmp(name, "bs", 2) == 0)
   || (strncasecmp(name, "blocksize", 9) == 0)) {
   retval = expand_number(value, &io_opts->blocksize);
   if (retval == -1) {
    warn("expand_number(3) failed on %s=%s", name,
        value);
    retval = 1;
    goto bailout;
   }
  } else if (strncasecmp(name, "depth", 5) == 0) {
   char *endptr;

   io_opts->queue_depth = strtoull(value, &endptr, 0);
   if (*endptr != '\0') {
    warnx("invalid queue depth %s", value);
    retval = 1;
    goto bailout;
   }
  } else if (strncasecmp(name, "mcs", 3) == 0) {
   char *endptr;

   io_opts->min_cmd_size = strtol(value, &endptr, 0);
   if ((*endptr != '\0')
    || ((io_opts->min_cmd_size > 16)
     || (io_opts->min_cmd_size < 0))) {
    warnx("invalid minimum cmd size %s", value);
    retval = 1;
    goto bailout;
   }
  } else if (strncasecmp(name, "offset", 6) == 0) {
   retval = expand_number(value, &io_opts->offset);
   if (retval == -1) {
    warn("expand_number(3) failed on %s=%s", name,
        value);
    retval = 1;
    goto bailout;
   }
  } else if (strncasecmp(name, "debug", 5) == 0) {
   char *endptr;

   io_opts->debug = strtoull(value, &endptr, 0);
   if (*endptr != '\0') {
    warnx("invalid debug level %s", value);
    retval = 1;
    goto bailout;
   }
  } else {
   warnx("Unrecognized parameter %s=%s", name, value);
  }
 }
bailout:
 free(orig_tmpstr);

 return (retval);
}
