; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_pci.c_mps_pci_alloc_interrupts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_pci.c_mps_pci_alloc_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_softc = type { i64, i32, i64, i32, i32, i32 }

@MPS_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Counted %d MSI-X messages\0A\00", align 1
@MPS_MSIX_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Attempting to allocate %d MSI-X messages\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Counted %d MSI messages\0A\00", align 1
@MPS_MSI_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Attempting to allocate %d MSI messages\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Falling back to legacy INTx\0A\00", align 1
@MPS_FLAGS_INTX = common dso_local global i32 0, align 4
@MPS_FLAGS_MSI = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Allocated %d interrupts\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mps_softc*)* @mps_pci_alloc_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mps_pci_alloc_interrupts(%struct.mps_softc* %0) #0 {
  %2 = alloca %struct.mps_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mps_softc* %0, %struct.mps_softc** %2, align 8
  %6 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %7 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %10 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @pci_msix_count(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %17 = load i32, i32* @MPS_INIT, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 (%struct.mps_softc*, i32, i8*, ...) @mps_dprint(%struct.mps_softc* %16, i32 %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %22 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @min(i32 %20, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @MPS_MSIX_MAX, align 4
  %27 = call i32 @min(i32 %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @min(i32 %28, i32 1)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %13
  %33 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %34 = load i32, i32* @MPS_INIT, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 (%struct.mps_softc*, i32, i8*, ...) @mps_dprint(%struct.mps_softc* %33, i32 %34, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @mps_alloc_msix(%struct.mps_softc* %37, i32 %38)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %32, %13
  br label %41

41:                                               ; preds = %40, %1
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %73

47:                                               ; preds = %44, %41
  %48 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %49 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %47
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @pci_msi_count(i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %56 = load i32, i32* @MPS_INIT, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 (%struct.mps_softc*, i32, i8*, ...) @mps_dprint(%struct.mps_softc* %55, i32 %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @MPS_MSI_MAX, align 4
  %61 = call i32 @min(i32 %59, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %52
  %65 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %66 = load i32, i32* @MPS_INIT, align 4
  %67 = load i32, i32* @MPS_MSI_MAX, align 4
  %68 = call i32 (%struct.mps_softc*, i32, i8*, ...) @mps_dprint(%struct.mps_softc* %65, i32 %66, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %70 = load i32, i32* @MPS_MSI_MAX, align 4
  %71 = call i32 @mps_alloc_msi(%struct.mps_softc* %69, i32 %70)
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %64, %52
  br label %73

73:                                               ; preds = %72, %47, %44
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %5, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %76, %73
  %80 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %81 = load i32, i32* @MPS_INIT, align 4
  %82 = call i32 (%struct.mps_softc*, i32, i8*, ...) @mps_dprint(%struct.mps_softc* %80, i32 %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %83 = load i32, i32* @MPS_FLAGS_INTX, align 4
  %84 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %85 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  store i32 1, i32* %5, align 4
  br label %94

88:                                               ; preds = %76
  %89 = load i32, i32* @MPS_FLAGS_MSI, align 4
  %90 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %91 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %88, %79
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %97 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 8
  %98 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %99 = load i32, i32* @MPS_INIT, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 (%struct.mps_softc*, i32, i8*, ...) @mps_dprint(%struct.mps_softc* %98, i32 %99, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @pci_msix_count(i32) #1

declare dso_local i32 @mps_dprint(%struct.mps_softc*, i32, i8*, ...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @mps_alloc_msix(%struct.mps_softc*, i32) #1

declare dso_local i32 @pci_msi_count(i32) #1

declare dso_local i32 @mps_alloc_msi(%struct.mps_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
