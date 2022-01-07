
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int EIO ;
 int M_VERIEXEC ;
 int free (char*,int ) ;
 int parse_entry (char*,char*) ;
 int printf (char*,int,char*) ;
 char* read_manifest (char*,unsigned char*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static int
parse_manifest(char *path, unsigned char *hash, char *prefix)
{
 char *data;
 char *entry;
 char *next_entry;
 int rc, success_count;

 data = ((void*)0);
 success_count = 0;
 rc = 0;

 data = read_manifest(path, hash);
 if (data == ((void*)0)) {
  rc = EIO;
  goto out;
 }

 entry = data;
 while (entry != ((void*)0)) {
  next_entry = strchr(entry, '\n');
  if (next_entry != ((void*)0)) {
   *next_entry = '\0';
   next_entry++;
  }
  if (entry[0] == '\n' || entry[0] == '\0') {
   entry = next_entry;
   continue;
  }
  if ((rc = parse_entry(entry, prefix)))
   printf("mac_veriexec_parser: Warning: Failed to parse"
          " entry with rc:%d, entry:\"%s\"\n", rc, entry);
  else
   success_count++;

  entry = next_entry;
 }
 rc = 0;

out:
 if (data != ((void*)0))
  free(data, M_VERIEXEC);

 if (success_count == 0)
  rc = EINVAL;

 return (rc);
}
