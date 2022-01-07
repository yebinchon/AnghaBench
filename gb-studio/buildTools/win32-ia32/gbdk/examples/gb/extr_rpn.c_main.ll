; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/win32-ia32/gbdk/examples/gb/extr_rpn.c_main.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/win32-ia32/gbdk/examples/gb/extr_rpn.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"RPN Calculator\00", align 1
@sp = common dso_local global i64 0, align 8
@pos = common dso_local global i64 0, align 8
@s = common dso_local global i32 0, align 4
@n = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"Divide by 0\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"==> %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* @sp, align 8
  store i64 0, i64* @pos, align 8
  br label %4

4:                                                ; preds = %44, %0
  %5 = load i32, i32* @s, align 4
  %6 = call i32 @read_op(i32 %5)
  store i32 %6, i32* %1, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %45

8:                                                ; preds = %4
  %9 = load i32, i32* %1, align 4
  switch i32 %9, label %44 [
    i32 128, label %10
    i32 43, label %13
    i32 42, label %18
    i32 45, label %23
    i32 47, label %29
    i32 10, label %41
  ]

10:                                               ; preds = %8
  %11 = load i32, i32* @n, align 4
  %12 = call i32 @push(i32 %11)
  br label %44

13:                                               ; preds = %8
  %14 = call i32 (...) @pop()
  %15 = call i32 (...) @pop()
  %16 = add nsw i32 %14, %15
  %17 = call i32 @push(i32 %16)
  br label %44

18:                                               ; preds = %8
  %19 = call i32 (...) @pop()
  %20 = call i32 (...) @pop()
  %21 = mul nsw i32 %19, %20
  %22 = call i32 @push(i32 %21)
  br label %44

23:                                               ; preds = %8
  %24 = call i32 (...) @pop()
  store i32 %24, i32* %2, align 4
  %25 = call i32 (...) @pop()
  %26 = load i32, i32* %2, align 4
  %27 = sub nsw i32 %25, %26
  %28 = call i32 @push(i32 %27)
  br label %44

29:                                               ; preds = %8
  %30 = call i32 (...) @pop()
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* %2, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = call i32 (...) @pop()
  %35 = load i32, i32* %2, align 4
  %36 = sdiv i32 %34, %35
  %37 = call i32 @push(i32 %36)
  br label %40

38:                                               ; preds = %29
  %39 = call i32 @puts(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %33
  br label %44

41:                                               ; preds = %8
  %42 = call i32 (...) @top()
  %43 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %8, %41, %40, %23, %18, %13, %10
  br label %4

45:                                               ; preds = %4
  ret void
}

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @read_op(i32) #1

declare dso_local i32 @push(i32) #1

declare dso_local i32 @pop(...) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @top(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
