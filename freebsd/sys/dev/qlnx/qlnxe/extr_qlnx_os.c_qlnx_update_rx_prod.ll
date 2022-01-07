; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_update_rx_prod.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_update_rx_prod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.qlnx_rx_queue = type { i32, i32, i32 }
%union.anon = type { %struct.eth_rx_prod_data }
%struct.eth_rx_prod_data = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.qlnx_rx_queue*)* @qlnx_update_rx_prod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnx_update_rx_prod(%struct.ecore_hwfn* %0, %struct.qlnx_rx_queue* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.qlnx_rx_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.anon, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.qlnx_rx_queue* %1, %struct.qlnx_rx_queue** %4, align 8
  %8 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %4, align 8
  %9 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %8, i32 0, i32 2
  %10 = call i32 @ecore_chain_get_prod_idx(i32* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %4, align 8
  %12 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %11, i32 0, i32 1
  %13 = call i32 @ecore_chain_get_prod_idx(i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i8* @htole16(i32 %14)
  %16 = bitcast %union.anon* %7 to %struct.eth_rx_prod_data*
  %17 = getelementptr inbounds %struct.eth_rx_prod_data, %struct.eth_rx_prod_data* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i8* @htole16(i32 %18)
  %20 = bitcast %union.anon* %7 to %struct.eth_rx_prod_data*
  %21 = getelementptr inbounds %struct.eth_rx_prod_data, %struct.eth_rx_prod_data* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = call i32 (...) @wmb()
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %24 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %4, align 8
  %25 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = bitcast %union.anon* %7 to i32*
  %28 = call i32 @internal_ram_wr(%struct.ecore_hwfn* %23, i32 %26, i32 16, i32* %27)
  %29 = call i32 (...) @wmb()
  ret void
}

declare dso_local i32 @ecore_chain_get_prod_idx(i32*) #1

declare dso_local i8* @htole16(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @internal_ram_wr(%struct.ecore_hwfn*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
