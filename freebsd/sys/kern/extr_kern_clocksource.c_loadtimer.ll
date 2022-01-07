; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_clocksource.c_loadtimer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_clocksource.c_loadtimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.pcpu_state = type { i32 }

@timer = common dso_local global %struct.TYPE_3__* null, align 8
@ET_FLAGS_PERCPU = common dso_local global i32 0, align 4
@timerstate = common dso_local global i32 0, align 4
@nexttick = common dso_local global i32 0, align 4
@periodic = common dso_local global i64 0, align 8
@timerperiod = common dso_local global i32 0, align 4
@KTR_SPARE2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"load p at %d:   now %d.%08x first in %d.%08x\00", align 1
@curcpu = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"load at %d:    next %d.%08x eq %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @loadtimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loadtimer(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcpu_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @timer, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ET_FLAGS_PERCPU, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i32, i32* @timerstate, align 4
  %18 = call %struct.pcpu_state* @DPCPU_PTR(i32 %17)
  store %struct.pcpu_state* %18, %struct.pcpu_state** %5, align 8
  %19 = load %struct.pcpu_state*, %struct.pcpu_state** %5, align 8
  %20 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %19, i32 0, i32 0
  store i32* %20, i32** %7, align 8
  br label %22

21:                                               ; preds = %2
  store i32* @nexttick, i32** %7, align 8
  br label %22

22:                                               ; preds = %21, %16
  %23 = load i64, i64* @periodic, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %61

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %60

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @timerperiod, align 4
  %31 = srem i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @timerperiod, align 4
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 %32, %33
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = load i32, i32* @timerperiod, align 4
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %38, %28
  %43 = load i32, i32* @KTR_SPARE2, align 4
  %44 = load i32, i32* @curcpu, align 4
  %45 = load i32, i32* %3, align 4
  %46 = ashr i32 %45, 32
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %6, align 4
  %49 = ashr i32 %48, 32
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @CTR5(i32 %43, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %46, i32 %47, i32 %49, i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32*, i32** %7, align 8
  store i32 %54, i32* %55, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @timer, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @timerperiod, align 4
  %59 = call i32 @et_start(%struct.TYPE_3__* %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %42, %25
  br label %86

61:                                               ; preds = %22
  %62 = call i32 (...) @getnextevent()
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %63, %65
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* @KTR_SPARE2, align 4
  %69 = load i32, i32* @curcpu, align 4
  %70 = load i32, i32* %6, align 4
  %71 = ashr i32 %70, 32
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @CTR4(i32 %68, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %61
  %78 = load i32, i32* %6, align 4
  %79 = load i32*, i32** %7, align 8
  store i32 %78, i32* %79, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** @timer, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %3, align 4
  %83 = sub nsw i32 %81, %82
  %84 = call i32 @et_start(%struct.TYPE_3__* %80, i32 %83, i32 0)
  br label %85

85:                                               ; preds = %77, %61
  br label %86

86:                                               ; preds = %85, %60
  ret void
}

declare dso_local %struct.pcpu_state* @DPCPU_PTR(i32) #1

declare dso_local i32 @CTR5(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @et_start(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @getnextevent(...) #1

declare dso_local i32 @CTR4(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
