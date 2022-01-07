; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/plasma/extr_fp16.c_fp16_sqrt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/plasma/extr_fp16.c_fp16_sqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fp16_sqrt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %45

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @flsl(i32 %11)
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp sge i32 %14, 16
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sub nsw i32 %18, 16
  %20 = sdiv i32 %19, 2
  %21 = ashr i32 %17, %20
  store i32 %21, i32* %4, align 4
  br label %23

22:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %45

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %39, %23
  %25 = load i32, i32* %4, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @fp16_mul(i32 %28, i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @fp16_sub(i32 %30, i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = mul nsw i32 %33, 2
  %35 = call i32 @fp16_div(i32 %32, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %43

39:                                               ; preds = %27
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @fp16_sub(i32 %40, i32 %41)
  store i32 %42, i32* %4, align 4
  br label %24

43:                                               ; preds = %38, %24
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %22, %9
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @flsl(i32) #1

declare dso_local i32 @fp16_div(i32, i32) #1

declare dso_local i32 @fp16_sub(i32, i32) #1

declare dso_local i32 @fp16_mul(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
