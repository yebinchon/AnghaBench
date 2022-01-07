; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cpufreq/extr_cpufreq_dt.c_cpufreq_dt_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cpufreq/extr_cpufreq_dt.c_cpufreq_dt_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_dt_softc = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"cpu-supply\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"cpu0-supply\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"no regulator for %s\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"no clock for %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"operating-points\00", align 1
@OPP_V1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed to parse opp-v1 table\0A\00", align 1
@OPP_V2 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"Failed to parse opp-v2 table\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"operating-points-v2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cpufreq_dt_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpufreq_dt_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpufreq_dt_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.cpufreq_dt_softc* @device_get_softc(i32 %13)
  store %struct.cpufreq_dt_softc* %14, %struct.cpufreq_dt_softc** %4, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %17 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_get_parent(i32 %18)
  %20 = call i64 @ofw_bus_get_node(i32 %19)
  store i64 %20, i64* %5, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %24 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %23, i32 0, i32 2
  %25 = call i64 @regulator_get_by_ofw_property(i32 %21, i64 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %31 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %30, i32 0, i32 2
  %32 = call i64 @regulator_get_by_ofw_property(i32 %28, i64 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @device_get_parent(i32 %36)
  %38 = call i32 @ofw_bus_get_name(i32 %37)
  %39 = call i32 (i32, i8*, ...) @device_printf(i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %2, align 4
  br label %146

41:                                               ; preds = %27
  br label %42

42:                                               ; preds = %41, %1
  %43 = load i32, i32* %3, align 4
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %46 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %45, i32 0, i32 0
  %47 = call i64 @clk_get_by_ofw_index(i32 %43, i64 %44, i32 0, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %42
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @device_get_parent(i32 %51)
  %53 = call i32 @ofw_bus_get_name(i32 %52)
  %54 = call i32 (i32, i8*, ...) @device_printf(i32 %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  %55 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %56 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @regulator_release(i32 %57)
  %59 = load i32, i32* @ENXIO, align 4
  store i32 %59, i32* %2, align 4
  br label %146

60:                                               ; preds = %42
  %61 = load i64, i64* %5, align 8
  %62 = call i64 @OF_hasprop(i64 %61, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %60
  %65 = load i32, i32* @OPP_V1, align 4
  store i32 %65, i32* %12, align 4
  %66 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @cpufreq_dt_oppv1_parse(%struct.cpufreq_dt_softc* %66, i64 %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32, i32* %3, align 4
  %73 = call i32 (i32, i8*, ...) @device_printf(i32 %72, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %2, align 4
  br label %146

75:                                               ; preds = %64
  %76 = load i64, i64* %5, align 8
  %77 = call i32 @OF_getencprop(i64 %76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64* %7, i32 8)
  br label %92

78:                                               ; preds = %60
  %79 = load i32, i32* @OPP_V2, align 4
  store i32 %79, i32* %12, align 4
  %80 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %81 = load i64, i64* %5, align 8
  %82 = call i32 @cpufreq_dt_oppv2_parse(%struct.cpufreq_dt_softc* %80, i64 %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load i32, i32* %3, align 4
  %87 = call i32 (i32, i8*, ...) @device_printf(i32 %86, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %2, align 4
  br label %146

89:                                               ; preds = %78
  %90 = load i64, i64* %5, align 8
  %91 = call i32 @OF_getencprop(i64 %90, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i64* %7, i32 8)
  br label %92

92:                                               ; preds = %89, %75
  %93 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %94 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %93, i32 0, i32 1
  %95 = call i32 @CPU_ZERO(i32* %94)
  %96 = load i32, i32* %3, align 4
  %97 = call i32 @device_get_parent(i32 %96)
  %98 = call i32 @device_get_unit(i32 %97)
  store i32 %98, i32* %9, align 4
  %99 = load i64, i64* %5, align 8
  store i64 %99, i64* %6, align 8
  br label %100

100:                                              ; preds = %128, %92
  %101 = load i64, i64* %6, align 8
  %102 = icmp sgt i64 %101, 0
  br i1 %102, label %103, label %133

103:                                              ; preds = %100
  store i64 -1, i64* %8, align 8
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* @OPP_V1, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i64, i64* %6, align 8
  %109 = call i32 @OF_getencprop(i64 %108, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64* %8, i32 8)
  br label %118

110:                                              ; preds = %103
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* @OPP_V2, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load i64, i64* %6, align 8
  %116 = call i32 @OF_getencprop(i64 %115, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i64* %8, i32 8)
  br label %117

117:                                              ; preds = %114, %110
  br label %118

118:                                              ; preds = %117, %107
  %119 = load i64, i64* %7, align 8
  %120 = load i64, i64* %8, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %125 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %124, i32 0, i32 1
  %126 = call i32 @CPU_SET(i32 %123, i32* %125)
  br label %127

127:                                              ; preds = %122, %118
  br label %128

128:                                              ; preds = %127
  %129 = load i64, i64* %6, align 8
  %130 = call i64 @OF_peer(i64 %129)
  store i64 %130, i64* %6, align 8
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %9, align 4
  br label %100

133:                                              ; preds = %100
  %134 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %135 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @clk_get_freq(i32 %136, i32* %10)
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = load i32, i32* %3, align 4
  %141 = load i32, i32* %10, align 4
  %142 = call i32 @cpufreq_dt_notify(i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %139, %133
  %144 = load i32, i32* %3, align 4
  %145 = call i32 @cpufreq_register(i32 %144)
  store i32 0, i32* %2, align 4
  br label %146

146:                                              ; preds = %143, %85, %71, %49, %34
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local %struct.cpufreq_dt_softc* @device_get_softc(i32) #1

declare dso_local i64 @ofw_bus_get_node(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @regulator_get_by_ofw_property(i32, i64, i8*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @ofw_bus_get_name(i32) #1

declare dso_local i64 @clk_get_by_ofw_index(i32, i64, i32, i32*) #1

declare dso_local i32 @regulator_release(i32) #1

declare dso_local i64 @OF_hasprop(i64, i8*) #1

declare dso_local i32 @cpufreq_dt_oppv1_parse(%struct.cpufreq_dt_softc*, i64) #1

declare dso_local i32 @OF_getencprop(i64, i8*, i64*, i32) #1

declare dso_local i32 @cpufreq_dt_oppv2_parse(%struct.cpufreq_dt_softc*, i64) #1

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i64 @clk_get_freq(i32, i32*) #1

declare dso_local i32 @cpufreq_dt_notify(i32, i32) #1

declare dso_local i32 @cpufreq_register(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
