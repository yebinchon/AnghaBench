; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_mq_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_mq_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, %struct.al_eth_adapter* }
%struct.al_eth_adapter = type { i32, i32, %struct.al_eth_ring* }
%struct.al_eth_ring = type { i64, i32, i32, i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@M_HASHTYPE_NONE = common dso_local global i64 0, align 8
@curcpu = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"dgb start() - assuming link is active, sending packet to queue %d\0A\00", align 1
@napi = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.mbuf*)* @al_mq_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_mq_start(%struct.ifnet* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.al_eth_adapter*, align 8
  %7 = alloca %struct.al_eth_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 1
  %12 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %11, align 8
  store %struct.al_eth_adapter* %12, %struct.al_eth_adapter** %6, align 8
  %13 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %14 = call i64 @M_HASHTYPE_GET(%struct.mbuf* %13)
  %15 = load i64, i64* @M_HASHTYPE_NONE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %19 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %6, align 8
  %23 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = srem i32 %21, %24
  store i32 %25, i32* %8, align 4
  br label %32

26:                                               ; preds = %2
  %27 = load i32, i32* @curcpu, align 4
  %28 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %6, align 8
  %29 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = srem i32 %27, %30
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %26, %17
  %33 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %34 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %37 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* @EFAULT, align 4
  store i32 %43, i32* %3, align 4
  br label %81

44:                                               ; preds = %32
  %45 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %6, align 8
  %46 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %45, i32 0, i32 2
  %47 = load %struct.al_eth_ring*, %struct.al_eth_ring** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %47, i64 %49
  store %struct.al_eth_ring* %50, %struct.al_eth_ring** %7, align 8
  %51 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %6, align 8
  %52 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @device_printf_dbg(i32 %53, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %57 = load %struct.al_eth_ring*, %struct.al_eth_ring** %7, align 8
  %58 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %61 = call i32 @drbr_enqueue(%struct.ifnet* %56, i32 %59, %struct.mbuf* %60)
  store i32 %61, i32* %9, align 4
  %62 = load i64, i64* @napi, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %44
  %65 = load i64, i64* @napi, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %64
  %68 = load %struct.al_eth_ring*, %struct.al_eth_ring** %7, align 8
  %69 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %67, %44
  %73 = load %struct.al_eth_ring*, %struct.al_eth_ring** %7, align 8
  %74 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.al_eth_ring*, %struct.al_eth_ring** %7, align 8
  %77 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %76, i32 0, i32 1
  %78 = call i32 @taskqueue_enqueue(i32 %75, i32* %77)
  br label %79

79:                                               ; preds = %72, %67, %64
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %42
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @M_HASHTYPE_GET(%struct.mbuf*) #1

declare dso_local i32 @device_printf_dbg(i32, i8*, i32) #1

declare dso_local i32 @drbr_enqueue(%struct.ifnet*, i32, %struct.mbuf*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
