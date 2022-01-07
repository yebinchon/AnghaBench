
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_char ;
struct g_provider {int name; int sectorsize; } ;
struct g_consumer {struct g_provider* provider; } ;


 int EINVAL ;
 int LDM_DEBUG (int,char*,int ) ;
 int LDM_PH_SIGN ;
 int g_free (int *) ;
 int * g_read_data (struct g_consumer*,int ,int ,int*) ;
 scalar_t__ memcmp (int *,int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static u_char*
ldm_privhdr_read(struct g_consumer *cp, uint64_t off, int *error)
{
 struct g_provider *pp;
 u_char *buf;

 pp = cp->provider;
 buf = g_read_data(cp, off, pp->sectorsize, error);
 if (buf == ((void*)0))
  return (((void*)0));

 if (memcmp(buf, LDM_PH_SIGN, strlen(LDM_PH_SIGN)) != 0) {
  LDM_DEBUG(1, "%s: invalid LDM private header signature",
      pp->name);
  g_free(buf);
  buf = ((void*)0);
  *error = EINVAL;
 }
 return (buf);
}
