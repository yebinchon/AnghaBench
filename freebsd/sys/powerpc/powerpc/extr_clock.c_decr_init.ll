; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_clock.c_decr_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_clock.c_decr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuref = type { i32 }

@ticks_per_sec = common dso_local global i32 0, align 4
@ps_per_tick = common dso_local global i32 0, align 4
@mftb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"cpu%d:decrementer\00", align 1
@curcpu = common dso_local global i32 0, align 4
@decr_counts = common dso_local global i32* null, align 8
@initialized = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decr_init() #0 {
  %1 = alloca %struct.cpuref, align 4
  %2 = alloca [32 x i8], align 16
  %3 = call i64 @platform_smp_get_bsp(%struct.cpuref* %1)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @platform_smp_first_cpu(%struct.cpuref* %1)
  br label %7

7:                                                ; preds = %5, %0
  %8 = call i32 @platform_timebase_freq(%struct.cpuref* %1)
  store i32 %8, i32* @ticks_per_sec, align 4
  %9 = load i32, i32* @ticks_per_sec, align 4
  %10 = sext i32 %9 to i64
  %11 = sdiv i64 1000000000000, %10
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* @ps_per_tick, align 4
  %13 = load i32, i32* @mftb, align 4
  %14 = load i32, i32* @ticks_per_sec, align 4
  %15 = call i32 @set_cputicker(i32 %13, i32 %14, i32 0)
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %17 = load i32, i32* @curcpu, align 4
  %18 = call i32 @snprintf(i8* %16, i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %20 = load i32*, i32** @decr_counts, align 8
  %21 = load i32, i32* @curcpu, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @intrcnt_add(i8* %19, i32* %23)
  %25 = call i32 @decr_et_stop(i32* null)
  store i32 1, i32* @initialized, align 4
  ret void
}

declare dso_local i64 @platform_smp_get_bsp(%struct.cpuref*) #1

declare dso_local i32 @platform_smp_first_cpu(%struct.cpuref*) #1

declare dso_local i32 @platform_timebase_freq(%struct.cpuref*) #1

declare dso_local i32 @set_cputicker(i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @intrcnt_add(i8*, i32*) #1

declare dso_local i32 @decr_et_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
