; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_main.c_lastline.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_main.c_lastline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@infile = common dso_local global i32 0, align 4
@inplace = common dso_local global i32* null, align 8
@ispan = common dso_local global i64 0, align 8
@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lastline() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @infile, align 4
  %4 = call i64 @feof(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %0
  %7 = load i32*, i32** @inplace, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = load i64, i64* @ispan, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9, %6
  %13 = call i64 (...) @next_files_have_lines()
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %12, %9
  %16 = phi i1 [ false, %9 ], [ %14, %12 ]
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %1, align 4
  br label %41

19:                                               ; preds = %0
  %20 = load i32, i32* @infile, align 4
  %21 = call i32 @getc(i32 %20)
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* @EOF, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load i32*, i32** @inplace, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* @ispan, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27, %24
  %31 = call i64 (...) @next_files_have_lines()
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi i1 [ false, %27 ], [ %32, %30 ]
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %1, align 4
  br label %41

37:                                               ; preds = %19
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @infile, align 4
  %40 = call i32 @ungetc(i32 %38, i32 %39)
  store i32 0, i32* %1, align 4
  br label %41

41:                                               ; preds = %37, %33, %15
  %42 = load i32, i32* %1, align 4
  ret i32 %42
}

declare dso_local i64 @feof(i32) #1

declare dso_local i64 @next_files_have_lines(...) #1

declare dso_local i32 @getc(i32) #1

declare dso_local i32 @ungetc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
