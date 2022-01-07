; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_alloc_msix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_alloc_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfe_softc = type { i32, i32*, i32*, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"couldn't allocate MSIX table resource\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"couldn't allocate MSIX PBA resource\0A\00", align 1
@NFE_MSI_MESSAGES = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Using %d MSIX messages\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"couldn't allocate MSIX\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfe_softc*, i32)* @nfe_alloc_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfe_alloc_msix(%struct.nfe_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.nfe_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nfe_softc* %0, %struct.nfe_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @PCIR_BAR(i32 2)
  store i32 %6, i32* %5, align 4
  %7 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %8 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SYS_RES_MEMORY, align 4
  %11 = load i32, i32* @RF_ACTIVE, align 4
  %12 = call i8* @bus_alloc_resource_any(i32 %9, i32 %10, i32* %5, i32 %11)
  %13 = bitcast i8* %12 to i32*
  %14 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %15 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %14, i32 0, i32 1
  store i32* %13, i32** %15, align 8
  %16 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %17 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %22 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i32, i8*, ...) @device_printf(i32 %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %114

25:                                               ; preds = %2
  %26 = call i32 @PCIR_BAR(i32 3)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %28 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SYS_RES_MEMORY, align 4
  %31 = load i32, i32* @RF_ACTIVE, align 4
  %32 = call i8* @bus_alloc_resource_any(i32 %29, i32 %30, i32* %5, i32 %31)
  %33 = bitcast i8* %32 to i32*
  %34 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %35 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %34, i32 0, i32 2
  store i32* %33, i32** %35, align 8
  %36 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %37 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %56

40:                                               ; preds = %25
  %41 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %42 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i32, i8*, ...) @device_printf(i32 %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %46 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @SYS_RES_MEMORY, align 4
  %49 = call i32 @PCIR_BAR(i32 2)
  %50 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %51 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @bus_release_resource(i32 %47, i32 %48, i32 %49, i32* %52)
  %54 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %55 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %54, i32 0, i32 1
  store i32* null, i32** %55, align 8
  br label %114

56:                                               ; preds = %25
  %57 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %58 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @pci_alloc_msix(i32 %59, i32* %4)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %114

62:                                               ; preds = %56
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @NFE_MSI_MESSAGES, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %62
  %67 = load i64, i64* @bootverbose, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %71 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 (i32, i8*, ...) @device_printf(i32 %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %69, %66
  %76 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %77 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  br label %113

78:                                               ; preds = %62
  %79 = load i64, i64* @bootverbose, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %83 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i32, i8*, ...) @device_printf(i32 %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %86

86:                                               ; preds = %81, %78
  %87 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %88 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @pci_release_msi(i32 %89)
  %91 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %92 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @SYS_RES_MEMORY, align 4
  %95 = call i32 @PCIR_BAR(i32 3)
  %96 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %97 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @bus_release_resource(i32 %93, i32 %94, i32 %95, i32* %98)
  %100 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %101 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @SYS_RES_MEMORY, align 4
  %104 = call i32 @PCIR_BAR(i32 2)
  %105 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %106 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @bus_release_resource(i32 %102, i32 %103, i32 %104, i32* %107)
  %109 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %110 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %109, i32 0, i32 2
  store i32* null, i32** %110, align 8
  %111 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %112 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %111, i32 0, i32 1
  store i32* null, i32** %112, align 8
  br label %113

113:                                              ; preds = %86, %75
  br label %114

114:                                              ; preds = %20, %40, %113, %56
  ret void
}

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i64 @pci_alloc_msix(i32, i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
