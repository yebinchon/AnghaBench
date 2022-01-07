; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_ofw_pcibus.c_ofw_pcibus_enum_devtree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_ofw_pcibus.c_ofw_pcibus_enum_devtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofw_pci_register = type { i32 }
%struct.ofw_pcibus_devinfo = type { %struct.TYPE_4__, i32*, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.pci_devinfo = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@PCI_INVALID_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"interrupts\00", align 1
@PCIR_INTLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @ofw_pcibus_enum_devtree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ofw_pcibus_enum_devtree(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ofw_pci_register, align 4
  %9 = alloca %struct.ofw_pcibus_devinfo*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @device_get_parent(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @ofw_bus_get_node(i32 %17)
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = call i64 @OF_child(i64 %19)
  store i64 %20, i64* %11, align 8
  br label %21

21:                                               ; preds = %100, %3
  %22 = load i64, i64* %11, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %103

24:                                               ; preds = %21
  %25 = load i64, i64* %11, align 8
  %26 = bitcast %struct.ofw_pci_register* %8 to i32*
  %27 = call i32 @OF_getencprop(i64 %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %26, i32 4)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %100

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.ofw_pci_register, %struct.ofw_pci_register* %8, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @OFW_PCI_PHYS_HI_DEVICE(i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = getelementptr inbounds %struct.ofw_pci_register, %struct.ofw_pci_register* %8, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @OFW_PCI_PHYS_HI_FUNCTION(i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32* @pci_find_dbsf(i32 %37, i32 %38, i32 %39, i32 %40)
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  br label %100

44:                                               ; preds = %30
  %45 = load i32, i32* @PCI_INVALID_IRQ, align 4
  store i32 %45, i32* %14, align 4
  %46 = load i64, i64* %11, align 8
  %47 = call i64 @OF_getproplen(i64 %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 0, i32* %14, align 4
  br label %50

50:                                               ; preds = %49, %44
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @PCIR_INTLINE, align 4
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @PCIB_WRITE_CONFIG(i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 1)
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i64 @pci_read_device(i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63)
  %65 = inttoptr i64 %64 to %struct.ofw_pcibus_devinfo*
  store %struct.ofw_pcibus_devinfo* %65, %struct.ofw_pcibus_devinfo** %9, align 8
  %66 = load %struct.ofw_pcibus_devinfo*, %struct.ofw_pcibus_devinfo** %9, align 8
  %67 = icmp eq %struct.ofw_pcibus_devinfo* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %50
  br label %100

69:                                               ; preds = %50
  %70 = load %struct.ofw_pcibus_devinfo*, %struct.ofw_pcibus_devinfo** %9, align 8
  %71 = getelementptr inbounds %struct.ofw_pcibus_devinfo, %struct.ofw_pcibus_devinfo* %70, i32 0, i32 2
  %72 = load i64, i64* %11, align 8
  %73 = call i64 @ofw_bus_gen_setup_devinfo(i32* %71, i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load %struct.ofw_pcibus_devinfo*, %struct.ofw_pcibus_devinfo** %9, align 8
  %77 = bitcast %struct.ofw_pcibus_devinfo* %76 to %struct.pci_devinfo*
  %78 = call i32 @pci_freecfg(%struct.pci_devinfo* %77)
  br label %100

79:                                               ; preds = %69
  %80 = load %struct.ofw_pcibus_devinfo*, %struct.ofw_pcibus_devinfo** %9, align 8
  %81 = getelementptr inbounds %struct.ofw_pcibus_devinfo, %struct.ofw_pcibus_devinfo* %80, i32 0, i32 1
  store i32* null, i32** %81, align 8
  %82 = load i32, i32* %4, align 4
  %83 = load %struct.ofw_pcibus_devinfo*, %struct.ofw_pcibus_devinfo** %9, align 8
  %84 = bitcast %struct.ofw_pcibus_devinfo* %83 to %struct.pci_devinfo*
  %85 = call i32 @pci_add_child(i32 %82, %struct.pci_devinfo* %84)
  %86 = load %struct.ofw_pcibus_devinfo*, %struct.ofw_pcibus_devinfo** %9, align 8
  %87 = getelementptr inbounds %struct.ofw_pcibus_devinfo, %struct.ofw_pcibus_devinfo* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %79
  %93 = load i32, i32* %4, align 4
  %94 = load i64, i64* %11, align 8
  %95 = load %struct.ofw_pcibus_devinfo*, %struct.ofw_pcibus_devinfo** %9, align 8
  %96 = getelementptr inbounds %struct.ofw_pcibus_devinfo, %struct.ofw_pcibus_devinfo* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = call i32 @ofw_bus_intr_to_rl(i32 %93, i64 %94, i32* %97, i32* null)
  br label %99

99:                                               ; preds = %92, %79
  br label %100

100:                                              ; preds = %99, %75, %68, %43, %29
  %101 = load i64, i64* %11, align 8
  %102 = call i64 @OF_peer(i64 %101)
  store i64 %102, i64* %11, align 8
  br label %21

103:                                              ; preds = %21
  ret void
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i32 @OF_getencprop(i64, i8*, i32*, i32) #1

declare dso_local i32 @OFW_PCI_PHYS_HI_DEVICE(i32) #1

declare dso_local i32 @OFW_PCI_PHYS_HI_FUNCTION(i32) #1

declare dso_local i32* @pci_find_dbsf(i32, i32, i32, i32) #1

declare dso_local i64 @OF_getproplen(i64, i8*) #1

declare dso_local i32 @PCIB_WRITE_CONFIG(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @pci_read_device(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @ofw_bus_gen_setup_devinfo(i32*, i64) #1

declare dso_local i32 @pci_freecfg(%struct.pci_devinfo*) #1

declare dso_local i32 @pci_add_child(i32, %struct.pci_devinfo*) #1

declare dso_local i32 @ofw_bus_intr_to_rl(i32, i64, i32*, i32*) #1

declare dso_local i64 @OF_peer(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
