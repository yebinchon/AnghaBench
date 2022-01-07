; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/examples/gb/extr_rpn.c_main.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/examples/gb/extr_rpn.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"RPN Calculator\00", align 1
@sp = common dso_local global i64 0, align 8
@pos = common dso_local global i64 0, align 8
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

4:                                                ; preds = %43, %0
  %5 = call i32 (...) @read_op()
  store i32 %5, i32* %1, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %44

7:                                                ; preds = %4
  %8 = load i32, i32* %1, align 4
  switch i32 %8, label %43 [
    i32 128, label %9
    i32 43, label %12
    i32 42, label %17
    i32 45, label %22
    i32 47, label %28
    i32 10, label %40
  ]

9:                                                ; preds = %7
  %10 = load i32, i32* @n, align 4
  %11 = call i32 @push(i32 %10)
  br label %43

12:                                               ; preds = %7
  %13 = call i32 (...) @pop()
  %14 = call i32 (...) @pop()
  %15 = add nsw i32 %13, %14
  %16 = call i32 @push(i32 %15)
  br label %43

17:                                               ; preds = %7
  %18 = call i32 (...) @pop()
  %19 = call i32 (...) @pop()
  %20 = mul nsw i32 %18, %19
  %21 = call i32 @push(i32 %20)
  br label %43

22:                                               ; preds = %7
  %23 = call i32 (...) @pop()
  store i32 %23, i32* %2, align 4
  %24 = call i32 (...) @pop()
  %25 = load i32, i32* %2, align 4
  %26 = sub nsw i32 %24, %25
  %27 = call i32 @push(i32 %26)
  br label %43

28:                                               ; preds = %7
  %29 = call i32 (...) @pop()
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* %2, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = call i32 (...) @pop()
  %34 = load i32, i32* %2, align 4
  %35 = sdiv i32 %33, %34
  %36 = call i32 @push(i32 %35)
  br label %39

37:                                               ; preds = %28
  %38 = call i32 @puts(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %32
  br label %43

40:                                               ; preds = %7
  %41 = call i32 (...) @top()
  %42 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %7, %40, %39, %22, %17, %12, %9
  br label %4

44:                                               ; preds = %4
  ret void
}

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @read_op(...) #1

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
