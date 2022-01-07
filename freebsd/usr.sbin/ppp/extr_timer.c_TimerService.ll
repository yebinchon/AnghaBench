; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_timer.c_TimerService.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_timer.c_TimerService.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pppTimer = type { i64, i32, i32 (i32)*, %struct.pppTimer*, %struct.pppTimer*, i32 }

@LogTIMER = common dso_local global i32 0, align 4
@TimerService.t = internal global i64 0, align 8
@TimerList = common dso_local global %struct.pppTimer* null, align 8
@TIMER_EXPIRED = common dso_local global i32 0, align 4
@ExpiredList = common dso_local global %struct.pppTimer* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @TimerService to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TimerService() #0 {
  %1 = alloca %struct.pppTimer*, align 8
  %2 = alloca %struct.pppTimer*, align 8
  %3 = alloca %struct.pppTimer*, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @LogTIMER, align 4
  %6 = call i64 @log_IsKept(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %0
  %9 = call i64 @time(i32* null)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @TimerService.t, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i32, i32* @LogTIMER, align 4
  %15 = call i32 @timer_Show(i32 %14, i32* null)
  br label %16

16:                                               ; preds = %13, %8
  %17 = load i64, i64* %4, align 8
  store i64 %17, i64* @TimerService.t, align 8
  br label %18

18:                                               ; preds = %16, %0
  %19 = load %struct.pppTimer*, %struct.pppTimer** @TimerList, align 8
  store %struct.pppTimer* %19, %struct.pppTimer** %1, align 8
  %20 = load %struct.pppTimer*, %struct.pppTimer** %1, align 8
  %21 = icmp ne %struct.pppTimer* %20, null
  br i1 %21, label %22, label %80

22:                                               ; preds = %18
  %23 = load %struct.pppTimer*, %struct.pppTimer** %1, align 8
  %24 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  store %struct.pppTimer* null, %struct.pppTimer** %2, align 8
  br label %25

25:                                               ; preds = %45, %22
  %26 = load i32, i32* @TIMER_EXPIRED, align 4
  %27 = load %struct.pppTimer*, %struct.pppTimer** %1, align 8
  %28 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 8
  %29 = load %struct.pppTimer*, %struct.pppTimer** %1, align 8
  %30 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %29, i32 0, i32 4
  %31 = load %struct.pppTimer*, %struct.pppTimer** %30, align 8
  store %struct.pppTimer* %31, %struct.pppTimer** %3, align 8
  %32 = load %struct.pppTimer*, %struct.pppTimer** %2, align 8
  %33 = load %struct.pppTimer*, %struct.pppTimer** %1, align 8
  %34 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %33, i32 0, i32 3
  store %struct.pppTimer* %32, %struct.pppTimer** %34, align 8
  %35 = load %struct.pppTimer*, %struct.pppTimer** %1, align 8
  store %struct.pppTimer* %35, %struct.pppTimer** %2, align 8
  %36 = load %struct.pppTimer*, %struct.pppTimer** %3, align 8
  store %struct.pppTimer* %36, %struct.pppTimer** %1, align 8
  br label %37

37:                                               ; preds = %25
  %38 = load %struct.pppTimer*, %struct.pppTimer** %1, align 8
  %39 = icmp ne %struct.pppTimer* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.pppTimer*, %struct.pppTimer** %1, align 8
  %42 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br label %45

45:                                               ; preds = %40, %37
  %46 = phi i1 [ false, %37 ], [ %44, %40 ]
  br i1 %46, label %25, label %47

47:                                               ; preds = %45
  %48 = load %struct.pppTimer*, %struct.pppTimer** %1, align 8
  store %struct.pppTimer* %48, %struct.pppTimer** @TimerList, align 8
  %49 = load %struct.pppTimer*, %struct.pppTimer** @TimerList, align 8
  %50 = icmp ne %struct.pppTimer* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = call i32 @timer_InitService(i32 1)
  br label %55

53:                                               ; preds = %47
  %54 = call i32 (...) @timer_TermService()
  br label %55

55:                                               ; preds = %53, %51
  br label %56

56:                                               ; preds = %77, %55
  %57 = load %struct.pppTimer*, %struct.pppTimer** %2, align 8
  %58 = icmp ne %struct.pppTimer* %57, null
  br i1 %58, label %59, label %79

59:                                               ; preds = %56
  %60 = load %struct.pppTimer*, %struct.pppTimer** %2, align 8
  %61 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %60, i32 0, i32 3
  %62 = load %struct.pppTimer*, %struct.pppTimer** %61, align 8
  store %struct.pppTimer* %62, %struct.pppTimer** @ExpiredList, align 8
  %63 = load %struct.pppTimer*, %struct.pppTimer** %2, align 8
  %64 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %63, i32 0, i32 3
  store %struct.pppTimer* null, %struct.pppTimer** %64, align 8
  %65 = load %struct.pppTimer*, %struct.pppTimer** %2, align 8
  %66 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %65, i32 0, i32 2
  %67 = load i32 (i32)*, i32 (i32)** %66, align 8
  %68 = icmp ne i32 (i32)* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %59
  %70 = load %struct.pppTimer*, %struct.pppTimer** %2, align 8
  %71 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %70, i32 0, i32 2
  %72 = load i32 (i32)*, i32 (i32)** %71, align 8
  %73 = load %struct.pppTimer*, %struct.pppTimer** %2, align 8
  %74 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 %72(i32 %75)
  br label %77

77:                                               ; preds = %69, %59
  %78 = load %struct.pppTimer*, %struct.pppTimer** @ExpiredList, align 8
  store %struct.pppTimer* %78, %struct.pppTimer** %2, align 8
  br label %56

79:                                               ; preds = %56
  br label %80

80:                                               ; preds = %79, %18
  ret void
}

declare dso_local i64 @log_IsKept(i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @timer_Show(i32, i32*) #1

declare dso_local i32 @timer_InitService(i32) #1

declare dso_local i32 @timer_TermService(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
