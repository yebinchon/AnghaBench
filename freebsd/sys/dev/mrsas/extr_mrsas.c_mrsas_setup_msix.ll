; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_setup_msix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_setup_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32, i32*, i32, i32*, %struct.TYPE_2__*, i32** }
%struct.TYPE_2__ = type { i32, %struct.mrsas_softc* }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Can't allocate MSI-x\0A\00", align 1
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_TYPE_CAM = common dso_local global i32 0, align 4
@mrsas_isr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Cannot set up MSI-x interrupt handler\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mrsas_softc*)* @mrsas_setup_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrsas_setup_msix(%struct.mrsas_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mrsas_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %102, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %8 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %105

11:                                               ; preds = %5
  %12 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %13 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %14 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %13, i32 0, i32 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store %struct.mrsas_softc* %12, %struct.mrsas_softc** %19, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %22 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %21, i32 0, i32 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %20, i32* %27, align 8
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  %30 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %31 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %29, i32* %35, align 4
  %36 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %37 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SYS_RES_IRQ, align 4
  %40 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %41 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* @RF_ACTIVE, align 4
  %47 = call i32* @bus_alloc_resource_any(i32 %38, i32 %39, i32* %45, i32 %46)
  %48 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %49 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %48, i32 0, i32 5
  %50 = load i32**, i32*** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  store i32* %47, i32** %53, align 8
  %54 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %55 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %54, i32 0, i32 5
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %11
  %63 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %64 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @device_printf(i32 %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %107

67:                                               ; preds = %11
  %68 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %69 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %72 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %71, i32 0, i32 5
  %73 = load i32**, i32*** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %73, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* @INTR_MPSAFE, align 4
  %79 = load i32, i32* @INTR_TYPE_CAM, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @mrsas_isr, align 4
  %82 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %83 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %82, i32 0, i32 4
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %89 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = call i64 @bus_setup_intr(i32 %70, i32* %77, i32 %80, i32* null, i32 %81, %struct.TYPE_2__* %87, i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %67
  %97 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %98 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @device_printf(i32 %99, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %107

101:                                              ; preds = %67
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %4, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %4, align 4
  br label %5

105:                                              ; preds = %5
  %106 = load i32, i32* @SUCCESS, align 4
  store i32 %106, i32* %2, align 4
  br label %111

107:                                              ; preds = %96, %62
  %108 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %109 = call i32 @mrsas_teardown_intr(%struct.mrsas_softc* %108)
  %110 = load i32, i32* @FAIL, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %107, %105
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.TYPE_2__*, i32*) #1

declare dso_local i32 @mrsas_teardown_intr(%struct.mrsas_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
