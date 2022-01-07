; ModuleID = '/home/carl/AnghaBench/git/compat/extr_mingw.c_setitimer.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_mingw.c_setitimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.itimerval = type { %struct.timeval, %struct.timeval }

@setitimer.zero = internal constant %struct.timeval zeroinitializer, align 4
@setitimer.atexit_done = internal global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"setitimer param 3 != NULL not implemented\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"setitimer: it_interval must be zero or eq it_value\00", align 1
@timer_thread = common dso_local global i64 0, align 8
@timer_interval = common dso_local global i32 0, align 4
@one_shot = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setitimer(i32 %0, %struct.itimerval* %1, %struct.itimerval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.itimerval*, align 8
  %7 = alloca %struct.itimerval*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.itimerval* %1, %struct.itimerval** %6, align 8
  store %struct.itimerval* %2, %struct.itimerval** %7, align 8
  %8 = load %struct.itimerval*, %struct.itimerval** %7, align 8
  %9 = icmp ne %struct.itimerval* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32, i32* @EINVAL, align 4
  store i32 %11, i32* @errno, align 4
  %12 = call i32 @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %4, align 4
  br label %65

13:                                               ; preds = %3
  %14 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %15 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %14, i32 0, i32 0
  %16 = call i64 @is_timeval_eq(%struct.timeval* %15, %struct.timeval* @setitimer.zero)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %13
  %19 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %20 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %19, i32 0, i32 0
  %21 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %22 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %21, i32 0, i32 1
  %23 = call i64 @is_timeval_eq(%struct.timeval* %20, %struct.timeval* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* @errno, align 4
  %27 = call i32 @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  store i32 %27, i32* %4, align 4
  br label %65

28:                                               ; preds = %18, %13
  %29 = load i64, i64* @timer_thread, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 (...) @stop_timer_thread()
  br label %33

33:                                               ; preds = %31, %28
  %34 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %35 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %34, i32 0, i32 1
  %36 = call i64 @is_timeval_eq(%struct.timeval* %35, %struct.timeval* @setitimer.zero)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %40 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %39, i32 0, i32 0
  %41 = call i64 @is_timeval_eq(%struct.timeval* %40, %struct.timeval* @setitimer.zero)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %65

44:                                               ; preds = %38, %33
  %45 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %46 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %48, 1000
  %50 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %51 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.timeval, %struct.timeval* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sdiv i32 %53, 1000
  %55 = add nsw i32 %49, %54
  store i32 %55, i32* @timer_interval, align 4
  %56 = load %struct.itimerval*, %struct.itimerval** %6, align 8
  %57 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %56, i32 0, i32 0
  %58 = call i64 @is_timeval_eq(%struct.timeval* %57, %struct.timeval* @setitimer.zero)
  store i64 %58, i64* @one_shot, align 8
  %59 = load i32, i32* @setitimer.atexit_done, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %44
  %62 = call i32 @atexit(i32 (...)* @stop_timer_thread)
  store i32 1, i32* @setitimer.atexit_done, align 4
  br label %63

63:                                               ; preds = %61, %44
  %64 = call i32 (...) @start_timer_thread()
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %43, %25, %10
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @is_timeval_eq(%struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @stop_timer_thread(...) #1

declare dso_local i32 @atexit(i32 (...)*) #1

declare dso_local i32 @start_timer_thread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
