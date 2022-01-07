; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_mwlhal.c_mwl_hal_getregioncode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_mwlhal.c_mwl_hal_getregioncode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_hal = type { i32 }
%struct.mwl_hal_priv = type { i64 }
%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwl_hal_getregioncode(%struct.mwl_hal* %0, i32* %1) #0 {
  %3 = alloca %struct.mwl_hal*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mwl_hal_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_2__*, align 8
  store %struct.mwl_hal* %0, %struct.mwl_hal** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.mwl_hal*, %struct.mwl_hal** %3, align 8
  %9 = call %struct.mwl_hal_priv* @MWLPRIV(%struct.mwl_hal* %8)
  store %struct.mwl_hal_priv* %9, %struct.mwl_hal_priv** %5, align 8
  %10 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %5, align 8
  %11 = call i32 @MWL_HAL_LOCK(%struct.mwl_hal_priv* %10)
  %12 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %5, align 8
  %13 = call i32 @mwlGetCalTable(%struct.mwl_hal_priv* %12, i32 0, i32 0)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %5, align 8
  %18 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %7, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 16
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %4, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %16, %2
  %28 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %5, align 8
  %29 = call i32 @MWL_HAL_UNLOCK(%struct.mwl_hal_priv* %28)
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local %struct.mwl_hal_priv* @MWLPRIV(%struct.mwl_hal*) #1

declare dso_local i32 @MWL_HAL_LOCK(%struct.mwl_hal_priv*) #1

declare dso_local i32 @mwlGetCalTable(%struct.mwl_hal_priv*, i32, i32) #1

declare dso_local i32 @MWL_HAL_UNLOCK(%struct.mwl_hal_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
