; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena_datapath.c_ena_deferred_mq_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena_datapath.c_ena_deferred_mq_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_ring = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ena_deferred_mq_start(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ena_ring*, align 8
  %6 = alloca %struct.ifnet*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.ena_ring*
  store %struct.ena_ring* %8, %struct.ena_ring** %5, align 8
  %9 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %10 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  store %struct.ifnet* %13, %struct.ifnet** %6, align 8
  br label %14

14:                                               ; preds = %34, %2
  %15 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %16 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %17 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @drbr_empty(%struct.ifnet* %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %14
  %22 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %23 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %28 = call i32 @if_getdrvflags(%struct.ifnet* %27)
  %29 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %26, %21, %14
  %33 = phi i1 [ false, %21 ], [ false, %14 ], [ %31, %26 ]
  br i1 %33, label %34, label %41

34:                                               ; preds = %32
  %35 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %36 = call i32 @ENA_RING_MTX_LOCK(%struct.ena_ring* %35)
  %37 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %38 = call i32 @ena_start_xmit(%struct.ena_ring* %37)
  %39 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %40 = call i32 @ENA_RING_MTX_UNLOCK(%struct.ena_ring* %39)
  br label %14

41:                                               ; preds = %32
  ret void
}

declare dso_local i32 @drbr_empty(%struct.ifnet*, i32) #1

declare dso_local i32 @if_getdrvflags(%struct.ifnet*) #1

declare dso_local i32 @ENA_RING_MTX_LOCK(%struct.ena_ring*) #1

declare dso_local i32 @ena_start_xmit(%struct.ena_ring*) #1

declare dso_local i32 @ENA_RING_MTX_UNLOCK(%struct.ena_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
