; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_mwlhal.c_mwlResetHalState.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_mwlhal.c_mwlResetHalState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_hal_priv = type { i32, i32, i64, i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@MWL_BASTREAMS_MAX = common dso_local global i32 0, align 4
@MWL_MBSS_MAX = common dso_local global i32 0, align 4
@MHF_CALDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwl_hal_priv*)* @mwlResetHalState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwlResetHalState(%struct.mwl_hal_priv* %0) #0 {
  %2 = alloca %struct.mwl_hal_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.mwl_hal_priv* %0, %struct.mwl_hal_priv** %2, align 8
  %4 = load i32, i32* @MWL_BASTREAMS_MAX, align 4
  %5 = shl i32 1, %4
  %6 = sub nsw i32 %5, 1
  %7 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %2, align 8
  %8 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %21, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @MWL_MBSS_MAX, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %2, align 8
  %15 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %14, i32 0, i32 6
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  br label %21

21:                                               ; preds = %13
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %9

24:                                               ; preds = %9
  %25 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %2, align 8
  %26 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %25, i32 0, i32 5
  store i64 0, i64* %26, align 8
  %27 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %2, align 8
  %28 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %27, i32 0, i32 4
  store i64 0, i64* %28, align 8
  %29 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %2, align 8
  %30 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %2, align 8
  %32 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %2, align 8
  %34 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MHF_CALDATA, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %24
  %40 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %2, align 8
  %41 = call i32 @mwlGetPwrCalTable(%struct.mwl_hal_priv* %40)
  br label %42

42:                                               ; preds = %39, %24
  ret i32 0
}

declare dso_local i32 @mwlGetPwrCalTable(%struct.mwl_hal_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
