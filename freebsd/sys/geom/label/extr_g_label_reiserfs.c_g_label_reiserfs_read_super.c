
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
struct g_consumer {TYPE_1__* provider; } ;
struct TYPE_6__ {int s_magic; } ;
typedef TYPE_2__ reiserfs_sb_t ;
typedef int off_t ;
struct TYPE_5__ {int sectorsize; } ;


 int REISERFS_SUPER_MAGIC ;
 int g_free (TYPE_2__*) ;
 scalar_t__ g_read_data (struct g_consumer*,int,int,int *) ;
 int strlen (int ) ;
 scalar_t__ strncmp (int ,int ,int ) ;

__attribute__((used)) static reiserfs_sb_t *
g_label_reiserfs_read_super(struct g_consumer *cp, off_t offset)
{
 reiserfs_sb_t *fs;
 u_int secsize;

 secsize = cp->provider->sectorsize;

 if ((offset % secsize) != 0)
  return (((void*)0));

 fs = (reiserfs_sb_t *)g_read_data(cp, offset, secsize, ((void*)0));
 if (fs == ((void*)0))
  return (((void*)0));

 if (strncmp(fs->s_magic, REISERFS_SUPER_MAGIC,
     strlen(REISERFS_SUPER_MAGIC)) != 0) {
  g_free(fs);
  return (((void*)0));
 }

 return (fs);
}
