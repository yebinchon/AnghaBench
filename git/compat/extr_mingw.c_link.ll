; ModuleID = '/home/carl/AnghaBench/git/compat/extr_mingw.c_link.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_mingw.c_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @link(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @xutftowcs_path(i32* %13, i8* %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @xutftowcs_path(i32* %16, i8* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %32

25:                                               ; preds = %20
  %26 = call i32 @CreateHardLinkW(i32* %16, i32* %13, i32* null)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = call i32 (...) @GetLastError()
  %30 = call i32 @err_win_to_posix(i32 %29)
  store i32 %30, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %32

31:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %32

32:                                               ; preds = %31, %28, %24
  %33 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %33)
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @xutftowcs_path(i32*, i8*) #2

declare dso_local i32 @CreateHardLinkW(i32*, i32*, i32*) #2

declare dso_local i32 @err_win_to_posix(i32) #2

declare dso_local i32 @GetLastError(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
