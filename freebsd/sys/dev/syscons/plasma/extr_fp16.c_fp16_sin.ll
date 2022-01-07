; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/plasma/extr_fp16.c_fp16_sin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/plasma/extr_fp16.c_fp16_sin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FP16_2PI = common dso_local global i32 0, align 4
@fp16_sin_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fp16_sin(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @FP16_2PI, align 4
  %7 = srem i32 %5, %6
  %8 = mul nsw i32 1024, %7
  %9 = load i32, i32* @FP16_2PI, align 4
  %10 = sdiv i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = udiv i32 %11, 256
  switch i32 %12, label %45 [
    i32 0, label %13
    i32 1, label %20
    i32 2, label %28
    i32 3, label %36
  ]

13:                                               ; preds = %1
  %14 = load i32*, i32** @fp16_sin_table, align 8
  %15 = load i32, i32* %4, align 4
  %16 = urem i32 %15, 256
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %2, align 4
  br label %46

20:                                               ; preds = %1
  %21 = load i32*, i32** @fp16_sin_table, align 8
  %22 = load i32, i32* %4, align 4
  %23 = urem i32 %22, 256
  %24 = sub i32 255, %23
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %21, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %2, align 4
  br label %46

28:                                               ; preds = %1
  %29 = load i32*, i32** @fp16_sin_table, align 8
  %30 = load i32, i32* %4, align 4
  %31 = urem i32 %30, 256
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %46

36:                                               ; preds = %1
  %37 = load i32*, i32** @fp16_sin_table, align 8
  %38 = load i32, i32* %4, align 4
  %39 = urem i32 %38, 256
  %40 = sub i32 255, %39
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %46

45:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %36, %28, %20, %13
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
