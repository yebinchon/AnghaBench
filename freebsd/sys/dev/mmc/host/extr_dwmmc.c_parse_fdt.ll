; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/host/extr_dwmmc.c_parse_fdt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/host/extr_dwmmc.c_parse_fdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwmmc_softc = type { i32, i32, i32, i64, i32, i32*, i64, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"bus-width\00", align 1
@MMC_CAP_4_BIT_DATA = common dso_local global i32 0, align 4
@MMC_CAP_8_BIT_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"max-frequency\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"fifo-depth\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"num-slots\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"num-slots property is deprecated\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"No bus speed provided\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwmmc_softc*)* @parse_fdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_fdt(%struct.dwmmc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwmmc_softc*, align 8
  %4 = alloca [3 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dwmmc_softc* %0, %struct.dwmmc_softc** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %10 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @ofw_bus_get_node(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @ENXIO, align 4
  store i32 %15, i32* %2, align 4
  br label %106

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @OF_getencprop(i32 %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %7, i32 4)
  %19 = icmp sle i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 4, i32* %7, align 4
  br label %21

21:                                               ; preds = %20, %16
  %22 = load i32, i32* %7, align 4
  %23 = icmp sge i32 %22, 4
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %26 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %27 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %26, i32 0, i32 10
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %25
  store i32 %30, i32* %28, align 8
  br label %31

31:                                               ; preds = %24, %21
  %32 = load i32, i32* %7, align 4
  %33 = icmp sge i32 %32, 8
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i32, i32* @MMC_CAP_8_BIT_DATA, align 4
  %36 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %37 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %36, i32 0, i32 10
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %35
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %34, %31
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %44 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %43, i32 0, i32 0
  %45 = call i64 @OF_getencprop(i32 %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %44, i32 4)
  %46 = icmp sle i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %49 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %48, i32 0, i32 0
  store i32 200000000, i32* %49, align 8
  br label %50

50:                                               ; preds = %47, %41
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @OF_getproplen(i32 %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 %52, i32* %8, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %57 = load i32, i32* %8, align 4
  %58 = call i64 @OF_getencprop(i32 %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %56, i32 %57)
  %59 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %62 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %54, %50
  %64 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %65 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %64, i32 0, i32 2
  store i32 1, i32* %65, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @OF_getproplen(i32 %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 %67, i32* %8, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %63
  %70 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %71 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i32, i8*, ...) @device_printf(i32 %72, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %74 = load i32, i32* %5, align 4
  %75 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %76 = load i32, i32* %8, align 4
  %77 = call i64 @OF_getencprop(i32 %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %75, i32 %76)
  %78 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %81 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %69, %63
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @OF_getproplen(i32 %83, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  store i32 %84, i32* %8, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load i32, i32* %5, align 4
  %88 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %89 = load i32, i32* %8, align 4
  %90 = call i64 @OF_getencprop(i32 %87, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32* %88, i32 %89)
  %91 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %86, %82
  %94 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %95 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %100 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i32, i8*, ...) @device_printf(i32 %101, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %104

103:                                              ; preds = %93
  store i32 0, i32* %2, align 4
  br label %106

104:                                              ; preds = %98
  %105 = load i32, i32* @ENXIO, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %104, %103, %14
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @OF_getproplen(i32, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
