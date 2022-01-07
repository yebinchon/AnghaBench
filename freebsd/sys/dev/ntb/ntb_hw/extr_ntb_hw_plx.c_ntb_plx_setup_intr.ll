; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_plx.c_ntb_plx_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_plx.c_ntb_plx_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_plx_softc = type { i32, i32, i32*, i64 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"bus_alloc_resource failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@ntb_plx_isr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"bus_setup_intr failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ntb_plx_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_plx_setup_intr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ntb_plx_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.ntb_plx_softc* @device_get_softc(i32 %6)
  store %struct.ntb_plx_softc* %7, %struct.ntb_plx_softc** %4, align 8
  %8 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %9 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %8, i32 0, i32 3
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @SYS_RES_IRQ, align 4
  %12 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %13 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %12, i32 0, i32 3
  %14 = load i32, i32* @RF_SHAREABLE, align 4
  %15 = load i32, i32* @RF_ACTIVE, align 4
  %16 = or i32 %14, %15
  %17 = call i32* @bus_alloc_resource_any(i32 %10, i32 %11, i64* %13, i32 %16)
  %18 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %19 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %18, i32 0, i32 2
  store i32* %17, i32** %19, align 8
  %20 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %21 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = call i32 (i32, i8*, ...) @device_printf(i32 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENOMEM, align 4
  store i32 %27, i32* %2, align 4
  br label %59

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %31 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* @INTR_MPSAFE, align 4
  %34 = load i32, i32* @INTR_TYPE_MISC, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @ntb_plx_isr, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %39 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %38, i32 0, i32 1
  %40 = call i32 @bus_setup_intr(i32 %29, i32* %32, i32 %35, i32* null, i32 %36, i32 %37, i32* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %28
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 (i32, i8*, ...) @device_printf(i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %59

48:                                               ; preds = %28
  %49 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %50 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %55 = call i32 @NTX_WRITE(%struct.ntb_plx_softc* %54, i32 4064, i32 15)
  %56 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %57 = call i32 @NTX_WRITE(%struct.ntb_plx_softc* %56, i32 4068, i32 0)
  br label %58

58:                                               ; preds = %53, %48
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %43, %24
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.ntb_plx_softc* @device_get_softc(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @NTX_WRITE(%struct.ntb_plx_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
