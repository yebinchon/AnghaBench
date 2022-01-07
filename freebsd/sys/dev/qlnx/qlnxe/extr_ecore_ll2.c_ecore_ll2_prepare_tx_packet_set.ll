; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_ll2_prepare_tx_packet_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_ll2_prepare_tx_packet_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_ll2_tx_queue = type { i64, %struct.ecore_ll2_tx_packet*, i32 }
%struct.ecore_ll2_tx_packet = type { %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ecore_ll2_tx_pkt_info = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_ll2_tx_queue*, %struct.ecore_ll2_tx_packet*, %struct.ecore_ll2_tx_pkt_info*, i32)* @ecore_ll2_prepare_tx_packet_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_ll2_prepare_tx_packet_set(%struct.ecore_ll2_tx_queue* %0, %struct.ecore_ll2_tx_packet* %1, %struct.ecore_ll2_tx_pkt_info* %2, i32 %3) #0 {
  %5 = alloca %struct.ecore_ll2_tx_queue*, align 8
  %6 = alloca %struct.ecore_ll2_tx_packet*, align 8
  %7 = alloca %struct.ecore_ll2_tx_pkt_info*, align 8
  %8 = alloca i32, align 4
  store %struct.ecore_ll2_tx_queue* %0, %struct.ecore_ll2_tx_queue** %5, align 8
  store %struct.ecore_ll2_tx_packet* %1, %struct.ecore_ll2_tx_packet** %6, align 8
  store %struct.ecore_ll2_tx_pkt_info* %2, %struct.ecore_ll2_tx_pkt_info** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.ecore_ll2_tx_packet*, %struct.ecore_ll2_tx_packet** %6, align 8
  %10 = getelementptr inbounds %struct.ecore_ll2_tx_packet, %struct.ecore_ll2_tx_packet* %9, i32 0, i32 4
  %11 = load %struct.ecore_ll2_tx_queue*, %struct.ecore_ll2_tx_queue** %5, align 8
  %12 = getelementptr inbounds %struct.ecore_ll2_tx_queue, %struct.ecore_ll2_tx_queue* %11, i32 0, i32 2
  %13 = call i32 @OSAL_LIST_REMOVE_ENTRY(i32* %10, i32* %12)
  %14 = load %struct.ecore_ll2_tx_pkt_info*, %struct.ecore_ll2_tx_pkt_info** %7, align 8
  %15 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ecore_ll2_tx_packet*, %struct.ecore_ll2_tx_packet** %6, align 8
  %18 = getelementptr inbounds %struct.ecore_ll2_tx_packet, %struct.ecore_ll2_tx_packet* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load %struct.ecore_ll2_tx_pkt_info*, %struct.ecore_ll2_tx_pkt_info** %7, align 8
  %20 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ecore_ll2_tx_packet*, %struct.ecore_ll2_tx_packet** %6, align 8
  %23 = getelementptr inbounds %struct.ecore_ll2_tx_packet, %struct.ecore_ll2_tx_packet* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.ecore_ll2_tx_packet*, %struct.ecore_ll2_tx_packet** %6, align 8
  %26 = getelementptr inbounds %struct.ecore_ll2_tx_packet, %struct.ecore_ll2_tx_packet* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.ecore_ll2_tx_packet*, %struct.ecore_ll2_tx_packet** %6, align 8
  %28 = load %struct.ecore_ll2_tx_queue*, %struct.ecore_ll2_tx_queue** %5, align 8
  %29 = getelementptr inbounds %struct.ecore_ll2_tx_queue, %struct.ecore_ll2_tx_queue* %28, i32 0, i32 1
  store %struct.ecore_ll2_tx_packet* %27, %struct.ecore_ll2_tx_packet** %29, align 8
  %30 = load %struct.ecore_ll2_tx_queue*, %struct.ecore_ll2_tx_queue** %5, align 8
  %31 = getelementptr inbounds %struct.ecore_ll2_tx_queue, %struct.ecore_ll2_tx_queue* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.ecore_ll2_tx_pkt_info*, %struct.ecore_ll2_tx_pkt_info** %7, align 8
  %33 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ecore_ll2_tx_packet*, %struct.ecore_ll2_tx_packet** %6, align 8
  %36 = getelementptr inbounds %struct.ecore_ll2_tx_packet, %struct.ecore_ll2_tx_packet* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load %struct.ecore_ll2_tx_queue*, %struct.ecore_ll2_tx_queue** %5, align 8
  %39 = getelementptr inbounds %struct.ecore_ll2_tx_queue, %struct.ecore_ll2_tx_queue* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i32 %34, i32* %42, align 4
  %43 = load %struct.ecore_ll2_tx_pkt_info*, %struct.ecore_ll2_tx_pkt_info** %7, align 8
  %44 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ecore_ll2_tx_packet*, %struct.ecore_ll2_tx_packet** %6, align 8
  %47 = getelementptr inbounds %struct.ecore_ll2_tx_packet, %struct.ecore_ll2_tx_packet* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load %struct.ecore_ll2_tx_queue*, %struct.ecore_ll2_tx_queue** %5, align 8
  %50 = getelementptr inbounds %struct.ecore_ll2_tx_queue, %struct.ecore_ll2_tx_queue* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %45, i32* %53, align 4
  %54 = load %struct.ecore_ll2_tx_queue*, %struct.ecore_ll2_tx_queue** %5, align 8
  %55 = getelementptr inbounds %struct.ecore_ll2_tx_queue, %struct.ecore_ll2_tx_queue* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %55, align 8
  ret void
}

declare dso_local i32 @OSAL_LIST_REMOVE_ENTRY(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
