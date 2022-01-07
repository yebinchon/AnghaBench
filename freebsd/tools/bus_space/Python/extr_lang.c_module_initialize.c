
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int PyModule_AddObject (int *,char*,int *) ;
 int * Py_BuildValue (char*,int) ;

__attribute__((used)) static PyObject *
module_initialize(PyObject *bus, PyObject *busdma)
{

 if (bus == ((void*)0) || busdma == ((void*)0))
  return (((void*)0));

 PyModule_AddObject(busdma, "MD_BUS_SPACE", Py_BuildValue("i", 0));
 PyModule_AddObject(busdma, "MD_PHYS_SPACE", Py_BuildValue("i", 1));
 PyModule_AddObject(busdma, "MD_VIRT_SPACE", Py_BuildValue("i", 2));

 PyModule_AddObject(busdma, "SYNC_PREREAD", Py_BuildValue("i", 1));
 PyModule_AddObject(busdma, "SYNC_POSTREAD", Py_BuildValue("i", 2));
 PyModule_AddObject(busdma, "SYNC_PREWRITE", Py_BuildValue("i", 4));
 PyModule_AddObject(busdma, "SYNC_POSTWRITE", Py_BuildValue("i", 8));

 PyModule_AddObject(bus, "dma", busdma);
 return (bus);
}
