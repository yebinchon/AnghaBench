; ModuleID = '/home/carl/AnghaBench/git/compat/extr_mingw.c_mingw_open_append.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_mingw.c_mingw_open_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_CREAT = common dso_local global i32 0, align 4
@OPEN_ALWAYS = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@FILE_APPEND_DATA = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@O_BINARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, ...)* @mingw_open_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mingw_open_append(i32* %0, i32 %1, ...) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @O_CREAT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @OPEN_ALWAYS, align 4
  br label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @OPEN_EXISTING, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @O_CREAT, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = load i32, i32* @O_WRONLY, align 4
  %24 = load i32, i32* @O_APPEND, align 4
  %25 = or i32 %23, %24
  %26 = icmp ne i32 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* @ENOSYS, align 4
  store i32 %28, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %55

29:                                               ; preds = %17
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @FILE_APPEND_DATA, align 4
  %32 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %33 = load i32, i32* @FILE_SHARE_READ, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %37 = call i64 @CreateFileW(i32* %30, i32 %31, i32 %34, i32* null, i32 %35, i32 %36, i32* null)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = call i32 (...) @GetLastError()
  %43 = call i32 @err_win_to_posix(i32 %42)
  store i32 %43, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %55

44:                                               ; preds = %29
  %45 = load i64, i64* %6, align 8
  %46 = load i32, i32* @O_BINARY, align 4
  %47 = call i32 @_open_osfhandle(i64 %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @CloseHandle(i64 %51)
  br label %53

53:                                               ; preds = %50, %44
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %41, %27
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @CreateFileW(i32*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @err_win_to_posix(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @_open_osfhandle(i64, i32) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
