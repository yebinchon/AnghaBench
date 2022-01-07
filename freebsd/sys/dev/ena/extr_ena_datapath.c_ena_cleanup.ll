; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena_datapath.c_ena_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena_datapath.c_ena_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_que = type { i32, %struct.ena_ring*, %struct.ena_ring*, %struct.ena_adapter* }
%struct.ena_ring = type { i32 }
%struct.ena_adapter = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.ena_com_io_cq* }
%struct.ena_com_io_cq = type { i32 }
%struct.ena_eth_io_intr_reg = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@ENA_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"MSI-X TX/RX routine\0A\00", align 1
@CLEAN_BUDGET = common dso_local global i32 0, align 4
@TX_BUDGET = common dso_local global i32 0, align 4
@RX_BUDGET = common dso_local global i32 0, align 4
@RX_IRQ_INTERVAL = common dso_local global i32 0, align 4
@TX_IRQ_INTERVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ena_cleanup(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ena_que*, align 8
  %6 = alloca %struct.ena_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ena_ring*, align 8
  %9 = alloca %struct.ena_ring*, align 8
  %10 = alloca %struct.ena_com_io_cq*, align 8
  %11 = alloca %struct.ena_eth_io_intr_reg, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = bitcast i8* %17 to %struct.ena_que*
  store %struct.ena_que* %18, %struct.ena_que** %5, align 8
  %19 = load %struct.ena_que*, %struct.ena_que** %5, align 8
  %20 = getelementptr inbounds %struct.ena_que, %struct.ena_que* %19, i32 0, i32 3
  %21 = load %struct.ena_adapter*, %struct.ena_adapter** %20, align 8
  store %struct.ena_adapter* %21, %struct.ena_adapter** %6, align 8
  %22 = load %struct.ena_adapter*, %struct.ena_adapter** %6, align 8
  %23 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @if_getdrvflags(i32 %25)
  %27 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  br label %97

34:                                               ; preds = %2
  %35 = load i32, i32* @ENA_DBG, align 4
  %36 = call i32 @ena_trace(i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.ena_que*, %struct.ena_que** %5, align 8
  %38 = getelementptr inbounds %struct.ena_que, %struct.ena_que* %37, i32 0, i32 2
  %39 = load %struct.ena_ring*, %struct.ena_ring** %38, align 8
  store %struct.ena_ring* %39, %struct.ena_ring** %8, align 8
  %40 = load %struct.ena_que*, %struct.ena_que** %5, align 8
  %41 = getelementptr inbounds %struct.ena_que, %struct.ena_que* %40, i32 0, i32 1
  %42 = load %struct.ena_ring*, %struct.ena_ring** %41, align 8
  store %struct.ena_ring* %42, %struct.ena_ring** %9, align 8
  %43 = load %struct.ena_que*, %struct.ena_que** %5, align 8
  %44 = getelementptr inbounds %struct.ena_que, %struct.ena_que* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @ENA_IO_TXQ_IDX(i32 %46)
  store i32 %47, i32* %13, align 4
  %48 = load %struct.ena_adapter*, %struct.ena_adapter** %6, align 8
  %49 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %51, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %52, i64 %54
  store %struct.ena_com_io_cq* %55, %struct.ena_com_io_cq** %10, align 8
  %56 = load %struct.ena_ring*, %struct.ena_ring** %8, align 8
  %57 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  %58 = load %struct.ena_ring*, %struct.ena_ring** %9, align 8
  %59 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %58, i32 0, i32 0
  store i32 1, i32* %59, align 4
  store i32 0, i32* %16, align 4
  br label %60

60:                                               ; preds = %88, %34
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* @CLEAN_BUDGET, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %91

64:                                               ; preds = %60
  %65 = load %struct.ena_ring*, %struct.ena_ring** %9, align 8
  %66 = call i32 @ena_rx_cleanup(%struct.ena_ring* %65)
  store i32 %66, i32* %15, align 4
  %67 = load %struct.ena_ring*, %struct.ena_ring** %8, align 8
  %68 = call i32 @ena_tx_cleanup(%struct.ena_ring* %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @if_getdrvflags(i32 %69)
  %71 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %72 = and i32 %70, %71
  %73 = icmp eq i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %64
  br label %97

78:                                               ; preds = %64
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* @TX_BUDGET, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* @RX_BUDGET, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %91

87:                                               ; preds = %82, %78
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %16, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %16, align 4
  br label %60

91:                                               ; preds = %86, %60
  %92 = load i32, i32* @RX_IRQ_INTERVAL, align 4
  %93 = load i32, i32* @TX_IRQ_INTERVAL, align 4
  %94 = call i32 @ena_com_update_intr_reg(%struct.ena_eth_io_intr_reg* %11, i32 %92, i32 %93, i32 1)
  %95 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %10, align 8
  %96 = call i32 @ena_com_unmask_intr(%struct.ena_com_io_cq* %95, %struct.ena_eth_io_intr_reg* %11)
  br label %97

97:                                               ; preds = %91, %77, %33
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local i32 @ena_trace(i32, i8*) #1

declare dso_local i32 @ENA_IO_TXQ_IDX(i32) #1

declare dso_local i32 @ena_rx_cleanup(%struct.ena_ring*) #1

declare dso_local i32 @ena_tx_cleanup(%struct.ena_ring*) #1

declare dso_local i32 @ena_com_update_intr_reg(%struct.ena_eth_io_intr_reg*, i32, i32, i32) #1

declare dso_local i32 @ena_com_unmask_intr(%struct.ena_com_io_cq*, %struct.ena_eth_io_intr_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
