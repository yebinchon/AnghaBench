; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_smist.c_smist_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_smist.c_smist_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smist_softc = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"smist\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"acpi_perf\00", align 1
@CPUFREQ_FLAG_INFO_ONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"ichss\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [61 x i8] c"sig %.8x smi_cmd %.4x command %.2x smi_data %.4x flags %.8x\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"GSIC returned cmd 0x80, should be 0x82\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"SpeedStep SMI\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @smist_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smist_probe(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.smist_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %14 = call i64 @resource_disabled(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %2, align 4
  br label %105

18:                                               ; preds = %1
  %19 = load i64, i64* %3, align 8
  %20 = call %struct.smist_softc* @device_get_softc(i64 %19)
  store %struct.smist_softc* %20, %struct.smist_softc** %4, align 8
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @device_get_parent(i64 %21)
  %23 = call i64 @device_find_child(i32 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %18
  %27 = load i64, i64* %6, align 8
  %28 = call i64 @device_is_attached(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @CPUFREQ_DRV_TYPE(i64 %31, i32* %12)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @CPUFREQ_FLAG_INFO_ONLY, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @ENXIO, align 4
  store i32 %41, i32* %2, align 4
  br label %105

42:                                               ; preds = %35, %30
  br label %43

43:                                               ; preds = %42, %26, %18
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @device_get_parent(i64 %44)
  %46 = call i64 @device_find_child(i32 %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* %5, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @device_is_attached(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @ENXIO, align 4
  store i32 %54, i32* %2, align 4
  br label %105

55:                                               ; preds = %49, %43
  %56 = call i32 @int15_gsic_call(i32* %7, i32* %8, i32* %9, i32* %10, i32* %11)
  %57 = load i64, i64* @bootverbose, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i64, i64* %3, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 (i64, i8*, ...) @device_printf(i64 %60, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32 %61, i32 %62, i32 %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %59, %55
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, -1
  br i1 %69, label %70, label %93

70:                                               ; preds = %67
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.smist_softc*, %struct.smist_softc** %4, align 8
  %73 = getelementptr inbounds %struct.smist_softc, %struct.smist_softc* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.smist_softc*, %struct.smist_softc** %4, align 8
  %76 = getelementptr inbounds %struct.smist_softc, %struct.smist_softc* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp eq i32 %77, 128
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load i64, i64* %3, align 8
  %81 = call i32 (i64, i8*, ...) @device_printf(i64 %80, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  store i32 130, i32* %9, align 4
  br label %82

82:                                               ; preds = %79, %70
  %83 = load i32, i32* %7, align 4
  %84 = and i32 %83, -256
  %85 = load i32, i32* %9, align 4
  %86 = and i32 %85, 255
  %87 = or i32 %84, %86
  %88 = load %struct.smist_softc*, %struct.smist_softc** %4, align 8
  %89 = getelementptr inbounds %struct.smist_softc, %struct.smist_softc* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.smist_softc*, %struct.smist_softc** %4, align 8
  %92 = getelementptr inbounds %struct.smist_softc, %struct.smist_softc* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  br label %102

93:                                               ; preds = %67
  %94 = load %struct.smist_softc*, %struct.smist_softc** %4, align 8
  %95 = getelementptr inbounds %struct.smist_softc, %struct.smist_softc* %94, i32 0, i32 0
  store i32 178, i32* %95, align 4
  %96 = load %struct.smist_softc*, %struct.smist_softc** %4, align 8
  %97 = getelementptr inbounds %struct.smist_softc, %struct.smist_softc* %96, i32 0, i32 1
  store i32 179, i32* %97, align 4
  %98 = load %struct.smist_softc*, %struct.smist_softc** %4, align 8
  %99 = getelementptr inbounds %struct.smist_softc, %struct.smist_softc* %98, i32 0, i32 2
  store i32 1196640642, i32* %99, align 4
  %100 = load %struct.smist_softc*, %struct.smist_softc** %4, align 8
  %101 = getelementptr inbounds %struct.smist_softc, %struct.smist_softc* %100, i32 0, i32 3
  store i32 0, i32* %101, align 4
  br label %102

102:                                              ; preds = %93, %82
  %103 = load i64, i64* %3, align 8
  %104 = call i32 @device_set_desc(i64 %103, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1500, i32* %2, align 4
  br label %105

105:                                              ; preds = %102, %53, %40, %16
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i64 @resource_disabled(i8*, i32) #1

declare dso_local %struct.smist_softc* @device_get_softc(i64) #1

declare dso_local i64 @device_find_child(i32, i8*, i32) #1

declare dso_local i32 @device_get_parent(i64) #1

declare dso_local i64 @device_is_attached(i64) #1

declare dso_local i32 @CPUFREQ_DRV_TYPE(i64, i32*) #1

declare dso_local i32 @int15_gsic_call(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @device_printf(i64, i8*, ...) #1

declare dso_local i32 @device_set_desc(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
