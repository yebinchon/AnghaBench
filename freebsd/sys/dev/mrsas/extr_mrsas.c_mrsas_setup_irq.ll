; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_setup_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_setup_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32, i32*, %struct.TYPE_2__*, i32**, i64*, i64 }
%struct.TYPE_2__ = type { i64, %struct.mrsas_softc* }

@SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"MSI-x interrupts setup success\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Fall back to legacy interrupt\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Cannot allocate legcayinterrupt\0A\00", align 1
@FAIL = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_TYPE_CAM = common dso_local global i32 0, align 4
@mrsas_isr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Cannot set up legacyinterrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mrsas_softc*)* @mrsas_setup_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrsas_setup_irq(%struct.mrsas_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mrsas_softc*, align 8
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %3, align 8
  %4 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %5 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %4, i32 0, i32 5
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %10 = call i64 @mrsas_setup_msix(%struct.mrsas_softc* %9)
  %11 = load i64, i64* @SUCCESS, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %15 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %96

18:                                               ; preds = %8, %1
  %19 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %20 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %24 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %25 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store %struct.mrsas_softc* %23, %struct.mrsas_softc** %28, align 8
  %29 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %30 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %35 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %34, i32 0, i32 4
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %39 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SYS_RES_IRQ, align 4
  %42 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %43 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %42, i32 0, i32 4
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  %46 = load i32, i32* @RF_SHAREABLE, align 4
  %47 = load i32, i32* @RF_ACTIVE, align 4
  %48 = or i32 %46, %47
  %49 = call i32* @bus_alloc_resource_any(i32 %40, i32 %41, i64* %45, i32 %48)
  %50 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %51 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %50, i32 0, i32 3
  %52 = load i32**, i32*** %51, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i64 0
  store i32* %49, i32** %53, align 8
  %54 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %55 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %54, i32 0, i32 3
  %56 = load i32**, i32*** %55, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 0
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %18
  %61 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %62 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @device_printf(i32 %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @FAIL, align 4
  store i32 %65, i32* %2, align 4
  br label %97

66:                                               ; preds = %18
  %67 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %68 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %71 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %70, i32 0, i32 3
  %72 = load i32**, i32*** %71, align 8
  %73 = getelementptr inbounds i32*, i32** %72, i64 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* @INTR_MPSAFE, align 4
  %76 = load i32, i32* @INTR_TYPE_CAM, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @mrsas_isr, align 4
  %79 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %80 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 0
  %83 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %84 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = call i64 @bus_setup_intr(i32 %69, i32* %74, i32 %77, i32* null, i32 %78, %struct.TYPE_2__* %82, i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %66
  %90 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %91 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @device_printf(i32 %92, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %94 = load i32, i32* @FAIL, align 4
  store i32 %94, i32* %2, align 4
  br label %97

95:                                               ; preds = %66
  br label %96

96:                                               ; preds = %95, %13
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %89, %60
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i64 @mrsas_setup_msix(%struct.mrsas_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.TYPE_2__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
