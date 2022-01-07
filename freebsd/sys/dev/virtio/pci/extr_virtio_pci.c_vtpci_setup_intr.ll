; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtpci_softc = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"exhausted all interrupt allocation attempts\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@VTPCI_FLAG_LEGACY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"using legacy interrupt\0A\00", align 1
@VTPCI_FLAG_MSI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"using MSI interrupt\0A\00", align 1
@VTPCI_FLAG_SHARED_MSIX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"using shared MSIX interrupts\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"using per VQ MSIX interrupts\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @vtpci_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtpci_setup_intr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vtpci_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.vtpci_softc* @device_get_softc(i32 %9)
  store %struct.vtpci_softc* %10, %struct.vtpci_softc** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %44, %2
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 5
  br i1 %13, label %14, label %47

14:                                               ; preds = %11
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %28 [
    i32 0, label %16
    i32 1, label %19
    i32 2, label %22
    i32 3, label %25
  ]

16:                                               ; preds = %14
  %17 = load %struct.vtpci_softc*, %struct.vtpci_softc** %6, align 8
  %18 = call i32 @vtpci_alloc_intr_msix_pervq(%struct.vtpci_softc* %17)
  store i32 %18, i32* %8, align 4
  br label %32

19:                                               ; preds = %14
  %20 = load %struct.vtpci_softc*, %struct.vtpci_softc** %6, align 8
  %21 = call i32 @vtpci_alloc_intr_msix_shared(%struct.vtpci_softc* %20)
  store i32 %21, i32* %8, align 4
  br label %32

22:                                               ; preds = %14
  %23 = load %struct.vtpci_softc*, %struct.vtpci_softc** %6, align 8
  %24 = call i32 @vtpci_alloc_intr_msi(%struct.vtpci_softc* %23)
  store i32 %24, i32* %8, align 4
  br label %32

25:                                               ; preds = %14
  %26 = load %struct.vtpci_softc*, %struct.vtpci_softc** %6, align 8
  %27 = call i32 @vtpci_alloc_intr_legacy(%struct.vtpci_softc* %26)
  store i32 %27, i32* %8, align 4
  br label %32

28:                                               ; preds = %14
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %3, align 4
  br label %87

32:                                               ; preds = %25, %22, %19, %16
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.vtpci_softc*, %struct.vtpci_softc** %6, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @vtpci_setup_interrupts(%struct.vtpci_softc* %36, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %47

41:                                               ; preds = %35, %32
  %42 = load %struct.vtpci_softc*, %struct.vtpci_softc** %6, align 8
  %43 = call i32 @vtpci_cleanup_setup_intr_attempt(%struct.vtpci_softc* %42)
  br label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %11

47:                                               ; preds = %40, %11
  %48 = load i64, i64* @bootverbose, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %86

50:                                               ; preds = %47
  %51 = load %struct.vtpci_softc*, %struct.vtpci_softc** %6, align 8
  %52 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @VTPCI_FLAG_LEGACY, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @device_printf(i32 %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %85

60:                                               ; preds = %50
  %61 = load %struct.vtpci_softc*, %struct.vtpci_softc** %6, align 8
  %62 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @VTPCI_FLAG_MSI, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @device_printf(i32 %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %84

70:                                               ; preds = %60
  %71 = load %struct.vtpci_softc*, %struct.vtpci_softc** %6, align 8
  %72 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @VTPCI_FLAG_SHARED_MSIX, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @device_printf(i32 %78, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %83

80:                                               ; preds = %70
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @device_printf(i32 %81, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %77
  br label %84

84:                                               ; preds = %83, %67
  br label %85

85:                                               ; preds = %84, %57
  br label %86

86:                                               ; preds = %85, %47
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %28
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.vtpci_softc* @device_get_softc(i32) #1

declare dso_local i32 @vtpci_alloc_intr_msix_pervq(%struct.vtpci_softc*) #1

declare dso_local i32 @vtpci_alloc_intr_msix_shared(%struct.vtpci_softc*) #1

declare dso_local i32 @vtpci_alloc_intr_msi(%struct.vtpci_softc*) #1

declare dso_local i32 @vtpci_alloc_intr_legacy(%struct.vtpci_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @vtpci_setup_interrupts(%struct.vtpci_softc*, i32) #1

declare dso_local i32 @vtpci_cleanup_setup_intr_attempt(%struct.vtpci_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
