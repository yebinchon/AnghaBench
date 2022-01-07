; ModuleID = '/home/carl/AnghaBench/git/compat/extr_winansi.c_is_console.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_winansi.c_is_console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@is_console.initialized = internal global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@FILE_TYPE_CHAR = common dso_local global i64 0, align 8
@FD_CONSOLE = common dso_local global i32 0, align 4
@fd_is_interactive = common dso_local global i32* null, align 8
@console = common dso_local global i64 0, align 8
@plain_attr = common dso_local global i64 0, align 8
@attr = common dso_local global i64 0, align 8
@negative = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @is_console to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_console(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @_get_osfhandle(i32 %7)
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %57

13:                                               ; preds = %1
  %14 = load i64, i64* %6, align 8
  %15 = call i64 @GetFileType(i64 %14)
  %16 = load i64, i64* @FILE_TYPE_CHAR, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %57

19:                                               ; preds = %13
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @GetConsoleMode(i64 %23, i32* %5)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %57

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i64 0, i64* %28, align 8
  br label %35

29:                                               ; preds = %19
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @GetConsoleScreenBufferInfo(i64 %30, %struct.TYPE_3__* %4)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %57

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %27
  %36 = load i32, i32* %3, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load i32, i32* %3, align 4
  %40 = icmp sle i32 %39, 2
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load i32, i32* @FD_CONSOLE, align 4
  %43 = load i32*, i32** @fd_is_interactive, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %42
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %41, %38, %35
  %50 = load i32, i32* @is_console.initialized, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = load i64, i64* %6, align 8
  store i64 %53, i64* @console, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* @plain_attr, align 8
  store i64 %55, i64* @attr, align 8
  store i64 0, i64* @negative, align 8
  store i32 1, i32* @is_console.initialized, align 4
  br label %56

56:                                               ; preds = %52, %49
  store i32 1, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %33, %26, %18, %12
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @_get_osfhandle(i32) #1

declare dso_local i64 @GetFileType(i64) #1

declare dso_local i32 @GetConsoleMode(i64, i32*) #1

declare dso_local i32 @GetConsoleScreenBufferInfo(i64, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
