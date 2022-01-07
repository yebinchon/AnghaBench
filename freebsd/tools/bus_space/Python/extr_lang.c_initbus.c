
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyMODINIT_FUNC ;


 int * Py_InitModule3 (char*,int ,int ) ;
 int bus_docstr ;
 int bus_methods ;
 int busdma_docstr ;
 int busdma_methods ;
 int module_initialize (int *,int *) ;

PyMODINIT_FUNC
initbus(void)
{
 PyObject *bus, *busdma;

 bus = Py_InitModule3("bus", bus_methods, bus_docstr);
 busdma = Py_InitModule3("busdma", busdma_methods, busdma_docstr);
 (void)module_initialize(bus, busdma);
}
