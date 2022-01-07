; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_setup_msix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_setup_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_softc = type { i32, %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { i64, i32*, i32* }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"bus_alloc_resource failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@ndev_vec_isr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"bus_setup_intr failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_softc*, i64)* @intel_ntb_setup_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_ntb_setup_msix(%struct.ntb_softc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ntb_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ntb_softc* %0, %struct.ntb_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %99, %2
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %102

12:                                               ; preds = %8
  %13 = load i64, i64* %6, align 8
  %14 = add i64 %13, 1
  %15 = load %struct.ntb_softc*, %struct.ntb_softc** %4, align 8
  %16 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i64 %14, i64* %20, align 8
  %21 = load %struct.ntb_softc*, %struct.ntb_softc** %4, align 8
  %22 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @SYS_RES_IRQ, align 4
  %25 = load %struct.ntb_softc*, %struct.ntb_softc** %4, align 8
  %26 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* @RF_ACTIVE, align 4
  %32 = call i32* @bus_alloc_resource_any(i32 %23, i32 %24, i64* %30, i32 %31)
  %33 = load %struct.ntb_softc*, %struct.ntb_softc** %4, align 8
  %34 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i32* %32, i32** %38, align 8
  %39 = load %struct.ntb_softc*, %struct.ntb_softc** %4, align 8
  %40 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %12
  %48 = load %struct.ntb_softc*, %struct.ntb_softc** %4, align 8
  %49 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @device_printf(i32 %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @ENOMEM, align 4
  store i32 %52, i32* %3, align 4
  br label %103

53:                                               ; preds = %12
  %54 = load %struct.ntb_softc*, %struct.ntb_softc** %4, align 8
  %55 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i32* null, i32** %59, align 8
  %60 = load %struct.ntb_softc*, %struct.ntb_softc** %4, align 8
  %61 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = load %struct.ntb_softc*, %struct.ntb_softc** %4, align 8
  %65 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.ntb_softc*, %struct.ntb_softc** %4, align 8
  %68 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* @INTR_MPSAFE, align 4
  %75 = load i32, i32* @INTR_TYPE_MISC, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @ndev_vec_isr, align 4
  %78 = load %struct.ntb_softc*, %struct.ntb_softc** %4, align 8
  %79 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* %6, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load %struct.ntb_softc*, %struct.ntb_softc** %4, align 8
  %84 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i64, i64* %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = call i32 @bus_setup_intr(i32 %66, i32* %73, i32 %76, i32* null, i32 %77, i32* %82, i32** %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %53
  %93 = load %struct.ntb_softc*, %struct.ntb_softc** %4, align 8
  %94 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @device_printf(i32 %95, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %97 = load i32, i32* @ENXIO, align 4
  store i32 %97, i32* %3, align 4
  br label %103

98:                                               ; preds = %53
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %6, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %6, align 8
  br label %8

102:                                              ; preds = %8
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %92, %47
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
