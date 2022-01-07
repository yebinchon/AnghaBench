; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_clocksource.c_getnextcpuevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_clocksource.c_getnextcpuevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu_state = type { i64, i64, i64, i64 }

@timerstate = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@tc_min_ticktock_freq = common dso_local global i32 0, align 4
@tick_sbt = common dso_local global i32 0, align 4
@profiling = common dso_local global i64 0, align 8
@curcpu = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @getnextcpuevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @getnextcpuevent(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.pcpu_state*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @timerstate, align 4
  %7 = call %struct.pcpu_state* @DPCPU_PTR(i32 %6)
  store %struct.pcpu_state* %7, %struct.pcpu_state** %4, align 8
  %8 = load %struct.pcpu_state*, %struct.pcpu_state** %4, align 8
  %9 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %3, align 8
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %1
  %14 = load i32, i32* @hz, align 4
  %15 = sdiv i32 %14, 2
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @tc_min_ticktock_freq, align 4
  %17 = icmp sgt i32 %16, 2
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i32, i32* @hz, align 4
  %20 = load i32, i32* @tc_min_ticktock_freq, align 4
  %21 = sdiv i32 %19, %20
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %18, %13
  %23 = load i32, i32* %5, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i32, i32* @tick_sbt, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 %27, 1
  %29 = mul nsw i32 %26, %28
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %3, align 8
  %32 = add nsw i64 %31, %30
  store i64 %32, i64* %3, align 8
  br label %33

33:                                               ; preds = %25, %22
  br label %34

34:                                               ; preds = %33, %1
  %35 = load i64, i64* %3, align 8
  %36 = load %struct.pcpu_state*, %struct.pcpu_state** %4, align 8
  %37 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %35, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.pcpu_state*, %struct.pcpu_state** %4, align 8
  %42 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %3, align 8
  br label %44

44:                                               ; preds = %40, %34
  %45 = load i32, i32* %2, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %71, label %47

47:                                               ; preds = %44
  %48 = load i64, i64* %3, align 8
  %49 = load %struct.pcpu_state*, %struct.pcpu_state** %4, align 8
  %50 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %48, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.pcpu_state*, %struct.pcpu_state** %4, align 8
  %55 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %3, align 8
  br label %57

57:                                               ; preds = %53, %47
  %58 = load i64, i64* @profiling, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load i64, i64* %3, align 8
  %62 = load %struct.pcpu_state*, %struct.pcpu_state** %4, align 8
  %63 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %61, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.pcpu_state*, %struct.pcpu_state** %4, align 8
  %68 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %3, align 8
  br label %70

70:                                               ; preds = %66, %60, %57
  br label %71

71:                                               ; preds = %70, %44
  %72 = load i64, i64* %3, align 8
  ret i64 %72
}

declare dso_local %struct.pcpu_state* @DPCPU_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
