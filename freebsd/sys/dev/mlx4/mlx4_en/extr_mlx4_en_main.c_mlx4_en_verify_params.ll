; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_main.c_mlx4_en_verify_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_main.c_mlx4_en_verify_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pfctx = common dso_local global i64 0, align 8
@MAX_PFC_TX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [115 x i8] c"mlx4_en: WARNING: illegal module parameter pfctx 0x%x - should be in range 0-0x%x, will be changed to default (0)\0A\00", align 1
@pfcrx = common dso_local global i64 0, align 8
@MAX_PFC_RX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [115 x i8] c"mlx4_en: WARNING: illegal module parameter pfcrx 0x%x - should be in range 0-0x%x, will be changed to default (0)\0A\00", align 1
@inline_thold = common dso_local global i64 0, align 8
@MIN_PKT_LEN = common dso_local global i64 0, align 8
@MAX_INLINE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [120 x i8] c"mlx4_en: WARNING: illegal module parameter inline_thold %d - should be in range %d-%d, will be changed to default (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mlx4_en_verify_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_en_verify_params() #0 {
  %1 = load i64, i64* @pfctx, align 8
  %2 = load i64, i64* @MAX_PFC_TX, align 8
  %3 = icmp sgt i64 %1, %2
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load i64, i64* @pfctx, align 8
  %6 = load i64, i64* @MAX_PFC_TX, align 8
  %7 = call i32 (i8*, i64, i64, ...) @pr_warn(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str, i64 0, i64 0), i64 %5, i64 %6)
  store i64 0, i64* @pfctx, align 8
  br label %8

8:                                                ; preds = %4, %0
  %9 = load i64, i64* @pfcrx, align 8
  %10 = load i64, i64* @MAX_PFC_RX, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load i64, i64* @pfcrx, align 8
  %14 = load i64, i64* @MAX_PFC_RX, align 8
  %15 = call i32 (i8*, i64, i64, ...) @pr_warn(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.1, i64 0, i64 0), i64 %13, i64 %14)
  store i64 0, i64* @pfcrx, align 8
  br label %16

16:                                               ; preds = %12, %8
  %17 = load i64, i64* @inline_thold, align 8
  %18 = load i64, i64* @MIN_PKT_LEN, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* @inline_thold, align 8
  %22 = load i64, i64* @MAX_INLINE, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %20, %16
  %25 = load i64, i64* @inline_thold, align 8
  %26 = load i64, i64* @MIN_PKT_LEN, align 8
  %27 = load i64, i64* @MAX_INLINE, align 8
  %28 = load i64, i64* @MAX_INLINE, align 8
  %29 = call i32 (i8*, i64, i64, ...) @pr_warn(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.2, i64 0, i64 0), i64 %25, i64 %26, i64 %27, i64 %28)
  %30 = load i64, i64* @MAX_INLINE, align 8
  store i64 %30, i64* @inline_thold, align 8
  br label %31

31:                                               ; preds = %24, %20
  ret void
}

declare dso_local i32 @pr_warn(i8*, i64, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
