
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cyapa_cdevpriv {TYPE_1__* sc; } ;
struct TYPE_3__ {int count; } ;


 int KASSERT (int ,char*) ;
 int M_CYAPA ;
 int cyapa_lock (TYPE_1__*) ;
 int cyapa_unlock (TYPE_1__*) ;
 int free (struct cyapa_cdevpriv*,int ) ;

__attribute__((used)) static void
cyapa_cdevpriv_dtor(void *data)
{
 struct cyapa_cdevpriv *priv;

 priv = data;
 KASSERT(priv != ((void*)0), ("cyapa cdevpriv should not be NULL!"));

 cyapa_lock(priv->sc);
 priv->sc->count--;
 cyapa_unlock(priv->sc);

 free(priv, M_CYAPA);
}
