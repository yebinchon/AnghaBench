; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_bws_iterator_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_bws_iterator_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bws_iterator_cmp(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %10, align 8
  br label %11

11:                                               ; preds = %33, %3
  %12 = load i64, i64* %10, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @bws_get_iter_value(i32 %16)
  store i64 %17, i64* %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @bws_get_iter_value(i32 %18)
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = sub nsw i64 %24, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %4, align 4
  br label %37

28:                                               ; preds = %15
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @bws_iterator_inc(i32 %29, i32 1)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @bws_iterator_inc(i32 %31, i32 1)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %28
  %34 = load i64, i64* %10, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %10, align 8
  br label %11

36:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %23
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i64 @bws_get_iter_value(i32) #1

declare dso_local i32 @bws_iterator_inc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
