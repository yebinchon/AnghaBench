; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_min_mtu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_min_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sctp_min_mtu(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %3
  %11 = load i64, i64* %6, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load i64, i64* %7, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i64 @min(i64 %18, i64 %19)
  %21 = call i64 @min(i64 %17, i64 %20)
  store i64 %21, i64* %4, align 8
  br label %49

22:                                               ; preds = %13
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @min(i64 %23, i64 %24)
  store i64 %25, i64* %4, align 8
  br label %49

26:                                               ; preds = %10
  %27 = load i64, i64* %7, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @min(i64 %30, i64 %31)
  store i64 %32, i64* %4, align 8
  br label %49

33:                                               ; preds = %26
  %34 = load i64, i64* %5, align 8
  store i64 %34, i64* %4, align 8
  br label %49

35:                                               ; preds = %3
  %36 = load i64, i64* %6, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load i64, i64* %7, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i64 @min(i64 %42, i64 %43)
  store i64 %44, i64* %4, align 8
  br label %49

45:                                               ; preds = %38
  %46 = load i64, i64* %6, align 8
  store i64 %46, i64* %4, align 8
  br label %49

47:                                               ; preds = %35
  %48 = load i64, i64* %7, align 8
  store i64 %48, i64* %4, align 8
  br label %49

49:                                               ; preds = %47, %45, %41, %33, %29, %22, %16
  %50 = load i64, i64* %4, align 8
  ret i64 %50
}

declare dso_local i64 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
