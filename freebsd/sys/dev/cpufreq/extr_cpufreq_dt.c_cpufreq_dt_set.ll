; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cpufreq/extr_cpufreq_dt.c_cpufreq_dt_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cpufreq/extr_cpufreq_dt.c_cpufreq_dt_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i32 }
%struct.cpufreq_dt_softc = type { i32, i32, i32 }
%struct.cpufreq_dt_opp = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Can't get current clk freq\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Can't find the current freq in opp\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Couldn't find an opp for this freq\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Current freq %ju, uvolt: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Target freq %ju, , uvolt: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Changing regulator from %u to %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Failed, backout\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Setting clk to %ju\0A\00", align 1
@CLK_SET_ROUND_DOWN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"Failed to switch regulator to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cf_setting*)* @cpufreq_dt_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpufreq_dt_set(i32 %0, %struct.cf_setting* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cf_setting*, align 8
  %6 = alloca %struct.cpufreq_dt_softc*, align 8
  %7 = alloca %struct.cpufreq_dt_opp*, align 8
  %8 = alloca %struct.cpufreq_dt_opp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cf_setting* %1, %struct.cf_setting** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.cpufreq_dt_softc* @device_get_softc(i32 %12)
  store %struct.cpufreq_dt_softc* %13, %struct.cpufreq_dt_softc** %6, align 8
  %14 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %6, align 8
  %15 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @clk_get_freq(i32 %16, i32* %9)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %3, align 4
  br label %188

23:                                               ; preds = %2
  %24 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %6, align 8
  %25 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @regulator_get_voltage(i32 %26, i32* %10)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %23
  %31 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %6, align 8
  %32 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call %struct.cpufreq_dt_opp* @cpufreq_dt_find_opp(i32 %33, i32 %34)
  store %struct.cpufreq_dt_opp* %35, %struct.cpufreq_dt_opp** %8, align 8
  %36 = load %struct.cpufreq_dt_opp*, %struct.cpufreq_dt_opp** %8, align 8
  %37 = icmp eq %struct.cpufreq_dt_opp* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @ENOENT, align 4
  store i32 %41, i32* %3, align 4
  br label %188

42:                                               ; preds = %30
  %43 = load %struct.cpufreq_dt_opp*, %struct.cpufreq_dt_opp** %8, align 8
  %44 = getelementptr inbounds %struct.cpufreq_dt_opp, %struct.cpufreq_dt_opp* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %42, %23
  %47 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %6, align 8
  %48 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %51 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %52, 1000000
  %54 = call %struct.cpufreq_dt_opp* @cpufreq_dt_find_opp(i32 %49, i32 %53)
  store %struct.cpufreq_dt_opp* %54, %struct.cpufreq_dt_opp** %7, align 8
  %55 = load %struct.cpufreq_dt_opp*, %struct.cpufreq_dt_opp** %7, align 8
  %56 = icmp eq %struct.cpufreq_dt_opp* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %46
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @device_printf(i32 %58, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  store i32 %60, i32* %3, align 4
  br label %188

61:                                               ; preds = %46
  %62 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %6, align 8
  %63 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 (i32, i8*, ...) @DEBUG(i32 %64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %65, i32 %66)
  %68 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %6, align 8
  %69 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.cpufreq_dt_opp*, %struct.cpufreq_dt_opp** %7, align 8
  %72 = getelementptr inbounds %struct.cpufreq_dt_opp, %struct.cpufreq_dt_opp* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.cpufreq_dt_opp*, %struct.cpufreq_dt_opp** %7, align 8
  %75 = getelementptr inbounds %struct.cpufreq_dt_opp, %struct.cpufreq_dt_opp* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i32, i8*, ...) @DEBUG(i32 %70, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %73, i32 %76)
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.cpufreq_dt_opp*, %struct.cpufreq_dt_opp** %7, align 8
  %80 = getelementptr inbounds %struct.cpufreq_dt_opp, %struct.cpufreq_dt_opp* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %107

83:                                               ; preds = %61
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.cpufreq_dt_opp*, %struct.cpufreq_dt_opp** %7, align 8
  %87 = getelementptr inbounds %struct.cpufreq_dt_opp, %struct.cpufreq_dt_opp* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i32, i8*, ...) @DEBUG(i32 %84, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %85, i32 %88)
  %90 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %6, align 8
  %91 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.cpufreq_dt_opp*, %struct.cpufreq_dt_opp** %7, align 8
  %94 = getelementptr inbounds %struct.cpufreq_dt_opp, %struct.cpufreq_dt_opp* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.cpufreq_dt_opp*, %struct.cpufreq_dt_opp** %7, align 8
  %97 = getelementptr inbounds %struct.cpufreq_dt_opp, %struct.cpufreq_dt_opp* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @regulator_set_voltage(i32 %92, i32 %95, i32 %98)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %83
  %103 = load i32, i32* %4, align 4
  %104 = call i32 (i32, i8*, ...) @DEBUG(i32 %103, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %105 = load i32, i32* @ENXIO, align 4
  store i32 %105, i32* %3, align 4
  br label %188

106:                                              ; preds = %83
  br label %107

107:                                              ; preds = %106, %61
  %108 = load i32, i32* %4, align 4
  %109 = load %struct.cpufreq_dt_opp*, %struct.cpufreq_dt_opp** %7, align 8
  %110 = getelementptr inbounds %struct.cpufreq_dt_opp, %struct.cpufreq_dt_opp* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i32, i8*, ...) @DEBUG(i32 %108, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %111)
  %113 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %6, align 8
  %114 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.cpufreq_dt_opp*, %struct.cpufreq_dt_opp** %7, align 8
  %117 = getelementptr inbounds %struct.cpufreq_dt_opp, %struct.cpufreq_dt_opp* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @CLK_SET_ROUND_DOWN, align 4
  %120 = call i32 @clk_set_freq(i32 %115, i32 %118, i32 %119)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %137

