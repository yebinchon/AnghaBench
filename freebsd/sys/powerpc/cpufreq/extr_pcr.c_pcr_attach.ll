; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/cpufreq/extr_pcr.c_pcr_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/cpufreq/extr_pcr.c_pcr_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcr_softc = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [26 x i8] c"No CPU device tree node!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"power-mode-data\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"No power mode data in device tree!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pcr_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcr_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcr_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.pcr_softc* @device_get_softc(i32 %8)
  store %struct.pcr_softc* %9, %struct.pcr_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.pcr_softc*, %struct.pcr_softc** %4, align 8
  %12 = getelementptr inbounds %struct.pcr_softc, %struct.pcr_softc* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @device_get_parent(i32 %13)
  %15 = call i64 @ofw_bus_get_node(i32 %14)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp sle i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %2, align 4
  br label %89

22:                                               ; preds = %1
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @OF_getproplen(i64 %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @OF_parent(i64 %27)
  %29 = call i64 @OF_child(i32 %28)
  store i64 %29, i64* %5, align 8
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @OF_getproplen(i64 %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %33 = trunc i64 %32 to i32
  %34 = load %struct.pcr_softc*, %struct.pcr_softc** %4, align 8
  %35 = getelementptr inbounds %struct.pcr_softc, %struct.pcr_softc* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.pcr_softc*, %struct.pcr_softc** %4, align 8
  %37 = getelementptr inbounds %struct.pcr_softc, %struct.pcr_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %30
  %41 = load %struct.pcr_softc*, %struct.pcr_softc** %4, align 8
  %42 = getelementptr inbounds %struct.pcr_softc, %struct.pcr_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = icmp ugt i64 %44, 8
  br i1 %45, label %46, label %50

46:                                               ; preds = %40, %30
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @device_printf(i32 %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @ENXIO, align 4
  store i32 %49, i32* %2, align 4
  br label %89

50:                                               ; preds = %40
  %51 = load i64, i64* %5, align 8
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %53 = load %struct.pcr_softc*, %struct.pcr_softc** %4, align 8
  %54 = getelementptr inbounds %struct.pcr_softc, %struct.pcr_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @OF_getprop(i64 %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %52, i32 %55)
  %57 = load %struct.pcr_softc*, %struct.pcr_softc** %4, align 8
  %58 = getelementptr inbounds %struct.pcr_softc, %struct.pcr_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = udiv i64 %60, 4
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 8
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %83, %50
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.pcr_softc*, %struct.pcr_softc** %4, align 8
  %66 = getelementptr inbounds %struct.pcr_softc, %struct.pcr_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %63
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.pcr_softc*, %struct.pcr_softc** %4, align 8
  %75 = getelementptr inbounds %struct.pcr_softc, %struct.pcr_softc* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @PCR_TO_FREQ(i32 %80)
  %82 = getelementptr inbounds i32, i32* %76, i64 %81
  store i32 %73, i32* %82, align 4
  br label %83

83:                                               ; preds = %69
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %63

86:                                               ; preds = %63
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @cpufreq_register(i32 %87)
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %86, %46, %18
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.pcr_softc* @device_get_softc(i32) #1

declare dso_local i64 @ofw_bus_get_node(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @OF_getproplen(i64, i8*) #1

declare dso_local i64 @OF_child(i32) #1

declare dso_local i32 @OF_parent(i64) #1

declare dso_local i32 @OF_getprop(i64, i8*, i32*, i32) #1

declare dso_local i64 @PCR_TO_FREQ(i32) #1

declare dso_local i32 @cpufreq_register(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
