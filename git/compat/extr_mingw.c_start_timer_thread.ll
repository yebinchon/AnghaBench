; ModuleID = '/home/carl/AnghaBench/git/compat/extr_mingw.c_start_timer_thread.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_mingw.c_start_timer_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@timer_event = common dso_local global i64 0, align 8
@ticktack = common dso_local global i32 0, align 4
@timer_thread = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cannot start timer thread\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"cannot allocate resources for timer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @start_timer_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_timer_thread() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @FALSE, align 4
  %3 = load i32, i32* @FALSE, align 4
  %4 = call i64 @CreateEvent(i32* null, i32 %2, i32 %3, i32* null)
  store i64 %4, i64* @timer_event, align 8
  %5 = load i64, i64* @timer_event, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %0
  %8 = load i32, i32* @ticktack, align 4
  %9 = call i64 @_beginthreadex(i32* null, i32 0, i32 %8, i32* null, i32 0, i32* null)
  store i64 %9, i64* @timer_thread, align 8
  %10 = load i64, i64* @timer_thread, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load i32, i32* @ENOMEM, align 4
  store i32 %13, i32* @errno, align 4
  %14 = call i32 @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %1, align 4
  br label %20

15:                                               ; preds = %7
  br label %19

16:                                               ; preds = %0
  %17 = load i32, i32* @ENOMEM, align 4
  store i32 %17, i32* @errno, align 4
  %18 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 %18, i32* %1, align 4
  br label %20

19:                                               ; preds = %15
  store i32 0, i32* %1, align 4
  br label %20

20:                                               ; preds = %19, %16, %12
  %21 = load i32, i32* %1, align 4
  ret i32 %21
}

declare dso_local i64 @CreateEvent(i32*, i32, i32, i32*) #1

declare dso_local i64 @_beginthreadex(i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
