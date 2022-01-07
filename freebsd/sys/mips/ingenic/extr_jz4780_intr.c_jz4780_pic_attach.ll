; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_intr.c_jz4780_pic_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_intr.c_jz4780_pic_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_pic_softc = type { i32*, i32, i32, i32, i32 }

@jz4780_pic_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@JZ_ICMR0 = common dso_local global i32 0, align 4
@JZ_ICMR1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"could not register PIC ISRCs\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"could not register PIC\0A\00", align 1
@INTR_TYPE_CLK = common dso_local global i32 0, align 4
@jz4780_pic_intr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"could not setup irq handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @jz4780_pic_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_pic_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.jz4780_pic_softc*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @pic_xref(i32 %6)
  store i64 %7, i64* %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.jz4780_pic_softc* @device_get_softc(i32 %8)
  store %struct.jz4780_pic_softc* %9, %struct.jz4780_pic_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @jz4780_pic_spec, align 4
  %12 = load %struct.jz4780_pic_softc*, %struct.jz4780_pic_softc** %4, align 8
  %13 = getelementptr inbounds %struct.jz4780_pic_softc, %struct.jz4780_pic_softc* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i64 @bus_alloc_resources(i32 %10, i32 %11, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %80

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.jz4780_pic_softc*, %struct.jz4780_pic_softc** %4, align 8
  %24 = getelementptr inbounds %struct.jz4780_pic_softc, %struct.jz4780_pic_softc* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = load %struct.jz4780_pic_softc*, %struct.jz4780_pic_softc** %4, align 8
  %26 = getelementptr inbounds %struct.jz4780_pic_softc, %struct.jz4780_pic_softc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @nitems(i32 %27)
  %29 = load %struct.jz4780_pic_softc*, %struct.jz4780_pic_softc** %4, align 8
  %30 = getelementptr inbounds %struct.jz4780_pic_softc, %struct.jz4780_pic_softc* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.jz4780_pic_softc*, %struct.jz4780_pic_softc** %4, align 8
  %32 = load i32, i32* @JZ_ICMR0, align 4
  %33 = call i32 @WRITE4(%struct.jz4780_pic_softc* %31, i32 %32, i32 -1)
  %34 = load %struct.jz4780_pic_softc*, %struct.jz4780_pic_softc** %4, align 8
  %35 = load i32, i32* @JZ_ICMR1, align 4
  %36 = call i32 @WRITE4(%struct.jz4780_pic_softc* %34, i32 %35, i32 -1)
  %37 = load %struct.jz4780_pic_softc*, %struct.jz4780_pic_softc** %4, align 8
  %38 = call i64 @jz4780_pic_register_isrcs(%struct.jz4780_pic_softc* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %21
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %72

43:                                               ; preds = %21
  %44 = load i32, i32* %3, align 4
  %45 = load i64, i64* %5, align 8
  %46 = call i32* @intr_pic_register(i32 %44, i64 %45)
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %72

51:                                               ; preds = %43
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.jz4780_pic_softc*, %struct.jz4780_pic_softc** %4, align 8
  %54 = getelementptr inbounds %struct.jz4780_pic_softc, %struct.jz4780_pic_softc* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @INTR_TYPE_CLK, align 4
  %59 = load i32, i32* @jz4780_pic_intr, align 4
  %60 = load %struct.jz4780_pic_softc*, %struct.jz4780_pic_softc** %4, align 8
  %61 = load %struct.jz4780_pic_softc*, %struct.jz4780_pic_softc** %4, align 8
  %62 = getelementptr inbounds %struct.jz4780_pic_softc, %struct.jz4780_pic_softc* %61, i32 0, i32 1
  %63 = call i64 @bus_setup_intr(i32 %52, i32 %57, i32 %58, i32 %59, i32* null, %struct.jz4780_pic_softc* %60, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %51
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @device_printf(i32 %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i32, i32* %3, align 4
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @intr_pic_deregister(i32 %68, i64 %69)
  br label %72

71:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %80

72:                                               ; preds = %65, %48, %40
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @jz4780_pic_spec, align 4
  %75 = load %struct.jz4780_pic_softc*, %struct.jz4780_pic_softc** %4, align 8
  %76 = getelementptr inbounds %struct.jz4780_pic_softc, %struct.jz4780_pic_softc* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @bus_release_resources(i32 %73, i32 %74, i32* %77)
  %79 = load i32, i32* @ENXIO, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %72, %71, %17
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i64 @pic_xref(i32) #1

declare dso_local %struct.jz4780_pic_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @nitems(i32) #1

declare dso_local i32 @WRITE4(%struct.jz4780_pic_softc*, i32, i32) #1

declare dso_local i64 @jz4780_pic_register_isrcs(%struct.jz4780_pic_softc*) #1

declare dso_local i32* @intr_pic_register(i32, i64) #1

declare dso_local i64 @bus_setup_intr(i32, i32, i32, i32, i32*, %struct.jz4780_pic_softc*, i32*) #1

declare dso_local i32 @intr_pic_deregister(i32, i64) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
