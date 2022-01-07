; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_intr_gic.c_mtk_gic_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_intr_gic.c_mtk_gic_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_gic_softc = type { i32, i32, i32, i32, i32 }

@mtk_gic_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"PIC lock\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@MTK_INTDIS = common dso_local global i32 0, align 4
@MTK_INTTRIG = common dso_local global i32 0, align 4
@MTK_INTPOL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"could not register GIC ISRCs\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"could not register PIC\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"gic\00", align 1
@mtk_gic_intr = common dso_local global i32 0, align 4
@INTR_TYPE_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mtk_gic_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_gic_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_gic_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @gic_xref(i32 %7)
  store i64 %8, i64* %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.mtk_gic_softc* @device_get_softc(i32 %9)
  store %struct.mtk_gic_softc* %10, %struct.mtk_gic_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @mtk_gic_spec, align 4
  %13 = load %struct.mtk_gic_softc*, %struct.mtk_gic_softc** %4, align 8
  %14 = getelementptr inbounds %struct.mtk_gic_softc, %struct.mtk_gic_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @bus_alloc_resources(i32 %11, i32 %12, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %2, align 4
  br label %90

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.mtk_gic_softc*, %struct.mtk_gic_softc** %4, align 8
  %25 = getelementptr inbounds %struct.mtk_gic_softc, %struct.mtk_gic_softc* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load %struct.mtk_gic_softc*, %struct.mtk_gic_softc** %4, align 8
  %27 = getelementptr inbounds %struct.mtk_gic_softc, %struct.mtk_gic_softc* %26, i32 0, i32 3
  %28 = load i32, i32* @MTX_SPIN, align 4
  %29 = call i32 @mtx_init(i32* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load %struct.mtk_gic_softc*, %struct.mtk_gic_softc** %4, align 8
  %31 = getelementptr inbounds %struct.mtk_gic_softc, %struct.mtk_gic_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @nitems(i32 %32)
  %34 = load %struct.mtk_gic_softc*, %struct.mtk_gic_softc** %4, align 8
  %35 = getelementptr inbounds %struct.mtk_gic_softc, %struct.mtk_gic_softc* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.mtk_gic_softc*, %struct.mtk_gic_softc** %4, align 8
  %37 = load i32, i32* @MTK_INTDIS, align 4
  %38 = call i32 @WRITE4(%struct.mtk_gic_softc* %36, i32 %37, i32 -1)
  %39 = load %struct.mtk_gic_softc*, %struct.mtk_gic_softc** %4, align 8
  %40 = load i32, i32* @MTK_INTTRIG, align 4
  %41 = call i32 @WRITE4(%struct.mtk_gic_softc* %39, i32 %40, i32 0)
  %42 = load %struct.mtk_gic_softc*, %struct.mtk_gic_softc** %4, align 8
  %43 = load i32, i32* @MTK_INTPOL, align 4
  %44 = call i32 @WRITE4(%struct.mtk_gic_softc* %42, i32 %43, i32 -1)
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %59, %22
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 32
  br i1 %47, label %48, label %62

48:                                               ; preds = %45
  %49 = load %struct.mtk_gic_softc*, %struct.mtk_gic_softc** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @MTK_MAPPIN(i32 %50)
  %52 = call i32 @MTK_PIN_BITS(i32 0)
  %53 = call i32 @WRITE4(%struct.mtk_gic_softc* %49, i32 %51, i32 %52)
  %54 = load %struct.mtk_gic_softc*, %struct.mtk_gic_softc** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @MTK_MAPVPE(i32 %55, i32 0)
  %57 = call i32 @MTK_VPE_BITS(i32 0)
  %58 = call i32 @WRITE4(%struct.mtk_gic_softc* %54, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %48
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %45

62:                                               ; preds = %45
  %63 = load %struct.mtk_gic_softc*, %struct.mtk_gic_softc** %4, align 8
  %64 = call i64 @mtk_gic_register_isrcs(%struct.mtk_gic_softc* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %82

69:                                               ; preds = %62
  %70 = load i32, i32* %3, align 4
  %71 = load i64, i64* %5, align 8
  %72 = call i32* @intr_pic_register(i32 %70, i64 %71)
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @device_printf(i32 %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %82

77:                                               ; preds = %69
  %78 = load i32, i32* @mtk_gic_intr, align 4
  %79 = load %struct.mtk_gic_softc*, %struct.mtk_gic_softc** %4, align 8
  %80 = load i32, i32* @INTR_TYPE_CLK, align 4
  %81 = call i32 @cpu_establish_hardintr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %78, i32* null, %struct.mtk_gic_softc* %79, i32 0, i32 %80, i32* null)
  store i32 0, i32* %2, align 4
  br label %90

82:                                               ; preds = %74, %66
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @mtk_gic_spec, align 4
  %85 = load %struct.mtk_gic_softc*, %struct.mtk_gic_softc** %4, align 8
  %86 = getelementptr inbounds %struct.mtk_gic_softc, %struct.mtk_gic_softc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @bus_release_resources(i32 %83, i32 %84, i32 %87)
  %89 = load i32, i32* @ENXIO, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %82, %77, %18
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i64 @gic_xref(i32) #1

declare dso_local %struct.mtk_gic_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i8*, i32) #1

declare dso_local i32 @nitems(i32) #1

declare dso_local i32 @WRITE4(%struct.mtk_gic_softc*, i32, i32) #1

declare dso_local i32 @MTK_MAPPIN(i32) #1

declare dso_local i32 @MTK_PIN_BITS(i32) #1

declare dso_local i32 @MTK_MAPVPE(i32, i32) #1

declare dso_local i32 @MTK_VPE_BITS(i32) #1

declare dso_local i64 @mtk_gic_register_isrcs(%struct.mtk_gic_softc*) #1

declare dso_local i32* @intr_pic_register(i32, i64) #1

declare dso_local i32 @cpu_establish_hardintr(i8*, i32, i32*, %struct.mtk_gic_softc*, i32, i32, i32*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
