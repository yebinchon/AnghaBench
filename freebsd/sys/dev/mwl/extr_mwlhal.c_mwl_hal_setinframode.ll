; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_mwlhal.c_mwl_hal_setinframode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_mwlhal.c_mwl_hal_setinframode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_hal_vap = type { i32 }
%struct.mwl_hal_priv = type { i32 }

@HostCmd_FW_SET_INFRA_MODE = common dso_local global i32 0, align 4
@pCmd = common dso_local global i32 0, align 4
@HostCmd_CMD_SET_INFRA_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwl_hal_setinframode(%struct.mwl_hal_vap* %0) #0 {
  %2 = alloca %struct.mwl_hal_vap*, align 8
  %3 = alloca %struct.mwl_hal_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.mwl_hal_vap* %0, %struct.mwl_hal_vap** %2, align 8
  %5 = load %struct.mwl_hal_vap*, %struct.mwl_hal_vap** %2, align 8
  %6 = call %struct.mwl_hal_priv* @MWLVAP(%struct.mwl_hal_vap* %5)
  store %struct.mwl_hal_priv* %6, %struct.mwl_hal_priv** %3, align 8
  %7 = load i32, i32* @HostCmd_FW_SET_INFRA_MODE, align 4
  %8 = load i32, i32* @pCmd, align 4
  %9 = mul nsw i32 %7, %8
  %10 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %3, align 8
  %11 = call i32 @MWL_HAL_LOCK(%struct.mwl_hal_priv* %10)
  %12 = load %struct.mwl_hal_vap*, %struct.mwl_hal_vap** %2, align 8
  %13 = load i32, i32* @pCmd, align 4
  %14 = load i32, i32* @HostCmd_FW_SET_INFRA_MODE, align 4
  %15 = load i32, i32* @HostCmd_CMD_SET_INFRA_MODE, align 4
  %16 = call i32 @_VCMD_SETUP(%struct.mwl_hal_vap* %12, i32 %13, i32 %14, i32 %15)
  %17 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %3, align 8
  %18 = load i32, i32* @HostCmd_CMD_SET_INFRA_MODE, align 4
  %19 = call i32 @mwlExecuteCmd(%struct.mwl_hal_priv* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %3, align 8
  %21 = call i32 @MWL_HAL_UNLOCK(%struct.mwl_hal_priv* %20)
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local %struct.mwl_hal_priv* @MWLVAP(%struct.mwl_hal_vap*) #1

declare dso_local i32 @MWL_HAL_LOCK(%struct.mwl_hal_priv*) #1

declare dso_local i32 @_VCMD_SETUP(%struct.mwl_hal_vap*, i32, i32, i32) #1

declare dso_local i32 @mwlExecuteCmd(%struct.mwl_hal_priv*, i32) #1

declare dso_local i32 @MWL_HAL_UNLOCK(%struct.mwl_hal_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
