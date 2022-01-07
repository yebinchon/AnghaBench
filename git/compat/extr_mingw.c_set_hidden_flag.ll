; ModuleID = '/home/carl/AnghaBench/git/compat/extr_mingw.c_set_hidden_flag.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_mingw.c_set_hidden_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FILE_ATTRIBUTE_HIDDEN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @set_hidden_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_hidden_flag(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @GetFileAttributesW(i32* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @FILE_ATTRIBUTE_HIDDEN, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %7, align 4
  br label %21

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @FILE_ATTRIBUTE_HIDDEN, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %16, %12
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @SetFileAttributesW(i32* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %21
  store i32 0, i32* %3, align 4
  br label %34

31:                                               ; preds = %25
  %32 = call i32 (...) @GetLastError()
  %33 = call i32 @err_win_to_posix(i32 %32)
  store i32 %33, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %30
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @GetFileAttributesW(i32*) #1

declare dso_local i64 @SetFileAttributesW(i32*, i32) #1

declare dso_local i32 @err_win_to_posix(i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
