; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_setup_legacy_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_setup_legacy_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32*, i64 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"bus_alloc_resource failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@ndev_irq_isr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"bus_setup_intr failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_softc*)* @intel_ntb_setup_legacy_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_ntb_setup_legacy_interrupt(%struct.ntb_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ntb_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.ntb_softc* %0, %struct.ntb_softc** %3, align 8
  %5 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %6 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SYS_RES_IRQ, align 4
  %14 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %15 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* @RF_SHAREABLE, align 4
  %20 = load i32, i32* @RF_ACTIVE, align 4
  %21 = or i32 %19, %20
  %22 = call i32* @bus_alloc_resource_any(i32 %12, i32 %13, i64* %18, i32 %21)
  %23 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %24 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32* %22, i32** %27, align 8
  %28 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %29 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %1
  %36 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %37 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @device_printf(i32 %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ENOMEM, align 4
  store i32 %40, i32* %2, align 4
  br label %78

41:                                               ; preds = %1
  %42 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %43 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  %47 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %48 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %50 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %53 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* @INTR_MPSAFE, align 4
  %59 = load i32, i32* @INTR_TYPE_MISC, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @ndev_irq_isr, align 4
  %62 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %63 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %64 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = call i32 @bus_setup_intr(i32 %51, i32* %57, i32 %60, i32* null, i32 %61, %struct.ntb_softc* %62, i32** %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %41
  %72 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %73 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @device_printf(i32 %74, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* @ENXIO, align 4
  store i32 %76, i32* %2, align 4
  br label %78

77:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %71, %35
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.ntb_softc*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
