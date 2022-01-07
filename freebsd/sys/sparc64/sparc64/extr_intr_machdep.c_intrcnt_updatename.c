
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IV_MAX ;
 int PIL_MAX ;
 scalar_t__ bootverbose ;
 int* intr_countp ;
 int intrcnt_lock ;
 scalar_t__ intrcnt_setname (char const*,int) ;
 char* intrnames ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int* pil_countp ;
 int printf (char*) ;

__attribute__((used)) static void
intrcnt_updatename(int vec, const char *name, int ispil)
{
 static int intrcnt_index, stray_pil_index, stray_vec_index;
 int name_index;

 mtx_lock_spin(&intrcnt_lock);
 if (intrnames[0] == '\0') {

  if (bootverbose)
   printf("initalizing intr_countp\n");
  intrcnt_setname("???", intrcnt_index++);

  stray_vec_index = intrcnt_index++;
  intrcnt_setname("stray", stray_vec_index);
  for (name_index = 0; name_index < IV_MAX; name_index++)
   intr_countp[name_index] = stray_vec_index;

  stray_pil_index = intrcnt_index++;
  intrcnt_setname("pil", stray_pil_index);
  for (name_index = 0; name_index < PIL_MAX; name_index++)
   pil_countp[name_index] = stray_pil_index;
 }

 if (name == ((void*)0))
  name = "???";

 if (!ispil && intr_countp[vec] != stray_vec_index)
  name_index = intr_countp[vec];
 else if (ispil && pil_countp[vec] != stray_pil_index)
  name_index = pil_countp[vec];
 else
  name_index = intrcnt_index++;

 if (intrcnt_setname(name, name_index))
  name_index = 0;

 if (!ispil)
  intr_countp[vec] = name_index;
 else
  pil_countp[vec] = name_index;
 mtx_unlock_spin(&intrcnt_lock);
}
