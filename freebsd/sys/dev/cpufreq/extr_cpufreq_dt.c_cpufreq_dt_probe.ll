; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cpufreq/extr_cpufreq_dt.c_cpufreq_dt_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cpufreq/extr_cpufreq_dt.c_cpufreq_dt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"cpu-supply\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"cpu0-supply\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"operating-points\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"operating-points-v2\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Generic cpufreq driver\00", align 1
@BUS_PROBE_GENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cpufreq_dt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpufreq_dt_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @device_get_parent(i32 %5)
  %7 = call i32 @ofw_bus_get_node(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @OF_hasprop(i32 %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @OF_hasprop(i32 %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @OF_hasprop(i32 %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15, %1
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %35

21:                                               ; preds = %15, %11
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @OF_hasprop(i32 %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @OF_hasprop(i32 %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %2, align 4
  br label %35

31:                                               ; preds = %25, %21
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @device_set_desc(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %34 = load i32, i32* @BUS_PROBE_GENERIC, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %31, %29, %19
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @OF_hasprop(i32, i8*) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
