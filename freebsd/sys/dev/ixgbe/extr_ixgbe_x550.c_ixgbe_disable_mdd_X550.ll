; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_disable_mdd_X550.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_disable_mdd_X550.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"ixgbe_disable_mdd_X550\00", align 1
@IXGBE_DMATXCTL = common dso_local global i32 0, align 4
@IXGBE_DMATXCTL_MDP_EN = common dso_local global i32 0, align 4
@IXGBE_DMATXCTL_MBINTEN = common dso_local global i32 0, align 4
@IXGBE_RDRXCTL = common dso_local global i32 0, align 4
@IXGBE_RDRXCTL_MDP_EN = common dso_local global i32 0, align 4
@IXGBE_RDRXCTL_MBINTEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_disable_mdd_X550(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %4 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %6 = load i32, i32* @IXGBE_DMATXCTL, align 4
  %7 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @IXGBE_DMATXCTL_MDP_EN, align 4
  %9 = load i32, i32* @IXGBE_DMATXCTL_MBINTEN, align 4
  %10 = or i32 %8, %9
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %15 = load i32, i32* @IXGBE_DMATXCTL, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %14, i32 %15, i32 %16)
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %19 = load i32, i32* @IXGBE_RDRXCTL, align 4
  %20 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %18, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @IXGBE_RDRXCTL_MDP_EN, align 4
  %22 = load i32, i32* @IXGBE_RDRXCTL_MBINTEN, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %28 = load i32, i32* @IXGBE_RDRXCTL, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %27, i32 %28, i32 %29)
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
