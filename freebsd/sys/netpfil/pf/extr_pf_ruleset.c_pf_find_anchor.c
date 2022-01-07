
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_anchor {int path; } ;


 struct pf_anchor* RB_FIND (int ,int *,struct pf_anchor*) ;
 int V_pf_anchors ;
 int pf_anchor_global ;
 int rs_free (struct pf_anchor*) ;
 scalar_t__ rs_malloc (int) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static struct pf_anchor *
pf_find_anchor(const char *path)
{
 struct pf_anchor *key, *found;

 key = (struct pf_anchor *)rs_malloc(sizeof(*key));
 if (key == ((void*)0))
  return (((void*)0));
 strlcpy(key->path, path, sizeof(key->path));
 found = RB_FIND(pf_anchor_global, &V_pf_anchors, key);
 rs_free(key);
 return (found);
}
