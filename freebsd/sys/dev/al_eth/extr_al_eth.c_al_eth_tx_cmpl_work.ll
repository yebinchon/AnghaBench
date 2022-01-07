; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_tx_cmpl_work.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_tx_cmpl_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_ring = type { i32, i32, i32 }

@napi = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @al_eth_tx_cmpl_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_eth_tx_cmpl_work(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.al_eth_ring*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.al_eth_ring*
  store %struct.al_eth_ring* %7, %struct.al_eth_ring** %5, align 8
  %8 = load i64, i64* @napi, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %12 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = call i32 (...) @al_data_memory_barrier()
  br label %14

14:                                               ; preds = %10, %2
  %15 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %16 = call i32 @al_eth_tx_do_cleanup(%struct.al_eth_ring* %15)
  %17 = load i64, i64* @napi, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %21 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = call i32 (...) @al_data_memory_barrier()
  br label %23

23:                                               ; preds = %19, %14
  %24 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %25 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %28 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @al_eth_irq_config(i32 %26, i32 %29)
  ret void
}

declare dso_local i32 @al_data_memory_barrier(...) #1

declare dso_local i32 @al_eth_tx_do_cleanup(%struct.al_eth_ring*) #1

declare dso_local i32 @al_eth_irq_config(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
