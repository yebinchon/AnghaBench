; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_if_enable_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_if_enable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.ix_rx_queue*, %struct.ixgbe_hw }
%struct.ix_rx_queue = type { i32 }
%struct.ixgbe_hw = type { i32 }

@IXGBE_EIMS_ENABLE_MASK = common dso_local global i32 0, align 4
@IXGBE_EIMS_RTX_QUEUE = common dso_local global i32 0, align 4
@IXGBE_VTEIMS = common dso_local global i32 0, align 4
@IXGBE_EIMS_OTHER = common dso_local global i32 0, align 4
@IXGBE_EIMS_LSC = common dso_local global i32 0, align 4
@IXGBE_VTEIAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ixv_if_enable_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixv_if_enable_intr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca %struct.ix_rx_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.adapter* @iflib_get_softc(i32 %8)
  store %struct.adapter* %9, %struct.adapter** %3, align 8
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 2
  store %struct.ixgbe_hw* %11, %struct.ixgbe_hw** %4, align 8
  %12 = load %struct.adapter*, %struct.adapter** %3, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 1
  %14 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %13, align 8
  store %struct.ix_rx_queue* %14, %struct.ix_rx_queue** %5, align 8
  %15 = load i32, i32* @IXGBE_EIMS_ENABLE_MASK, align 4
  %16 = load i32, i32* @IXGBE_EIMS_RTX_QUEUE, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  store i32 %18, i32* %6, align 4
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %20 = load i32, i32* @IXGBE_VTEIMS, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %19, i32 %20, i32 %21)
  %23 = load i32, i32* @IXGBE_EIMS_ENABLE_MASK, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @IXGBE_EIMS_OTHER, align 4
  %25 = load i32, i32* @IXGBE_EIMS_LSC, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %31 = load i32, i32* @IXGBE_VTEIAC, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %30, i32 %31, i32 %32)
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %46, %1
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.adapter*, %struct.adapter** %3, align 8
  %37 = getelementptr inbounds %struct.adapter, %struct.adapter* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load %struct.adapter*, %struct.adapter** %3, align 8
  %42 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %5, align 8
  %43 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ixv_enable_queue(%struct.adapter* %41, i32 %44)
  br label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  %49 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %5, align 8
  %50 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %49, i32 1
  store %struct.ix_rx_queue* %50, %struct.ix_rx_queue** %5, align 8
  br label %34

51:                                               ; preds = %34
  %52 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %53 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %52)
  ret void
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @ixv_enable_queue(%struct.adapter*, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
