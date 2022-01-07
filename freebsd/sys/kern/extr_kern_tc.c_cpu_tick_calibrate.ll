; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_tc.c_cpu_tick_calibrate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_tc.c_cpu_tick_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bintime = type { i64, i32 }

@cpu_tick_calibrate.c_last = internal global i32 0, align 4
@cpu_tick_calibrate.t_last = internal global %struct.bintime zeroinitializer, align 8
@cpu_tick_variable = common dso_local global i32 0, align 4
@cpu_tick_frequency = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @cpu_tick_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_tick_calibrate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.bintime, align 8
  %6 = alloca %struct.bintime, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i64 0, i64* getelementptr inbounds (%struct.bintime, %struct.bintime* @cpu_tick_calibrate.t_last, i32 0, i32 0), align 8
  br label %50

11:                                               ; preds = %1
  %12 = load i32, i32* @cpu_tick_variable, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  br label %50

15:                                               ; preds = %11
  %16 = call i32 @getbinuptime(%struct.bintime* %5)
  %17 = call i32 (...) @cpu_ticks()
  store i32 %17, i32* %3, align 4
  %18 = load i64, i64* getelementptr inbounds (%struct.bintime, %struct.bintime* @cpu_tick_calibrate.t_last, i32 0, i32 0), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %15
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @cpu_tick_calibrate.c_last, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* %4, align 4
  %24 = bitcast %struct.bintime* %6 to i8*
  %25 = bitcast %struct.bintime* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 16, i1 false)
  %26 = call i32 @bintime_sub(%struct.bintime* %6, %struct.bintime* @cpu_tick_calibrate.t_last)
  %27 = getelementptr inbounds %struct.bintime, %struct.bintime* %6, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = shl i64 %28, 20
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = getelementptr inbounds %struct.bintime, %struct.bintime* %6, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = ashr i32 %32, 44
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %4, align 4
  %37 = shl i32 %36, 20
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %4, align 4
  %40 = sdiv i32 %39, %38
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @cpu_tick_frequency, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %20
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* @cpu_tick_frequency, align 4
  br label %46

46:                                               ; preds = %44, %20
  br label %47

47:                                               ; preds = %46, %15
  %48 = load i32, i32* %3, align 4
  store i32 %48, i32* @cpu_tick_calibrate.c_last, align 4
  %49 = bitcast %struct.bintime* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.bintime* @cpu_tick_calibrate.t_last to i8*), i8* align 8 %49, i64 16, i1 false)
  br label %50

50:                                               ; preds = %47, %14, %10
  ret void
}

declare dso_local i32 @getbinuptime(%struct.bintime*) #1

declare dso_local i32 @cpu_ticks(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bintime_sub(%struct.bintime*, %struct.bintime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
