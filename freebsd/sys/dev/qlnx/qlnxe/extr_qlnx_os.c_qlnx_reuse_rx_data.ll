; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_reuse_rx_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_reuse_rx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnx_rx_queue = type { i64, i64, %struct.sw_rx_data*, i32 }
%struct.sw_rx_data = type { i32 }
%struct.eth_rx_bd = type { i32 }

@RX_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlnx_rx_queue*)* @qlnx_reuse_rx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnx_reuse_rx_data(%struct.qlnx_rx_queue* %0) #0 {
  %2 = alloca %struct.qlnx_rx_queue*, align 8
  %3 = alloca %struct.eth_rx_bd*, align 8
  %4 = alloca %struct.eth_rx_bd*, align 8
  %5 = alloca %struct.sw_rx_data*, align 8
  %6 = alloca %struct.sw_rx_data*, align 8
  store %struct.qlnx_rx_queue* %0, %struct.qlnx_rx_queue** %2, align 8
  %7 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %2, align 8
  %8 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %7, i32 0, i32 3
  %9 = call %struct.eth_rx_bd* @ecore_chain_consume(i32* %8)
  store %struct.eth_rx_bd* %9, %struct.eth_rx_bd** %3, align 8
  %10 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %2, align 8
  %11 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %10, i32 0, i32 3
  %12 = call %struct.eth_rx_bd* @ecore_chain_produce(i32* %11)
  store %struct.eth_rx_bd* %12, %struct.eth_rx_bd** %4, align 8
  %13 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %2, align 8
  %14 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %13, i32 0, i32 2
  %15 = load %struct.sw_rx_data*, %struct.sw_rx_data** %14, align 8
  %16 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %2, align 8
  %17 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %15, i64 %18
  store %struct.sw_rx_data* %19, %struct.sw_rx_data** %5, align 8
  %20 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %2, align 8
  %21 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %20, i32 0, i32 2
  %22 = load %struct.sw_rx_data*, %struct.sw_rx_data** %21, align 8
  %23 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %2, align 8
  %24 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %22, i64 %25
  store %struct.sw_rx_data* %26, %struct.sw_rx_data** %6, align 8
  %27 = load %struct.sw_rx_data*, %struct.sw_rx_data** %5, align 8
  %28 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sw_rx_data*, %struct.sw_rx_data** %6, align 8
  %31 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.eth_rx_bd*, %struct.eth_rx_bd** %4, align 8
  %33 = load %struct.eth_rx_bd*, %struct.eth_rx_bd** %3, align 8
  %34 = call i32 @memcpy(%struct.eth_rx_bd* %32, %struct.eth_rx_bd* %33, i32 4)
  %35 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %2, align 8
  %36 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, 1
  %39 = load i32, i32* @RX_RING_SIZE, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = and i64 %38, %41
  %43 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %2, align 8
  %44 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %2, align 8
  %46 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, 1
  %49 = load i32, i32* @RX_RING_SIZE, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = and i64 %48, %51
  %53 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %2, align 8
  %54 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  ret void
}

declare dso_local %struct.eth_rx_bd* @ecore_chain_consume(i32*) #1

declare dso_local %struct.eth_rx_bd* @ecore_chain_produce(i32*) #1

declare dso_local i32 @memcpy(%struct.eth_rx_bd*, %struct.eth_rx_bd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
