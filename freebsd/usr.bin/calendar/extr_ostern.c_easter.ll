; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_ostern.c_easter.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_ostern.c_easter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @easter(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = srem i32 %10, 19
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = sdiv i32 %12, 100
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sdiv i32 %15, 4
  %17 = sub nsw i32 %14, %16
  %18 = load i32, i32* %5, align 4
  %19 = mul nsw i32 8, %18
  %20 = add nsw i32 %19, 13
  %21 = sdiv i32 %20, 25
  %22 = sub nsw i32 %17, %21
  %23 = load i32, i32* %4, align 4
  %24 = mul nsw i32 19, %23
  %25 = add nsw i32 %22, %24
  %26 = add nsw i32 %25, 15
  %27 = srem i32 %26, 30
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = sdiv i32 %29, 28
  %31 = load i32, i32* %6, align 4
  %32 = sdiv i32 %31, 28
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  %35 = sdiv i32 29, %34
  %36 = mul nsw i32 %32, %35
  %37 = load i32, i32* %4, align 4
  %38 = sub nsw i32 21, %37
  %39 = sdiv i32 %38, 11
  %40 = mul nsw i32 %36, %39
  %41 = sub nsw i32 1, %40
  %42 = mul nsw i32 %30, %41
  %43 = sub nsw i32 %28, %42
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = sdiv i32 %45, 4
  %47 = add nsw i32 %44, %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %47, %48
  %50 = add nsw i32 %49, 2
  %51 = load i32, i32* %5, align 4
  %52 = sub nsw i32 %50, %51
  %53 = load i32, i32* %5, align 4
  %54 = sdiv i32 %53, 4
  %55 = add nsw i32 %52, %54
  %56 = srem i32 %55, 7
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = sub nsw i32 %57, %58
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %3, align 4
  %61 = call i64 @isleap(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %1
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 81, %64
  %66 = add nsw i32 %65, 7
  store i32 %66, i32* %2, align 4
  br label %71

67:                                               ; preds = %1
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 80, %68
  %70 = add nsw i32 %69, 7
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %67, %63
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i64 @isleap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
