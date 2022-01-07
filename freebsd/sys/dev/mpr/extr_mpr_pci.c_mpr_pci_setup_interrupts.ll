; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_pci.c_mpr_pci_setup_interrupts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_pci.c_mpr_pci_setup_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { i32, i32, %struct.mpr_queue*, i32 }
%struct.mpr_queue = type { i32, i32, i32* }

@ENXIO = common dso_local global i32 0, align 4
@MPR_FLAGS_INTX = common dso_local global i32 0, align 4
@mpr_intr = common dso_local global i8* null, align 8
@MPR_FLAGS_MSI = common dso_local global i32 0, align 4
@mpr_intr_msi = common dso_local global i8* null, align 8
@MPR_ERROR = common dso_local global i32 0, align 4
@MPR_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unable to set up interrupts\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Cannot allocate interrupt RID %d\0A\00", align 1
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Cannot setup interrupt RID %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Set up %d interrupts\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpr_pci_setup_interrupts(%struct.mpr_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpr_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpr_queue*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mpr_softc* %0, %struct.mpr_softc** %3, align 8
  %11 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %12 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %16 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @MPR_FLAGS_INTX, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  store i32 0, i32* %10, align 4
  %22 = load i8*, i8** @mpr_intr, align 8
  store i8* %22, i8** %6, align 8
  br label %40

23:                                               ; preds = %1
  %24 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %25 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MPR_FLAGS_MSI, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  store i32 1, i32* %10, align 4
  %31 = load i8*, i8** @mpr_intr_msi, align 8
  store i8* %31, i8** %6, align 8
  br label %39

32:                                               ; preds = %23
  %33 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %34 = load i32, i32* @MPR_ERROR, align 4
  %35 = load i32, i32* @MPR_INIT, align 4
  %36 = or i32 %34, %35
  %37 = call i32 (%struct.mpr_softc*, i32, i8*, ...) @mpr_dprint(%struct.mpr_softc* %33, i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %2, align 4
  br label %119

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %21
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %108, %40
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %44 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %111

47:                                               ; preds = %41
  %48 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %49 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %48, i32 0, i32 2
  %50 = load %struct.mpr_queue*, %struct.mpr_queue** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.mpr_queue, %struct.mpr_queue* %50, i64 %52
  store %struct.mpr_queue* %53, %struct.mpr_queue** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.mpr_queue*, %struct.mpr_queue** %5, align 8
  %59 = getelementptr inbounds %struct.mpr_queue, %struct.mpr_queue* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @SYS_RES_IRQ, align 4
  %62 = load %struct.mpr_queue*, %struct.mpr_queue** %5, align 8
  %63 = getelementptr inbounds %struct.mpr_queue, %struct.mpr_queue* %62, i32 0, i32 0
  %64 = load i32, i32* @RF_ACTIVE, align 4
  %65 = call i32* @bus_alloc_resource_any(i32 %60, i32 %61, i32* %63, i32 %64)
  %66 = load %struct.mpr_queue*, %struct.mpr_queue** %5, align 8
  %67 = getelementptr inbounds %struct.mpr_queue, %struct.mpr_queue* %66, i32 0, i32 2
  store i32* %65, i32** %67, align 8
  %68 = load %struct.mpr_queue*, %struct.mpr_queue** %5, align 8
  %69 = getelementptr inbounds %struct.mpr_queue, %struct.mpr_queue* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %82

72:                                               ; preds = %47
  %73 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %74 = load i32, i32* @MPR_ERROR, align 4
  %75 = load i32, i32* @MPR_INIT, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* %9, align 4
  %78 = call i32 (%struct.mpr_softc*, i32, i8*, ...) @mpr_dprint(%struct.mpr_softc* %73, i32 %76, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %81 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %111

82:                                               ; preds = %47
  %83 = load i32, i32* %4, align 4
  %84 = load %struct.mpr_queue*, %struct.mpr_queue** %5, align 8
  %85 = getelementptr inbounds %struct.mpr_queue, %struct.mpr_queue* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* @INTR_TYPE_BIO, align 4
  %88 = load i32, i32* @INTR_MPSAFE, align 4
  %89 = or i32 %87, %88
  %90 = load i8*, i8** %6, align 8
  %91 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %92 = load %struct.mpr_queue*, %struct.mpr_queue** %5, align 8
  %93 = getelementptr inbounds %struct.mpr_queue, %struct.mpr_queue* %92, i32 0, i32 1
  %94 = call i32 @bus_setup_intr(i32 %83, i32* %86, i32 %89, i32* null, i8* %90, %struct.mpr_softc* %91, i32* %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %82
  %98 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %99 = load i32, i32* @MPR_ERROR, align 4
  %100 = load i32, i32* @MPR_INIT, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* %9, align 4
  %103 = call i32 (%struct.mpr_softc*, i32, i8*, ...) @mpr_dprint(%struct.mpr_softc* %98, i32 %101, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %106 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  br label %111

107:                                              ; preds = %82
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %7, align 4
  br label %41

111:                                              ; preds = %97, %72, %41
  %112 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %113 = load i32, i32* @MPR_INIT, align 4
  %114 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %115 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (%struct.mpr_softc*, i32, i8*, ...) @mpr_dprint(%struct.mpr_softc* %112, i32 %113, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %111, %32
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @mpr_dprint(%struct.mpr_softc*, i32, i8*, ...) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i8*, %struct.mpr_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
