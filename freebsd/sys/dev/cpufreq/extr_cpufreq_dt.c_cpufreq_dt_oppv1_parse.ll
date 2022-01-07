; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cpufreq/extr_cpufreq_dt.c_cpufreq_dt_oppv1_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cpufreq/extr_cpufreq_dt.c_cpufreq_dt_oppv1_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_dt_softc = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"operating-points\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"clock-latency\00", align 1
@CPUFREQ_VAL_UNKNOWN = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"%ju.%03ju MHz, %u uV\0A\00", align 1
@M_OFWPROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_dt_softc*, i32)* @cpufreq_dt_oppv1_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpufreq_dt_oppv1_parse(%struct.cpufreq_dt_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpufreq_dt_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.cpufreq_dt_softc* %0, %struct.cpufreq_dt_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = bitcast i32** %6 to i8**
  %11 = call i32 @OF_getencprop_alloc_multi(i32 %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 8, i8** %10)
  %12 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %13 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %15 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %3, align 4
  br label %142

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @OF_getencprop(i32 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %7, i32 4)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @CPUFREQ_VAL_UNKNOWN, align 4
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %24, %20
  %27 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %28 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = mul i64 20, %30
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @M_DEVBUF, align 4
  %34 = load i32, i32* @M_WAITOK, align 4
  %35 = call %struct.TYPE_2__* @malloc(i32 %32, i32 %33, i32 %34)
  %36 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %37 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %36, i32 0, i32 1
  store %struct.TYPE_2__* %35, %struct.TYPE_2__** %37, align 8
  store i64 0, i64* %8, align 8
  br label %38

38:                                               ; preds = %135, %26
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %41 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = icmp ult i64 %39, %43
  br i1 %44, label %45, label %138

45:                                               ; preds = %38
  %46 = load i32*, i32** %6, align 8
  %47 = load i64, i64* %8, align 8
  %48 = mul i64 %47, 2
  %49 = add i64 %48, 0
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %51, 1000
  %53 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %54 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %52, i32* %58, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = load i64, i64* %8, align 8
  %61 = mul i64 %60, 2
  %62 = add i64 %61, 1
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %66 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i32 %64, i32* %70, align 4
  %71 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %72 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i64, i64* %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %79 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i64, i64* %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  store i32 %77, i32* %83, align 4
  %84 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %85 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i64, i64* %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %92 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i64, i64* %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  store i32 %90, i32* %96, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %99 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %98, i32 0, i32 1
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i64, i64* %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 4
  store i32 %97, i32* %103, align 4
  %104 = load i64, i64* @bootverbose, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %134

106:                                              ; preds = %45
  %107 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %108 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %111 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %110, i32 0, i32 1
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = load i64, i64* %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = sdiv i32 %116, 1000000
  %118 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %119 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %118, i32 0, i32 1
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = load i64, i64* %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = srem i32 %124, 1000000
  %126 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %127 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %126, i32 0, i32 1
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = load i64, i64* %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @device_printf(i32 %109, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %117, i32 %125, i32 %132)
  br label %134

134:                                              ; preds = %106, %45
  br label %135

135:                                              ; preds = %134
  %136 = load i64, i64* %8, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %8, align 8
  br label %38

138:                                              ; preds = %38
  %139 = load i32*, i32** %6, align 8
  %140 = load i32, i32* @M_OFWPROP, align 4
  %141 = call i32 @free(i32* %139, i32 %140)
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %138, %18
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @OF_getencprop_alloc_multi(i32, i8*, i32, i8**) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local %struct.TYPE_2__* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
