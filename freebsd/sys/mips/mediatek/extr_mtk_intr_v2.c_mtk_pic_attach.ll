; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_intr_v2.c_mtk_pic_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_intr_v2.c_mtk_pic_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pic_softc = type { i32*, i32, i32, i32, i32, i32 }

@mtk_pic_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"PIC lock\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@MTK_INTDIS = common dso_local global i32 0, align 4
@MTK_INTENA = common dso_local global i32 0, align 4
@MTK_INTTYPE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"could not register PIC ISRCs\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"could not register PIC\0A\00", align 1
@INTR_TYPE_CLK = common dso_local global i32 0, align 4
@mtk_pic_intr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"could not setup irq handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mtk_pic_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pic_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_pic_softc*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @pic_xref(i32 %6)
  store i64 %7, i64* %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.mtk_pic_softc* @device_get_softc(i32 %8)
  store %struct.mtk_pic_softc* %9, %struct.mtk_pic_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @mtk_pic_spec, align 4
  %12 = load %struct.mtk_pic_softc*, %struct.mtk_pic_softc** %4, align 8
  %13 = getelementptr inbounds %struct.mtk_pic_softc, %struct.mtk_pic_softc* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i64 @bus_alloc_resources(i32 %10, i32 %11, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %87

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.mtk_pic_softc*, %struct.mtk_pic_softc** %4, align 8
  %24 = getelementptr inbounds %struct.mtk_pic_softc, %struct.mtk_pic_softc* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 8
  %25 = load %struct.mtk_pic_softc*, %struct.mtk_pic_softc** %4, align 8
  %26 = getelementptr inbounds %struct.mtk_pic_softc, %struct.mtk_pic_softc* %25, i32 0, i32 4
  %27 = load i32, i32* @MTX_SPIN, align 4
  %28 = call i32 @mtx_init(i32* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load %struct.mtk_pic_softc*, %struct.mtk_pic_softc** %4, align 8
  %30 = getelementptr inbounds %struct.mtk_pic_softc, %struct.mtk_pic_softc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @nitems(i32 %31)
  %33 = load %struct.mtk_pic_softc*, %struct.mtk_pic_softc** %4, align 8
  %34 = getelementptr inbounds %struct.mtk_pic_softc, %struct.mtk_pic_softc* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.mtk_pic_softc*, %struct.mtk_pic_softc** %4, align 8
  %36 = load i32, i32* @MTK_INTDIS, align 4
  %37 = call i32 @WRITE4(%struct.mtk_pic_softc* %35, i32 %36, i32 -1)
  %38 = load %struct.mtk_pic_softc*, %struct.mtk_pic_softc** %4, align 8
  %39 = load i32, i32* @MTK_INTENA, align 4
  %40 = call i32 @WRITE4(%struct.mtk_pic_softc* %38, i32 %39, i32 0)
  %41 = load %struct.mtk_pic_softc*, %struct.mtk_pic_softc** %4, align 8
  %42 = load i32, i32* @MTK_INTTYPE, align 4
  %43 = call i32 @WRITE4(%struct.mtk_pic_softc* %41, i32 %42, i32 -1)
  %44 = load %struct.mtk_pic_softc*, %struct.mtk_pic_softc** %4, align 8
  %45 = call i64 @mtk_pic_register_isrcs(%struct.mtk_pic_softc* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %21
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @device_printf(i32 %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %79

50:                                               ; preds = %21
  %51 = load i32, i32* %3, align 4
  %52 = load i64, i64* %5, align 8
  %53 = call i32* @intr_pic_register(i32 %51, i64 %52)
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @device_printf(i32 %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %79

58:                                               ; preds = %50
  %59 = load i32, i32* %3, align 4
  %60 = load %struct.mtk_pic_softc*, %struct.mtk_pic_softc** %4, align 8
  %61 = getelementptr inbounds %struct.mtk_pic_softc, %struct.mtk_pic_softc* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @INTR_TYPE_CLK, align 4
  %66 = load i32, i32* @mtk_pic_intr, align 4
  %67 = load %struct.mtk_pic_softc*, %struct.mtk_pic_softc** %4, align 8
  %68 = load %struct.mtk_pic_softc*, %struct.mtk_pic_softc** %4, align 8
  %69 = getelementptr inbounds %struct.mtk_pic_softc, %struct.mtk_pic_softc* %68, i32 0, i32 1
  %70 = call i64 @bus_setup_intr(i32 %59, i32 %64, i32 %65, i32 %66, i32* null, %struct.mtk_pic_softc* %67, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %58
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @device_printf(i32 %73, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %75 = load i32, i32* %3, align 4
  %76 = load i64, i64* %5, align 8
  %77 = call i32 @intr_pic_deregister(i32 %75, i64 %76)
  br label %79

78:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %87

79:                                               ; preds = %72, %55, %47
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @mtk_pic_spec, align 4
  %82 = load %struct.mtk_pic_softc*, %struct.mtk_pic_softc** %4, align 8
  %83 = getelementptr inbounds %struct.mtk_pic_softc, %struct.mtk_pic_softc* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @bus_release_resources(i32 %80, i32 %81, i32* %84)
  %86 = load i32, i32* @ENXIO, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %79, %78, %17
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i64 @pic_xref(i32) #1

declare dso_local %struct.mtk_pic_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i8*, i32) #1

declare dso_local i32 @nitems(i32) #1

declare dso_local i32 @WRITE4(%struct.mtk_pic_softc*, i32, i32) #1

declare dso_local i64 @mtk_pic_register_isrcs(%struct.mtk_pic_softc*) #1

declare dso_local i32* @intr_pic_register(i32, i64) #1

declare dso_local i64 @bus_setup_intr(i32, i32, i32, i32, i32*, %struct.mtk_pic_softc*, i32*) #1

declare dso_local i32 @intr_pic_deregister(i32, i64) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
