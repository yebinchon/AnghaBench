
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_VERIEXEC ;
 int M_WAITOK ;
 int free (char*,int ) ;
 char* malloc (size_t,int ,int ) ;
 int memcpy (char*,char*,size_t) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ve_mutex ;

__attribute__((used)) static size_t
mac_veriexec_init_label(char **labelp, size_t labellen, char *src,
    size_t srclen)
{
 char *label;

 label = *labelp;
 if (labellen < srclen) {
  mtx_unlock(&ve_mutex);
  if (label != ((void*)0))
   free(label, M_VERIEXEC);
  label = malloc(srclen, M_VERIEXEC, M_WAITOK);
  mtx_lock(&ve_mutex);
  labellen = srclen;
  *labelp = label;
 }
 memcpy(label, src, srclen);
 return labellen;
}
