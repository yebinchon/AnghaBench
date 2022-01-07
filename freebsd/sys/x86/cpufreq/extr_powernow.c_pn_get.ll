; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_powernow.c_pn_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_powernow.c_pn_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i32, i32, i32*, i32, i32 }
%struct.pn_softc = type { i32, i32, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PENDING_STUCK = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@MSR_AMDK7_FIDVID_STATUS = common dso_local global i32 0, align 4
@CPUFREQ_VAL_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.cf_setting*)* @pn_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn_get(i32* %0, %struct.cf_setting* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.cf_setting*, align 8
  %6 = alloca %struct.pn_softc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.cf_setting* %1, %struct.cf_setting** %5, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %12 = icmp eq %struct.cf_setting* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %124

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = call %struct.pn_softc* @device_get_softc(i32* %16)
  store %struct.pn_softc* %17, %struct.pn_softc** %6, align 8
  %18 = load %struct.pn_softc*, %struct.pn_softc** %6, align 8
  %19 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @PENDING_STUCK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %3, align 4
  br label %124

26:                                               ; preds = %15
  %27 = load i32, i32* @MSR_AMDK7_FIDVID_STATUS, align 4
  %28 = call i32 @rdmsr(i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.pn_softc*, %struct.pn_softc** %6, align 8
  %30 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %42 [
    i32 129, label %32
    i32 128, label %37
  ]

32:                                               ; preds = %26
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @PN7_STA_CFID(i32 %33)
  store i64 %34, i64* %7, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i64 @PN7_STA_CVID(i32 %35)
  store i64 %36, i64* %8, align 8
  br label %42

37:                                               ; preds = %26
  %38 = load i32, i32* %10, align 4
  %39 = call i64 @PN8_STA_CFID(i32 %38)
  store i64 %39, i64* %7, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i64 @PN8_STA_CVID(i32 %40)
  store i64 %41, i64* %8, align 8
  br label %42

42:                                               ; preds = %26, %37, %32
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %73, %42
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.pn_softc*, %struct.pn_softc** %6, align 8
  %46 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %76

49:                                               ; preds = %43
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.pn_softc*, %struct.pn_softc** %6, align 8
  %52 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %51, i32 0, i32 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %50, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %49
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.pn_softc*, %struct.pn_softc** %6, align 8
  %63 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %62, i32 0, i32 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %61, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  br label %76

72:                                               ; preds = %60, %49
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %43

76:                                               ; preds = %71, %43
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.pn_softc*, %struct.pn_softc** %6, align 8
  %79 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %117

82:                                               ; preds = %76
  %83 = load %struct.pn_softc*, %struct.pn_softc** %6, align 8
  %84 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %83, i32 0, i32 4
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = sdiv i32 %90, 1000
  %92 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %93 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.pn_softc*, %struct.pn_softc** %6, align 8
  %95 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %94, i32 0, i32 4
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %103 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 4
  %104 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %105 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %104, i32 0, i32 1
  store i32 200, i32* %105, align 4
  %106 = load %struct.pn_softc*, %struct.pn_softc** %6, align 8
  %107 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* %8, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %113 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 8
  %114 = load i32*, i32** %4, align 8
  %115 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %116 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %115, i32 0, i32 2
  store i32* %114, i32** %116, align 8
  br label %123

117:                                              ; preds = %76
  %118 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %119 = load i32, i32* @CPUFREQ_VAL_UNKNOWN, align 4
  %120 = call i32 @memset(%struct.cf_setting* %118, i32 %119, i32 24)
  %121 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %122 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %121, i32 0, i32 2
  store i32* null, i32** %122, align 8
  br label %123

123:                                              ; preds = %117, %82
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %123, %24, %13
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.pn_softc* @device_get_softc(i32*) #1

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i64 @PN7_STA_CFID(i32) #1

declare dso_local i64 @PN7_STA_CVID(i32) #1

declare dso_local i64 @PN8_STA_CFID(i32) #1

declare dso_local i64 @PN8_STA_CVID(i32) #1

declare dso_local i32 @memset(%struct.cf_setting*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
