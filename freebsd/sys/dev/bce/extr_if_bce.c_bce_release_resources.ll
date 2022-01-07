; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_release_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_release_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bce_softc = type { i32, i32, i32*, i32*, i32*, i32*, i32 }

@BCE_VERBOSE_RESET = common dso_local global i32 0, align 4
@BCE_INFO_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Removing interrupt handler.\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Releasing IRQ.\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@BCE_USING_MSI_FLAG = common dso_local global i32 0, align 4
@BCE_USING_MSIX_FLAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Releasing MSI/MSI-X vector.\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Releasing PCI memory.\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"Releasing IF.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bce_softc*)* @bce_release_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bce_release_resources(%struct.bce_softc* %0) #0 {
  %2 = alloca %struct.bce_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.bce_softc* %0, %struct.bce_softc** %2, align 8
  %4 = load i32, i32* @BCE_VERBOSE_RESET, align 4
  %5 = call i32 @DBENTER(i32 %4)
  %6 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %7 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %10 = call i32 @bce_dma_free(%struct.bce_softc* %9)
  %11 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %12 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %11, i32 0, i32 5
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %17 = load i32, i32* @BCE_INFO_RESET, align 4
  %18 = call i32 @DBPRINT(%struct.bce_softc* %16, i32 %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %21 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %24 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %23, i32 0, i32 5
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @bus_teardown_intr(i32 %19, i32* %22, i32* %25)
  br label %27

27:                                               ; preds = %15, %1
  %28 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %29 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %34 = load i32, i32* @BCE_INFO_RESET, align 4
  %35 = call i32 @DBPRINT(%struct.bce_softc* %33, i32 %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @SYS_RES_IRQ, align 4
  %38 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %39 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @rman_get_rid(i32* %40)
  %42 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %43 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @bus_release_resource(i32 %36, i32 %37, i32 %41, i32* %44)
  br label %46

46:                                               ; preds = %32, %27
  %47 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %48 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @BCE_USING_MSI_FLAG, align 4
  %51 = load i32, i32* @BCE_USING_MSIX_FLAG, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %46
  %56 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %57 = load i32, i32* @BCE_INFO_RESET, align 4
  %58 = call i32 @DBPRINT(%struct.bce_softc* %56, i32 %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @pci_release_msi(i32 %59)
  br label %61

61:                                               ; preds = %55, %46
  %62 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %63 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %68 = load i32, i32* @BCE_INFO_RESET, align 4
  %69 = call i32 @DBPRINT(%struct.bce_softc* %67, i32 %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @SYS_RES_MEMORY, align 4
  %72 = call i32 @PCIR_BAR(i32 0)
  %73 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %74 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @bus_release_resource(i32 %70, i32 %71, i32 %72, i32* %75)
  br label %77

77:                                               ; preds = %66, %61
  %78 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %79 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %84 = load i32, i32* @BCE_INFO_RESET, align 4
  %85 = call i32 @DBPRINT(%struct.bce_softc* %83, i32 %84, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %86 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %87 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @if_free(i32* %88)
  br label %90

90:                                               ; preds = %82, %77
  %91 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %92 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %91, i32 0, i32 1
  %93 = call i64 @mtx_initialized(i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %97 = call i32 @BCE_LOCK_DESTROY(%struct.bce_softc* %96)
  br label %98

98:                                               ; preds = %95, %90
  %99 = load i32, i32* @BCE_VERBOSE_RESET, align 4
  %100 = call i32 @DBEXIT(i32 %99)
  ret void
}

declare dso_local i32 @DBENTER(i32) #1

declare dso_local i32 @bce_dma_free(%struct.bce_softc*) #1

declare dso_local i32 @DBPRINT(%struct.bce_softc*, i32, i8*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32 @if_free(i32*) #1

declare dso_local i64 @mtx_initialized(i32*) #1

declare dso_local i32 @BCE_LOCK_DESTROY(%struct.bce_softc*) #1

declare dso_local i32 @DBEXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
