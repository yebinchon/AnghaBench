; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_start_xmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_ring = type { i32, i32, i32 }
%struct.mbuf = type { i32 }

@napi = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @al_eth_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_eth_start_xmit(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.al_eth_ring*, align 8
  %6 = alloca %struct.mbuf*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.al_eth_ring*
  store %struct.al_eth_ring* %8, %struct.al_eth_ring** %5, align 8
  %9 = load i64, i64* @napi, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %13 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = call i32 (...) @al_data_memory_barrier()
  br label %15

15:                                               ; preds = %11, %2
  br label %16

16:                                               ; preds = %15, %30
  %17 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %18 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %17, i32 0, i32 1
  %19 = call i32 @mtx_lock(i32* %18)
  %20 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %21 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.mbuf* @drbr_dequeue(i32* null, i32 %22)
  store %struct.mbuf* %23, %struct.mbuf** %6, align 8
  %24 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %25 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %24, i32 0, i32 1
  %26 = call i32 @mtx_unlock(i32* %25)
  %27 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %28 = icmp eq %struct.mbuf* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  br label %34

30:                                               ; preds = %16
  %31 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %32 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %33 = call i32 @al_eth_xmit_mbuf(%struct.al_eth_ring* %31, %struct.mbuf* %32)
  br label %16

34:                                               ; preds = %29
  %35 = load i64, i64* @napi, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %34
  %38 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %39 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = call i32 (...) @al_data_memory_barrier()
  br label %41

41:                                               ; preds = %37, %55
  %42 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %43 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %42, i32 0, i32 1
  %44 = call i32 @mtx_lock(i32* %43)
  %45 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %46 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.mbuf* @drbr_dequeue(i32* null, i32 %47)
  store %struct.mbuf* %48, %struct.mbuf** %6, align 8
  %49 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %50 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %49, i32 0, i32 1
  %51 = call i32 @mtx_unlock(i32* %50)
  %52 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %53 = icmp eq %struct.mbuf* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  br label %59

55:                                               ; preds = %41
  %56 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %57 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %58 = call i32 @al_eth_xmit_mbuf(%struct.al_eth_ring* %56, %struct.mbuf* %57)
  br label %41

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59, %34
  ret void
}

declare dso_local i32 @al_data_memory_barrier(...) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.mbuf* @drbr_dequeue(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @al_eth_xmit_mbuf(%struct.al_eth_ring*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
