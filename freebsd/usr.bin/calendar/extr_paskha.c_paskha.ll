; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_paskha.c_paskha.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_paskha.c_paskha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@paskha.x = internal global i32 15, align 4
@paskha.y = internal global i32 6, align 4
@cumdaytab = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @paskha(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = srem i32 %9, 19
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %2, align 4
  %12 = srem i32 %11, 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %2, align 4
  %14 = srem i32 %13, 7
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %3, align 4
  %16 = mul nsw i32 19, %15
  %17 = load i32, i32* @paskha.x, align 4
  %18 = add nsw i32 %16, %17
  %19 = srem i32 %18, 30
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = mul nsw i32 2, %20
  %22 = load i32, i32* %5, align 4
  %23 = mul nsw i32 4, %22
  %24 = add nsw i32 %21, %23
  %25 = load i32, i32* %6, align 4
  %26 = mul nsw i32 6, %25
  %27 = add nsw i32 %24, %26
  %28 = load i32, i32* @paskha.y, align 4
  %29 = add nsw i32 %27, %28
  %30 = srem i32 %29, 7
  store i32 %30, i32* %7, align 4
  %31 = load i32**, i32*** @cumdaytab, align 8
  %32 = load i32, i32* %2, align 4
  %33 = call i64 @isleap(i32 %32)
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %8, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  %40 = add nsw i32 %39, 22
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %41, %42
  %44 = add nsw i32 %40, %43
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @j2g(i32 %45)
  %47 = add nsw i32 %44, %46
  ret i32 %47
}

declare dso_local i64 @isleap(i32) #1

declare dso_local i32 @j2g(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