123:                                              ; preds = %107
  %124 = load i32, i32* %4, align 4
  %125 = call i32 (i32, i8*, ...) @DEBUG(i32 %124, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %126 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %6, align 8
  %127 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.cpufreq_dt_opp*, %struct.cpufreq_dt_opp** %8, align 8
  %130 = getelementptr inbounds %struct.cpufreq_dt_opp, %struct.cpufreq_dt_opp* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.cpufreq_dt_opp*, %struct.cpufreq_dt_opp** %8, align 8
  %133 = getelementptr inbounds %struct.cpufreq_dt_opp, %struct.cpufreq_dt_opp* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @regulator_set_voltage(i32 %128, i32 %131, i32 %134)
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* @ENXIO, align 4
  store i32 %136, i32* %3, align 4
  br label %188

137:                                              ; preds = %107
  %138 = load i32, i32* %10, align 4
  %139 = load %struct.cpufreq_dt_opp*, %struct.cpufreq_dt_opp** %7, align 8
  %140 = getelementptr inbounds %struct.cpufreq_dt_opp, %struct.cpufreq_dt_opp* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp sgt i32 %138, %141
  br i1 %142, label %143, label %177

143:                                              ; preds = %137
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load %struct.cpufreq_dt_opp*, %struct.cpufreq_dt_opp** %7, align 8
  %147 = getelementptr inbounds %struct.cpufreq_dt_opp, %struct.cpufreq_dt_opp* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (i32, i8*, ...) @DEBUG(i32 %144, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %145, i32 %148)
  %150 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %6, align 8
  %151 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.cpufreq_dt_opp*, %struct.cpufreq_dt_opp** %7, align 8
  %154 = getelementptr inbounds %struct.cpufreq_dt_opp, %struct.cpufreq_dt_opp* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.cpufreq_dt_opp*, %struct.cpufreq_dt_opp** %7, align 8
  %157 = getelementptr inbounds %struct.cpufreq_dt_opp, %struct.cpufreq_dt_opp* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @regulator_set_voltage(i32 %152, i32 %155, i32 %158)
  store i32 %159, i32* %11, align 4
  %160 = load i32, i32* %11, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %176

162:                                              ; preds = %143
  %163 = load i32, i32* %4, align 4
  %164 = load %struct.cpufreq_dt_opp*, %struct.cpufreq_dt_opp** %7, align 8
  %165 = getelementptr inbounds %struct.cpufreq_dt_opp, %struct.cpufreq_dt_opp* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (i32, i8*, ...) @DEBUG(i32 %163, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %166)
  %168 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %6, align 8
  %169 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.cpufreq_dt_opp*, %struct.cpufreq_dt_opp** %8, align 8
  %172 = getelementptr inbounds %struct.cpufreq_dt_opp, %struct.cpufreq_dt_opp* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @clk_set_freq(i32 %170, i32 %173, i32 0)
  %175 = load i32, i32* @ENXIO, align 4
  store i32 %175, i32* %3, align 4
  br label %188

176:                                              ; preds = %143
  br label %177

177:                                              ; preds = %176, %137
  %178 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %6, align 8
  %179 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i64 @clk_get_freq(i32 %180, i32* %9)
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %177
  %184 = load i32, i32* %4, align 4
  %185 = load i32, i32* %9, align 4
  %186 = call i32 @cpufreq_dt_notify(i32 %184, i32 %185)
  br label %187

187:                                              ; preds = %183, %177
  store i32 0, i32* %3, align 4
  br label %188

188:                                              ; preds = %187, %162, %123, %102, %57, %38, %19
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local %struct.cpufreq_dt_softc* @device_get_softc(i32) #1

declare dso_local i64 @clk_get_freq(i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @regulator_get_voltage(i32, i32*) #1

declare dso_local %struct.cpufreq_dt_opp* @cpufreq_dt_find_opp(i32, i32) #1

declare dso_local i32 @DEBUG(i32, i8*, ...) #1

declare dso_local i32 @regulator_set_voltage(i32, i32, i32) #1

declare dso_local i32 @clk_set_freq(i32, i32, i32) #1

declare dso_local i32 @cpufreq_dt_notify(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
