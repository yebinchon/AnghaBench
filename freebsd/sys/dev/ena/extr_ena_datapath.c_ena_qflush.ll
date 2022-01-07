; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena_datapath.c_ena_qflush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena_datapath.c_ena_qflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.ena_adapter* }
%struct.ena_adapter = type { i32, %struct.ena_ring* }
%struct.ena_ring = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ena_qflush(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.ena_adapter*, align 8
  %4 = alloca %struct.ena_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  store %struct.ena_adapter* %8, %struct.ena_adapter** %3, align 8
  %9 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %9, i32 0, i32 1
  %11 = load %struct.ena_ring*, %struct.ena_ring** %10, align 8
  store %struct.ena_ring* %11, %struct.ena_ring** %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %36, %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %12
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %21 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @drbr_empty(%struct.TYPE_6__* %19, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %18
  %26 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %27 = call i32 @ENA_RING_MTX_LOCK(%struct.ena_ring* %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %29 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %30 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @drbr_flush(%struct.TYPE_6__* %28, i32 %31)
  %33 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %34 = call i32 @ENA_RING_MTX_UNLOCK(%struct.ena_ring* %33)
  br label %35

35:                                               ; preds = %25, %18
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  %39 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %40 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %39, i32 1
  store %struct.ena_ring* %40, %struct.ena_ring** %4, align 8
  br label %12

41:                                               ; preds = %12
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %43 = call i32 @if_qflush(%struct.TYPE_6__* %42)
  ret void
}

declare dso_local i32 @drbr_empty(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ENA_RING_MTX_LOCK(%struct.ena_ring*) #1

declare dso_local i32 @drbr_flush(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ENA_RING_MTX_UNLOCK(%struct.ena_ring*) #1

declare dso_local i32 @if_qflush(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
