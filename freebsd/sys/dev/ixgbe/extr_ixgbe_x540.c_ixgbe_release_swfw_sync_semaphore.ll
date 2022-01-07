; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x540.c_ixgbe_release_swfw_sync_semaphore.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x540.c_ixgbe_release_swfw_sync_semaphore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"ixgbe_release_swfw_sync_semaphore\00", align 1
@IXGBE_SWFW_REGSMP = common dso_local global i32 0, align 4
@IXGBE_SWSM_SMBI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_hw*)* @ixgbe_release_swfw_sync_semaphore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_release_swfw_sync_semaphore(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %4 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %7 = call i32 @IXGBE_SWFW_SYNC_BY_MAC(%struct.ixgbe_hw* %6)
  %8 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %5, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @IXGBE_SWFW_REGSMP, align 4
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %15 = call i32 @IXGBE_SWFW_SYNC_BY_MAC(%struct.ixgbe_hw* %14)
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %13, i32 %15, i32 %16)
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %20 = call i32 @IXGBE_SWSM_BY_MAC(%struct.ixgbe_hw* %19)
  %21 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %18, i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @IXGBE_SWSM_SMBI, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %28 = call i32 @IXGBE_SWSM_BY_MAC(%struct.ixgbe_hw* %27)
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %26, i32 %28, i32 %29)
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %32 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %31)
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_SWFW_SYNC_BY_MAC(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_SWSM_BY_MAC(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
