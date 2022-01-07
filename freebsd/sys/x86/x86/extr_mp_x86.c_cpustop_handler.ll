; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mp_x86.c_cpustop_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mp_x86.c_cpustop_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.monitorbuf = type { i32 }

@cpuid = common dso_local global i32 0, align 4
@stoppcbs = common dso_local global i32* null, align 8
@stop_mwait = common dso_local global i64 0, align 8
@cpu_feature2 = common dso_local global i32 0, align 4
@CPUID2_MON = common dso_local global i32 0, align 4
@mwait_cpustop_broken = common dso_local global i32 0, align 4
@monitorbuf = common dso_local global i32 0, align 4
@MONITOR_STOPSTATE_STOPPED = common dso_local global i64 0, align 8
@stopped_cpus = common dso_local global i32 0, align 4
@started_cpus = common dso_local global i32 0, align 4
@MWAIT_C1 = common dso_local global i32 0, align 4
@panicstr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpustop_handler() #0 {
  %1 = alloca %struct.monitorbuf*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @cpuid, align 4
  %5 = call i64 @PCPU_GET(i32 %4)
  store i64 %5, i64* %2, align 8
  %6 = load i32*, i32** @stoppcbs, align 8
  %7 = load i64, i64* %2, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = call i32 @savectx(i32* %8) #3
  %10 = load i64, i64* @stop_mwait, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %0
  %13 = load i32, i32* @cpu_feature2, align 4
  %14 = load i32, i32* @CPUID2_MON, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* @mwait_cpustop_broken, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %17, %12, %0
  %22 = phi i1 [ false, %12 ], [ false, %0 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load i32, i32* @monitorbuf, align 4
  %28 = call %struct.monitorbuf* @PCPU_PTR(i32 %27)
  store %struct.monitorbuf* %28, %struct.monitorbuf** %1, align 8
  %29 = load %struct.monitorbuf*, %struct.monitorbuf** %1, align 8
  %30 = getelementptr inbounds %struct.monitorbuf, %struct.monitorbuf* %29, i32 0, i32 0
  %31 = load i64, i64* @MONITOR_STOPSTATE_STOPPED, align 8
  %32 = call i32 @atomic_store_int(i32* %30, i64 %31)
  br label %33

33:                                               ; preds = %26, %21
  %34 = load i64, i64* %2, align 8
  %35 = call i32 @CPU_SET_ATOMIC(i64 %34, i32* @stopped_cpus)
  br label %36

36:                                               ; preds = %71, %55, %33
  %37 = load i64, i64* %2, align 8
  %38 = call i32 @CPU_ISSET(i64 %37, i32* @started_cpus)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br i1 %40, label %41, label %72

41:                                               ; preds = %36
  %42 = load i32, i32* %3, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load %struct.monitorbuf*, %struct.monitorbuf** %1, align 8
  %46 = call i32 @cpu_monitor(%struct.monitorbuf* %45, i32 0, i32 0)
  %47 = load %struct.monitorbuf*, %struct.monitorbuf** %1, align 8
  %48 = getelementptr inbounds %struct.monitorbuf, %struct.monitorbuf* %47, i32 0, i32 0
  %49 = call i64 @atomic_load_int(i32* %48)
  %50 = load i64, i64* @MONITOR_STOPSTATE_STOPPED, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, i32* @MWAIT_C1, align 4
  %54 = call i32 @cpu_mwait(i32 0, i32 %53)
  br label %55

55:                                               ; preds = %52, %44
  br label %36

56:                                               ; preds = %41
  %57 = call i32 (...) @ia32_pause()
  br label %58

58:                                               ; preds = %69, %56
  %59 = call i32 (...) @IS_BSP()
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32*, i32** @panicstr, align 8
  %63 = icmp ne i32* %62, null
  br label %64

64:                                               ; preds = %61, %58
  %65 = phi i1 [ false, %58 ], [ %63, %61 ]
  %66 = zext i1 %65 to i32
  %67 = call i64 @__predict_false(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = call i32 (...) @halt()
  br label %58

71:                                               ; preds = %64
  br label %36

72:                                               ; preds = %36
  %73 = load i64, i64* %2, align 8
  %74 = call i32 @cpustop_handler_post(i64 %73)
  ret void
}

declare dso_local i64 @PCPU_GET(i32) #1

; Function Attrs: returns_twice
declare dso_local i32 @savectx(i32*) #2

declare dso_local %struct.monitorbuf* @PCPU_PTR(i32) #1

declare dso_local i32 @atomic_store_int(i32*, i64) #1

declare dso_local i32 @CPU_SET_ATOMIC(i64, i32*) #1

declare dso_local i32 @CPU_ISSET(i64, i32*) #1

declare dso_local i32 @cpu_monitor(%struct.monitorbuf*, i32, i32) #1

declare dso_local i64 @atomic_load_int(i32*) #1

declare dso_local i32 @cpu_mwait(i32, i32) #1

declare dso_local i32 @ia32_pause(...) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @IS_BSP(...) #1

declare dso_local i32 @halt(...) #1

declare dso_local i32 @cpustop_handler_post(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
