; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/plasma/extr_fp16.c_fp16_cos.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/plasma/extr_fp16.c_fp16_cos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FP16_2PI = common dso_local global i32 0, align 4
@fp16_sin_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fp16_cos(i32 %0) #0 {
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
    i32 1, label %21
    i32 2, label %29
    i32 3, label %38
  ]

13:                                               ; preds = %1
  %14 = load i32*, i32** @fp16_sin_table, align 8
  %15 = load i32, i32* %4, align 4
  %16 = urem i32 %15, 256
  %17 = sub i32 255, %16
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %14, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %2, align 4
  br label %46

21:                                               ; preds = %1
  %22 = load i32*, i32** @fp16_sin_table, align 8
  %23 = load i32, i32* %4, align 4
  %24 = urem i32 %23, 256
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %46

29:                                               ; preds = %1
  %30 = load i32*, i32** @fp16_sin_table, align 8
  %31 = load i32, i32* %4, align 4
  %32 = urem i32 %31, 256
  %33 = sub i32 255, %32
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %46

38:                                               ; preds = %1
  %39 = load i32*, i32** @fp16_sin_table, align 8
  %40 = load i32, i32* %4, align 4
  %41 = urem i32 %40, 256
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %2, align 4
  br label %46

45:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %38, %29, %21, %13
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
