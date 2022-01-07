; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofwpci.c_ofw_pci_translate_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofwpci.c_ofw_pci_translate_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofw_pci_softc = type { i32, %struct.ofw_pci_range* }
%struct.ofw_pci_range = type { i32, i64, i64, i64 }

@OFW_PCI_PHYS_HI_SPACEMASK = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64, i64*)* @ofw_pci_translate_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofw_pci_translate_resource(i32 %0, i32 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.ofw_pci_softc*, align 8
  %10 = alloca %struct.ofw_pci_range*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.ofw_pci_softc* @device_get_softc(i32 %12)
  store %struct.ofw_pci_softc* %13, %struct.ofw_pci_softc** %9, align 8
  %14 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %9, align 8
  %15 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %14, i32 0, i32 1
  %16 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %15, align 8
  store %struct.ofw_pci_range* %16, %struct.ofw_pci_range** %10, align 8
  br label %17

17:                                               ; preds = %78, %4
  %18 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %10, align 8
  %19 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %9, align 8
  %20 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %19, i32 0, i32 1
  %21 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %20, align 8
  %22 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %9, align 8
  %23 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %21, i64 %25
  %27 = icmp ult %struct.ofw_pci_range* %18, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %10, align 8
  %30 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %28, %17
  %34 = phi i1 [ false, %17 ], [ %32, %28 ]
  br i1 %34, label %35, label %81

35:                                               ; preds = %33
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %10, align 8
  %38 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %36, %39
  br i1 %40, label %51, label %41

41:                                               ; preds = %35
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %10, align 8
  %44 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %10, align 8
  %47 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = icmp sge i64 %42, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %41, %35
  br label %78

52:                                               ; preds = %41
  %53 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %10, align 8
  %54 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @OFW_PCI_PHYS_HI_SPACEMASK, align 4
  %57 = and i32 %55, %56
  switch i32 %57, label %62 [
    i32 130, label %58
    i32 129, label %60
    i32 128, label %60
  ]

58:                                               ; preds = %52
  %59 = load i32, i32* @SYS_RES_IOPORT, align 4
  store i32 %59, i32* %11, align 4
  br label %63

60:                                               ; preds = %52, %52
  %61 = load i32, i32* @SYS_RES_MEMORY, align 4
  store i32 %61, i32* %11, align 4
  br label %63

62:                                               ; preds = %52
  store i32 -1, i32* %11, align 4
  br label %63

63:                                               ; preds = %62, %60, %58
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %63
  %68 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %10, align 8
  %69 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %10, align 8
  %72 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %70, %73
  %75 = load i64, i64* %7, align 8
  %76 = add nsw i64 %75, %74
  store i64 %76, i64* %7, align 8
  br label %81

77:                                               ; preds = %63
  br label %78

78:                                               ; preds = %77, %51
  %79 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %10, align 8
  %80 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %79, i32 1
  store %struct.ofw_pci_range* %80, %struct.ofw_pci_range** %10, align 8
  br label %17

81:                                               ; preds = %67, %33
  %82 = load i64, i64* %7, align 8
  %83 = load i64*, i64** %8, align 8
  store i64 %82, i64* %83, align 8
  ret i32 0
}

declare dso_local %struct.ofw_pci_softc* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
