; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_mwlhal.c_mwl_hal_intrset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_mwlhal.c_mwl_hal_intrset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_hal = type { i32 }
%struct.mwl_hal_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MACREG_REG_A2H_INTERRUPT_MASK = common dso_local global i32 0, align 4
@MACREG_REG_INT_CODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwl_hal_intrset(%struct.mwl_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.mwl_hal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwl_hal_priv*, align 8
  store %struct.mwl_hal* %0, %struct.mwl_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mwl_hal*, %struct.mwl_hal** %3, align 8
  %7 = call %struct.mwl_hal_priv* @MWLPRIV(%struct.mwl_hal* %6)
  store %struct.mwl_hal_priv* %7, %struct.mwl_hal_priv** %5, align 8
  %8 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %5, align 8
  %9 = load i32, i32* @MACREG_REG_A2H_INTERRUPT_MASK, align 4
  %10 = call i32 @WR4(%struct.mwl_hal_priv* %8, i32 %9, i32 0)
  %11 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %5, align 8
  %12 = load i32, i32* @MACREG_REG_INT_CODE, align 4
  %13 = call i32 @RD4(%struct.mwl_hal_priv* %11, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %5, align 8
  %16 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 4
  %18 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %5, align 8
  %19 = load i32, i32* @MACREG_REG_A2H_INTERRUPT_MASK, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @WR4(%struct.mwl_hal_priv* %18, i32 %19, i32 %20)
  %22 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %5, align 8
  %23 = load i32, i32* @MACREG_REG_INT_CODE, align 4
  %24 = call i32 @RD4(%struct.mwl_hal_priv* %22, i32 %23)
  ret void
}

declare dso_local %struct.mwl_hal_priv* @MWLPRIV(%struct.mwl_hal*) #1

declare dso_local i32 @WR4(%struct.mwl_hal_priv*, i32, i32) #1

declare dso_local i32 @RD4(%struct.mwl_hal_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
