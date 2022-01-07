; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_hd.c_should_backoff.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_hd.c_should_backoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@V_hd_qthresh = common dso_local global i32 0, align 4
@RANDOM_MAX = common dso_local global i32 0, align 4
@V_hd_pmax = common dso_local global i32 0, align 4
@V_hd_qmin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @should_backoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_backoff(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @V_hd_qthresh, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load i32, i32* @RANDOM_MAX, align 4
  %11 = sdiv i32 %10, 100
  %12 = load i32, i32* @V_hd_pmax, align 4
  %13 = mul nsw i32 %11, %12
  %14 = load i32, i32* @V_hd_qthresh, align 4
  %15 = load i32, i32* @V_hd_qmin, align 4
  %16 = sub nsw i32 %14, %15
  %17 = sdiv i32 %13, %16
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @V_hd_qmin, align 4
  %20 = sub nsw i32 %18, %19
  %21 = mul nsw i32 %17, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %5, align 8
  br label %48

23:                                               ; preds = %2
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @V_hd_qthresh, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load i32, i32* @RANDOM_MAX, align 4
  %29 = sdiv i32 %28, 100
  %30 = load i32, i32* @V_hd_pmax, align 4
  %31 = mul nsw i32 %29, %30
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @V_hd_qthresh, align 4
  %34 = sub nsw i32 %32, %33
  %35 = sdiv i32 %31, %34
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %3, align 4
  %38 = sub nsw i32 %36, %37
  %39 = mul nsw i32 %35, %38
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %5, align 8
  br label %47

41:                                               ; preds = %23
  %42 = load i32, i32* @RANDOM_MAX, align 4
  %43 = sdiv i32 %42, 100
  %44 = load i32, i32* @V_hd_pmax, align 4
  %45 = mul nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %5, align 8
  br label %47

47:                                               ; preds = %41, %27
  br label %48

48:                                               ; preds = %47, %9
  %49 = call i64 (...) @random()
  %50 = load i64, i64* %5, align 8
  %51 = icmp ult i64 %49, %50
  %52 = zext i1 %51 to i32
  ret i32 %52
}

declare dso_local i64 @random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
