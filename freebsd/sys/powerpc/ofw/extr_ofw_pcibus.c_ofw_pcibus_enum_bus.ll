; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_ofw_pcibus.c_ofw_pcibus_enum_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_ofw_pcibus.c_ofw_pcibus_enum_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofw_pcibus_devinfo = type { %struct.TYPE_6__, %struct.TYPE_4__, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32*, i32*, i32*, i32* }
%struct.pci_devinfo = type { i32 }

@PCIR_HDRTYPE = common dso_local global i32 0, align 4
@PCIM_HDRTYPE = common dso_local global i32 0, align 4
@PCI_MAXHDRTYPE = common dso_local global i32 0, align 4
@PCIM_MFDEV = common dso_local global i32 0, align 4
@PCI_FUNCMAX = common dso_local global i32 0, align 4
@PCI_INVALID_IRQ = common dso_local global i64 0, align 8
@PCIR_INTLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @ofw_pcibus_enum_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ofw_pcibus_enum_bus(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ofw_pcibus_devinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @device_get_parent(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @PCIB_MAXSLOTS(i32 %16)
  store i32 %17, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %114, %3
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %117

22:                                               ; preds = %18
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  %23 = call i32 @DELAY(i32 1)
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @PCIR_HDRTYPE, align 4
  %29 = call i32 @PCIB_READ_CONFIG(i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 1)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @PCIM_HDRTYPE, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @PCI_MAXHDRTYPE, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %114

36:                                               ; preds = %22
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @PCIM_MFDEV, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @PCI_FUNCMAX, align 4
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %41, %36
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %110, %43
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %113

48:                                               ; preds = %44
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32* @pci_find_dbsf(i32 %49, i32 %50, i32 %51, i32 %52)
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %110

56:                                               ; preds = %48
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i64 @pci_read_device(i32 %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62)
  %64 = inttoptr i64 %63 to %struct.ofw_pcibus_devinfo*
  store %struct.ofw_pcibus_devinfo* %64, %struct.ofw_pcibus_devinfo** %8, align 8
  %65 = load %struct.ofw_pcibus_devinfo*, %struct.ofw_pcibus_devinfo** %8, align 8
  %66 = icmp eq %struct.ofw_pcibus_devinfo* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  br label %110

68:                                               ; preds = %56
  %69 = load %struct.ofw_pcibus_devinfo*, %struct.ofw_pcibus_devinfo** %8, align 8
  %70 = getelementptr inbounds %struct.ofw_pcibus_devinfo, %struct.ofw_pcibus_devinfo* %69, i32 0, i32 2
  store i32* null, i32** %70, align 8
  %71 = load %struct.ofw_pcibus_devinfo*, %struct.ofw_pcibus_devinfo** %8, align 8
  %72 = getelementptr inbounds %struct.ofw_pcibus_devinfo, %struct.ofw_pcibus_devinfo* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32 -1, i32* %73, align 8
  %74 = load %struct.ofw_pcibus_devinfo*, %struct.ofw_pcibus_devinfo** %8, align 8
  %75 = getelementptr inbounds %struct.ofw_pcibus_devinfo, %struct.ofw_pcibus_devinfo* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 4
  store i32* null, i32** %76, align 8
  %77 = load %struct.ofw_pcibus_devinfo*, %struct.ofw_pcibus_devinfo** %8, align 8
  %78 = getelementptr inbounds %struct.ofw_pcibus_devinfo, %struct.ofw_pcibus_devinfo* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  store i32* null, i32** %79, align 8
  %80 = load %struct.ofw_pcibus_devinfo*, %struct.ofw_pcibus_devinfo** %8, align 8
  %81 = getelementptr inbounds %struct.ofw_pcibus_devinfo, %struct.ofw_pcibus_devinfo* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  store i32* null, i32** %82, align 8
  %83 = load %struct.ofw_pcibus_devinfo*, %struct.ofw_pcibus_devinfo** %8, align 8
  %84 = getelementptr inbounds %struct.ofw_pcibus_devinfo, %struct.ofw_pcibus_devinfo* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store i32* null, i32** %85, align 8
  %86 = load %struct.ofw_pcibus_devinfo*, %struct.ofw_pcibus_devinfo** %8, align 8
  %87 = getelementptr inbounds %struct.ofw_pcibus_devinfo, %struct.ofw_pcibus_devinfo* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %68
  %93 = load i64, i64* @PCI_INVALID_IRQ, align 8
  %94 = load %struct.ofw_pcibus_devinfo*, %struct.ofw_pcibus_devinfo** %8, align 8
  %95 = getelementptr inbounds %struct.ofw_pcibus_devinfo, %struct.ofw_pcibus_devinfo* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  store i64 %93, i64* %97, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* @PCIR_INTLINE, align 4
  %103 = load i64, i64* @PCI_INVALID_IRQ, align 8
  %104 = call i32 @PCIB_WRITE_CONFIG(i32 %98, i32 %99, i32 %100, i32 %101, i32 %102, i64 %103, i32 1)
  br label %105

105:                                              ; preds = %92, %68
  %106 = load i32, i32* %4, align 4
  %107 = load %struct.ofw_pcibus_devinfo*, %struct.ofw_pcibus_devinfo** %8, align 8
  %108 = bitcast %struct.ofw_pcibus_devinfo* %107 to %struct.pci_devinfo*
  %109 = call i32 @pci_add_child(i32 %106, %struct.pci_devinfo* %108)
  br label %110

110:                                              ; preds = %105, %67, %55
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %11, align 4
  br label %44

113:                                              ; preds = %44
  br label %114

114:                                              ; preds = %113, %35
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  br label %18

117:                                              ; preds = %18
  ret void
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @PCIB_MAXSLOTS(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @PCIB_READ_CONFIG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32* @pci_find_dbsf(i32, i32, i32, i32) #1

declare dso_local i64 @pci_read_device(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCIB_WRITE_CONFIG(i32, i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @pci_add_child(i32, %struct.pci_devinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
