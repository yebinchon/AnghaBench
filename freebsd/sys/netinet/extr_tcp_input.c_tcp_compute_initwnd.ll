; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_input.c_tcp_compute_initwnd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_input.c_tcp_compute_initwnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@V_tcp_initcwnd_segments = common dso_local global i32 0, align 4
@V_tcp_do_rfc3390 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_compute_initwnd(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @V_tcp_initcwnd_segments, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = load i32, i32* @V_tcp_initcwnd_segments, align 4
  %8 = load i32, i32* %3, align 4
  %9 = mul nsw i32 %7, %8
  %10 = load i32, i32* %3, align 4
  %11 = mul nsw i32 2, %10
  %12 = load i32, i32* @V_tcp_initcwnd_segments, align 4
  %13 = mul nsw i32 %12, 1460
  %14 = call i32 @max(i32 %11, i32 %13)
  %15 = call i32 @min(i32 %9, i32 %14)
  store i32 %15, i32* %2, align 4
  br label %41

16:                                               ; preds = %1
  %17 = load i64, i64* @V_tcp_do_rfc3390, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = mul nsw i32 4, %20
  %22 = load i32, i32* %3, align 4
  %23 = mul nsw i32 2, %22
  %24 = call i32 @max(i32 %23, i32 4380)
  %25 = call i32 @min(i32 %21, i32 %24)
  store i32 %25, i32* %2, align 4
  br label %41

26:                                               ; preds = %16
  %27 = load i32, i32* %3, align 4
  %28 = icmp sgt i32 %27, 2190
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4
  %31 = mul nsw i32 2, %30
  store i32 %31, i32* %2, align 4
  br label %41

32:                                               ; preds = %26
  %33 = load i32, i32* %3, align 4
  %34 = icmp sgt i32 %33, 1095
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %3, align 4
  %37 = mul nsw i32 3, %36
  store i32 %37, i32* %2, align 4
  br label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %3, align 4
  %40 = mul nsw i32 4, %39
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %35, %29, %19, %6
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
