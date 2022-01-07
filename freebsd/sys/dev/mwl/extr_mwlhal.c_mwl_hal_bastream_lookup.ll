; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_mwlhal.c_mwl_hal_bastream_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_mwlhal.c_mwl_hal_bastream_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_hal = type { i32 }
%struct.mwl_hal_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MWL_BASTREAMS_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @mwl_hal_bastream_lookup(%struct.mwl_hal* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.mwl_hal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mwl_hal_priv*, align 8
  store %struct.mwl_hal* %0, %struct.mwl_hal** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mwl_hal*, %struct.mwl_hal** %4, align 8
  %8 = call %struct.mwl_hal_priv* @MWLPRIV(%struct.mwl_hal* %7)
  store %struct.mwl_hal_priv* %8, %struct.mwl_hal_priv** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp sle i32 0, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MWL_BASTREAMS_MAX, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %16, label %15

15:                                               ; preds = %11, %2
  store i32* null, i32** %3, align 8
  br label %33

16:                                               ; preds = %11
  %17 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %6, align 8
  %18 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32* null, i32** %3, align 8
  br label %33

25:                                               ; preds = %16
  %26 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %6, align 8
  %27 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32* %32, i32** %3, align 8
  br label %33

33:                                               ; preds = %25, %24, %15
  %34 = load i32*, i32** %3, align 8
  ret i32* %34
}

declare dso_local %struct.mwl_hal_priv* @MWLPRIV(%struct.mwl_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
