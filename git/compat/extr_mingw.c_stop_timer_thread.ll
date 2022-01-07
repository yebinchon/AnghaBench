; ModuleID = '/home/carl/AnghaBench/git/compat/extr_mingw.c_stop_timer_thread.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_mingw.c_stop_timer_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@timer_event = common dso_local global i32* null, align 8
@timer_thread = common dso_local global i32* null, align 8
@WAIT_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"timer thread did not terminate timely\00", align 1
@WAIT_OBJECT_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"waiting for timer thread failed: %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @stop_timer_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_timer_thread() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @timer_event, align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32*, i32** @timer_event, align 8
  %6 = call i32 @SetEvent(i32* %5)
  br label %7

7:                                                ; preds = %4, %0
  %8 = load i32*, i32** @timer_thread, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %29

10:                                               ; preds = %7
  %11 = load i32*, i32** @timer_thread, align 8
  %12 = call i32 @WaitForSingleObject(i32* %11, i32 10000)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @WAIT_TIMEOUT, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %26

18:                                               ; preds = %10
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @WAIT_OBJECT_0, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = call i32 (...) @GetLastError()
  %24 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %22, %18
  br label %26

26:                                               ; preds = %25, %16
  %27 = load i32*, i32** @timer_thread, align 8
  %28 = call i32 @CloseHandle(i32* %27)
  br label %29

29:                                               ; preds = %26, %7
  %30 = load i32*, i32** @timer_event, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32*, i32** @timer_event, align 8
  %34 = call i32 @CloseHandle(i32* %33)
  br label %35

35:                                               ; preds = %32, %29
  store i32* null, i32** @timer_event, align 8
  store i32* null, i32** @timer_thread, align 8
  ret void
}

declare dso_local i32 @SetEvent(i32*) #1

declare dso_local i32 @WaitForSingleObject(i32*, i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @CloseHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
