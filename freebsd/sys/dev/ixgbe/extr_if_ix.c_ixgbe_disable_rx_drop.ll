; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_disable_rx_drop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_disable_rx_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, %struct.TYPE_2__*, %struct.ixgbe_hw }
%struct.TYPE_2__ = type { %struct.rx_ring }
%struct.rx_ring = type { i32 }
%struct.ixgbe_hw = type { i32 }

@IXGBE_SRRCTL_DROP_EN = common dso_local global i32 0, align 4
@IXGBE_QDE = common dso_local global i32 0, align 4
@IXGBE_QDE_WRITE = common dso_local global i32 0, align 4
@IXGBE_QDE_IDX_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @ixgbe_disable_rx_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_disable_rx_drop(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca %struct.rx_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 3
  store %struct.ixgbe_hw* %9, %struct.ixgbe_hw** %3, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %41, %1
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.adapter*, %struct.adapter** %2, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %10
  %17 = load %struct.adapter*, %struct.adapter** %2, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.rx_ring* %23, %struct.rx_ring** %4, align 8
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %25 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %26 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @IXGBE_SRRCTL(i32 %27)
  %29 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %24, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @IXGBE_SRRCTL_DROP_EN, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %35 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %36 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @IXGBE_SRRCTL(i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %34, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %16
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %10

44:                                               ; preds = %10
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %60, %44
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.adapter*, %struct.adapter** %2, align 8
  %48 = getelementptr inbounds %struct.adapter, %struct.adapter* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %53 = load i32, i32* @IXGBE_QDE, align 4
  %54 = load i32, i32* @IXGBE_QDE_WRITE, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @IXGBE_QDE_IDX_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = or i32 %54, %57
  %59 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %52, i32 %53, i32 %58)
  br label %60

60:                                               ; preds = %51
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %45

63:                                               ; preds = %45
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_SRRCTL(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
