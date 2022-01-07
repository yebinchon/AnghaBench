; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_tx_do_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_tx_do_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_ring = type { i32, i64, i32, i32, %struct.al_eth_tx_buffer*, i32 }
%struct.al_eth_tx_buffer = type { i32, i32, i32* }
%struct.mbuf = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"tx_poll: q %d total completed descs %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"tx_poll: q %d mbuf %p completed\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"tx_poll: q %d done next to clean %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_eth_ring*)* @al_eth_tx_do_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_eth_tx_do_cleanup(%struct.al_eth_ring* %0) #0 {
  %2 = alloca %struct.al_eth_ring*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.al_eth_tx_buffer*, align 8
  %7 = alloca %struct.mbuf*, align 8
  store %struct.al_eth_ring* %0, %struct.al_eth_ring** %2, align 8
  %8 = load %struct.al_eth_ring*, %struct.al_eth_ring** %2, align 8
  %9 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.al_eth_ring*, %struct.al_eth_ring** %2, align 8
  %12 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @al_eth_comp_tx_get(i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.al_eth_ring*, %struct.al_eth_ring** %2, align 8
  %16 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %3, align 4
  %20 = zext i32 %19 to i64
  %21 = call i32 @device_printf_dbg(i32 %17, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %18, i64 %20)
  %22 = load %struct.al_eth_ring*, %struct.al_eth_ring** %2, align 8
  %23 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %4, align 8
  br label %25

25:                                               ; preds = %40, %1
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %71

28:                                               ; preds = %25
  %29 = load %struct.al_eth_ring*, %struct.al_eth_ring** %2, align 8
  %30 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %29, i32 0, i32 4
  %31 = load %struct.al_eth_tx_buffer*, %struct.al_eth_tx_buffer** %30, align 8
  %32 = load i64, i64* %4, align 8
  %33 = getelementptr inbounds %struct.al_eth_tx_buffer, %struct.al_eth_tx_buffer* %31, i64 %32
  store %struct.al_eth_tx_buffer* %33, %struct.al_eth_tx_buffer** %6, align 8
  %34 = load %struct.al_eth_tx_buffer*, %struct.al_eth_tx_buffer** %6, align 8
  %35 = getelementptr inbounds %struct.al_eth_tx_buffer, %struct.al_eth_tx_buffer* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = icmp ugt i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %71

40:                                               ; preds = %28
  %41 = load %struct.al_eth_tx_buffer*, %struct.al_eth_tx_buffer** %6, align 8
  %42 = getelementptr inbounds %struct.al_eth_tx_buffer, %struct.al_eth_tx_buffer* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = bitcast i32* %43 to %struct.mbuf*
  store %struct.mbuf* %44, %struct.mbuf** %7, align 8
  %45 = load %struct.al_eth_tx_buffer*, %struct.al_eth_tx_buffer** %6, align 8
  %46 = getelementptr inbounds %struct.al_eth_tx_buffer, %struct.al_eth_tx_buffer* %45, i32 0, i32 2
  store i32* null, i32** %46, align 8
  %47 = load %struct.al_eth_ring*, %struct.al_eth_ring** %2, align 8
  %48 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %52 = ptrtoint %struct.mbuf* %51 to i64
  %53 = call i32 @device_printf_dbg(i32 %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %50, i64 %52)
  %54 = load %struct.al_eth_ring*, %struct.al_eth_ring** %2, align 8
  %55 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.al_eth_tx_buffer*, %struct.al_eth_tx_buffer** %6, align 8
  %58 = getelementptr inbounds %struct.al_eth_tx_buffer, %struct.al_eth_tx_buffer* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @bus_dmamap_unload(i32 %56, i32 %59)
  %61 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %62 = call i32 @m_freem(%struct.mbuf* %61)
  %63 = load %struct.al_eth_tx_buffer*, %struct.al_eth_tx_buffer** %6, align 8
  %64 = getelementptr inbounds %struct.al_eth_tx_buffer, %struct.al_eth_tx_buffer* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sub i32 %66, %65
  store i32 %67, i32* %3, align 4
  %68 = load %struct.al_eth_ring*, %struct.al_eth_ring** %2, align 8
  %69 = load i64, i64* %4, align 8
  %70 = call i64 @AL_ETH_TX_RING_IDX_NEXT(%struct.al_eth_ring* %68, i64 %69)
  store i64 %70, i64* %4, align 8
  br label %25

71:                                               ; preds = %39, %25
  %72 = load i64, i64* %4, align 8
  %73 = load %struct.al_eth_ring*, %struct.al_eth_ring** %2, align 8
  %74 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load %struct.al_eth_ring*, %struct.al_eth_ring** %2, align 8
  %76 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load i64, i64* %4, align 8
  %80 = call i32 @device_printf_dbg(i32 %77, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %78, i64 %79)
  %81 = call i32 (...) @al_smp_data_memory_barrier()
  ret void
}

declare dso_local i32 @al_eth_comp_tx_get(i32) #1

declare dso_local i32 @device_printf_dbg(i32, i8*, i32, i64) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i64 @AL_ETH_TX_RING_IDX_NEXT(%struct.al_eth_ring*, i64) #1

declare dso_local i32 @al_smp_data_memory_barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
