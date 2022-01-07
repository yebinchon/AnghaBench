; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_mwlhal.c_mwl_hal_getpromisc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_mwlhal.c_mwl_hal_getpromisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_hal = type { i32 }
%struct.mwl_hal_priv = type { i32 }

@MACREG_REG_PROMISCUOUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwl_hal_getpromisc(%struct.mwl_hal* %0) #0 {
  %2 = alloca %struct.mwl_hal*, align 8
  %3 = alloca %struct.mwl_hal_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.mwl_hal* %0, %struct.mwl_hal** %2, align 8
  %5 = load %struct.mwl_hal*, %struct.mwl_hal** %2, align 8
  %6 = call %struct.mwl_hal_priv* @MWLPRIV(%struct.mwl_hal* %5)
  store %struct.mwl_hal_priv* %6, %struct.mwl_hal_priv** %3, align 8
  %7 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %3, align 8
  %8 = call i32 @MWL_HAL_LOCK(%struct.mwl_hal_priv* %7)
  %9 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %3, align 8
  %10 = load i32, i32* @MACREG_REG_PROMISCUOUS, align 4
  %11 = call i32 @RD4(%struct.mwl_hal_priv* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %3, align 8
  %13 = call i32 @MWL_HAL_UNLOCK(%struct.mwl_hal_priv* %12)
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  ret i32 %17
}

declare dso_local %struct.mwl_hal_priv* @MWLPRIV(%struct.mwl_hal*) #1

declare dso_local i32 @MWL_HAL_LOCK(%struct.mwl_hal_priv*) #1

declare dso_local i32 @RD4(%struct.mwl_hal_priv*, i32) #1

declare dso_local i32 @MWL_HAL_UNLOCK(%struct.mwl_hal_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
