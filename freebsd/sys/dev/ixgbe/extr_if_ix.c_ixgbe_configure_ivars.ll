; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_configure_ivars.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_configure_ivars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i32, i32, i64, %struct.ix_tx_queue*, %struct.ix_rx_queue* }
%struct.ix_tx_queue = type { i32, %struct.tx_ring }
%struct.tx_ring = type { i32 }
%struct.ix_rx_queue = type { i32, %struct.rx_ring }
%struct.rx_ring = type { i32 }

@ixgbe_max_interrupt_rate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @ixgbe_configure_ivars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_configure_ivars(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.ix_rx_queue*, align 8
  %4 = alloca %struct.ix_tx_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rx_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tx_ring*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %10 = load %struct.adapter*, %struct.adapter** %2, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 6
  %12 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %11, align 8
  store %struct.ix_rx_queue* %12, %struct.ix_rx_queue** %3, align 8
  %13 = load %struct.adapter*, %struct.adapter** %2, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 5
  %15 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %14, align 8
  store %struct.ix_tx_queue* %15, %struct.ix_tx_queue** %4, align 8
  %16 = load i32, i32* @ixgbe_max_interrupt_rate, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @ixgbe_max_interrupt_rate, align 4
  %20 = sdiv i32 4000000, %19
  %21 = and i32 %20, 4088
  store i32 %21, i32* %5, align 4
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.adapter*, %struct.adapter** %2, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %22, %18
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %51, %25
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.adapter*, %struct.adapter** %2, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %26
  %33 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %3, align 8
  %34 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %33, i32 0, i32 1
  store %struct.rx_ring* %34, %struct.rx_ring** %7, align 8
  %35 = load %struct.adapter*, %struct.adapter** %2, align 8
  %36 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %37 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %3, align 8
  %40 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ixgbe_set_ivar(%struct.adapter* %35, i32 %38, i32 %41, i32 0)
  %43 = load %struct.adapter*, %struct.adapter** %2, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 3
  %45 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %3, align 8
  %46 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @IXGBE_EITR(i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @IXGBE_WRITE_REG(i32* %44, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %32
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  %54 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %3, align 8
  %55 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %54, i32 1
  store %struct.ix_rx_queue* %55, %struct.ix_rx_queue** %3, align 8
  br label %26

56:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %74, %56
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.adapter*, %struct.adapter** %2, align 8
  %60 = getelementptr inbounds %struct.adapter, %struct.adapter* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %57
  %64 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %4, align 8
  %65 = getelementptr inbounds %struct.ix_tx_queue, %struct.ix_tx_queue* %64, i32 0, i32 1
  store %struct.tx_ring* %65, %struct.tx_ring** %9, align 8
  %66 = load %struct.adapter*, %struct.adapter** %2, align 8
  %67 = load %struct.tx_ring*, %struct.tx_ring** %9, align 8
  %68 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %4, align 8
  %71 = getelementptr inbounds %struct.ix_tx_queue, %struct.ix_tx_queue* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ixgbe_set_ivar(%struct.adapter* %66, i32 %69, i32 %72, i32 1)
  br label %74

74:                                               ; preds = %63
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  %77 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %4, align 8
  %78 = getelementptr inbounds %struct.ix_tx_queue, %struct.ix_tx_queue* %77, i32 1
  store %struct.ix_tx_queue* %78, %struct.ix_tx_queue** %4, align 8
  br label %57

79:                                               ; preds = %57
  %80 = load %struct.adapter*, %struct.adapter** %2, align 8
  %81 = load %struct.adapter*, %struct.adapter** %2, align 8
  %82 = getelementptr inbounds %struct.adapter, %struct.adapter* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @ixgbe_set_ivar(%struct.adapter* %80, i32 1, i32 %83, i32 -1)
  ret void
}

declare dso_local i32 @ixgbe_set_ivar(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(i32*, i32, i32) #1

declare dso_local i32 @IXGBE_EITR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
