; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_cdg.c_prob_backoff.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_cdg.c_prob_backoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXGRAD = common dso_local global i64 0, align 8
@V_cdg_exp_backoff_scale = common dso_local global i64 0, align 8
@D_P_E = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i32 0, align 4
@EXP_PREC = common dso_local global i32 0, align 4
@probexp = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @prob_backoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prob_backoff(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* @MAXGRAD, align 8
  %8 = load i64, i64* @V_cdg_exp_backoff_scale, align 8
  %9 = mul nsw i64 %7, %8
  %10 = load i64, i64* @D_P_E, align 8
  %11 = shl i64 %9, %10
  %12 = icmp sgt i64 %6, %11
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %45, label %16

16:                                               ; preds = %1
  %17 = load i64, i64* @V_cdg_exp_backoff_scale, align 8
  %18 = icmp sgt i64 %17, 1
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load i64, i64* %2, align 8
  %21 = load i64, i64* @V_cdg_exp_backoff_scale, align 8
  %22 = sdiv i64 %21, 2
  %23 = add nsw i64 %20, %22
  %24 = load i64, i64* @V_cdg_exp_backoff_scale, align 8
  %25 = sdiv i64 %23, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %4, align 4
  br label %30

27:                                               ; preds = %16
  %28 = load i64, i64* %2, align 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %27, %19
  %31 = load i32, i32* @INT_MAX, align 4
  %32 = load i32, i32* @EXP_PREC, align 4
  %33 = shl i32 1, %32
  %34 = sdiv i32 %31, %33
  %35 = load i32*, i32** @probexp, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %34, %39
  store i32 %40, i32* %5, align 4
  %41 = call i32 (...) @random()
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %41, %42
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %30, %1
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
