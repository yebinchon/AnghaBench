; ModuleID = '/home/carl/AnghaBench/git/compat/extr_mingw.c_mingw_kill.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_mingw.c_mingw_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGTERM = common dso_local global i32 0, align 4
@PROCESS_TERMINATE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@PROCESS_QUERY_INFORMATION = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mingw_kill(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* %4, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SIGTERM, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %10
  %15 = load i32, i32* @PROCESS_TERMINATE, align 4
  %16 = load i32, i32* @FALSE, align 4
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @OpenProcess(i32 %15, i32 %16, i64 %17)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @TerminateProcess(i64 %19, i32 -1)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @CloseHandle(i64 %23)
  store i32 0, i32* %3, align 4
  br label %50

25:                                               ; preds = %14
  %26 = call i32 (...) @GetLastError()
  %27 = call i32 @err_win_to_posix(i32 %26)
  store i32 %27, i32* @errno, align 4
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @CloseHandle(i64 %28)
  store i32 -1, i32* %3, align 4
  br label %50

30:                                               ; preds = %10, %2
  %31 = load i64, i64* %4, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load i32, i32* @PROCESS_QUERY_INFORMATION, align 4
  %38 = load i32, i32* @FALSE, align 4
  %39 = load i64, i64* %4, align 8
  %40 = call i64 @OpenProcess(i32 %37, i32 %38, i64 %39)
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @CloseHandle(i64 %44)
  store i32 0, i32* %3, align 4
  br label %50

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %33, %30
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %43, %25, %22
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @OpenProcess(i32, i32, i64) #1

declare dso_local i64 @TerminateProcess(i64, i32) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @err_win_to_posix(i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
