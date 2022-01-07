; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_enable_rx_drop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_enable_rx_drop.c"
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
@IXGBE_QDE_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @ixgbe_enable_rx_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_enable_rx_drop(%struct.adapter* %0) #0 {
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

10:                                               ; preds = %40, %1
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.adapter*, %struct.adapter** %2, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %43

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
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %34 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %35 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @IXGBE_SRRCTL(i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %33, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %16
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %10

43:                                               ; preds = %10
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %61, %43
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.adapter*, %struct.adapter** %2, align 8
  %47 = getelementptr inbounds %struct.adapter, %struct.adapter* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %44
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %52 = load i32, i32* @IXGBE_QDE, align 4
  %53 = load i32, i32* @IXGBE_QDE_WRITE, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @IXGBE_QDE_IDX_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = or i32 %53, %56
  %58 = load i32, i32* @IXGBE_QDE_ENABLE, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %51, i32 %52, i32 %59)
  br label %61

61:                                               ; preds = %50
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %44

64:                                               ; preds = %44
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
