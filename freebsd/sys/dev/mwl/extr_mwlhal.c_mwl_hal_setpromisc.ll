; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_mwlhal.c_mwl_hal_setpromisc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_mwlhal.c_mwl_hal_setpromisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_hal = type { i32 }
%struct.mwl_hal_priv = type { i32 }

@MACREG_REG_PROMISCUOUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwl_hal_setpromisc(%struct.mwl_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.mwl_hal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwl_hal_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.mwl_hal* %0, %struct.mwl_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mwl_hal*, %struct.mwl_hal** %3, align 8
  %8 = call %struct.mwl_hal_priv* @MWLPRIV(%struct.mwl_hal* %7)
  store %struct.mwl_hal_priv* %8, %struct.mwl_hal_priv** %5, align 8
  %9 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %5, align 8
  %10 = call i32 @MWL_HAL_LOCK(%struct.mwl_hal_priv* %9)
  %11 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %5, align 8
  %12 = load i32, i32* @MACREG_REG_PROMISCUOUS, align 4
  %13 = call i32 @RD4(%struct.mwl_hal_priv* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %5, align 8
  %15 = load i32, i32* @MACREG_REG_PROMISCUOUS, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %19, 1
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, -2
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i32 [ %20, %18 ], [ %23, %21 ]
  %26 = call i32 @WR4(%struct.mwl_hal_priv* %14, i32 %15, i32 %25)
  %27 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %5, align 8
  %28 = call i32 @MWL_HAL_UNLOCK(%struct.mwl_hal_priv* %27)
  ret i32 0
}

declare dso_local %struct.mwl_hal_priv* @MWLPRIV(%struct.mwl_hal*) #1

declare dso_local i32 @MWL_HAL_LOCK(%struct.mwl_hal_priv*) #1

declare dso_local i32 @RD4(%struct.mwl_hal_priv*, i32) #1

declare dso_local i32 @WR4(%struct.mwl_hal_priv*, i32, i32) #1

declare dso_local i32 @MWL_HAL_UNLOCK(%struct.mwl_hal_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
