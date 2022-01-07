; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_if_queues_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_if_queues_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.ix_tx_queue*, %struct.ix_tx_queue* }
%struct.ix_tx_queue = type { %struct.tx_ring }
%struct.tx_ring = type { %struct.ix_tx_queue* }

@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ixv_if_queues_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixv_if_queues_free(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.ix_tx_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tx_ring*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.adapter* @iflib_get_softc(i32 %7)
  store %struct.adapter* %8, %struct.adapter** %3, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 2
  %11 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %10, align 8
  store %struct.ix_tx_queue* %11, %struct.ix_tx_queue** %4, align 8
  %12 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %4, align 8
  %13 = icmp eq %struct.ix_tx_queue* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %55

15:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %38, %15
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.adapter*, %struct.adapter** %3, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %16
  %23 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %4, align 8
  %24 = getelementptr inbounds %struct.ix_tx_queue, %struct.ix_tx_queue* %23, i32 0, i32 0
  store %struct.tx_ring* %24, %struct.tx_ring** %6, align 8
  %25 = load %struct.tx_ring*, %struct.tx_ring** %6, align 8
  %26 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %25, i32 0, i32 0
  %27 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %26, align 8
  %28 = icmp eq %struct.ix_tx_queue* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %43

30:                                               ; preds = %22
  %31 = load %struct.tx_ring*, %struct.tx_ring** %6, align 8
  %32 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %31, i32 0, i32 0
  %33 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %32, align 8
  %34 = load i32, i32* @M_DEVBUF, align 4
  %35 = call i32 @free(%struct.ix_tx_queue* %33, i32 %34)
  %36 = load %struct.tx_ring*, %struct.tx_ring** %6, align 8
  %37 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %36, i32 0, i32 0
  store %struct.ix_tx_queue* null, %struct.ix_tx_queue** %37, align 8
  br label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  %41 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %4, align 8
  %42 = getelementptr inbounds %struct.ix_tx_queue, %struct.ix_tx_queue* %41, i32 1
  store %struct.ix_tx_queue* %42, %struct.ix_tx_queue** %4, align 8
  br label %16

43:                                               ; preds = %29, %16
  %44 = load %struct.adapter*, %struct.adapter** %3, align 8
  %45 = getelementptr inbounds %struct.adapter, %struct.adapter* %44, i32 0, i32 2
  %46 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %45, align 8
  %47 = icmp ne %struct.ix_tx_queue* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.adapter*, %struct.adapter** %3, align 8
  %50 = getelementptr inbounds %struct.adapter, %struct.adapter* %49, i32 0, i32 2
  %51 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %50, align 8
  %52 = load i32, i32* @M_DEVBUF, align 4
  %53 = call i32 @free(%struct.ix_tx_queue* %51, i32 %52)
  br label %54

54:                                               ; preds = %48, %43
  br label %55

55:                                               ; preds = %54, %14
  %56 = load %struct.adapter*, %struct.adapter** %3, align 8
  %57 = getelementptr inbounds %struct.adapter, %struct.adapter* %56, i32 0, i32 1
  %58 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %57, align 8
  %59 = icmp ne %struct.ix_tx_queue* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.adapter*, %struct.adapter** %3, align 8
  %62 = getelementptr inbounds %struct.adapter, %struct.adapter* %61, i32 0, i32 1
  %63 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %62, align 8
  %64 = load i32, i32* @M_DEVBUF, align 4
  %65 = call i32 @free(%struct.ix_tx_queue* %63, i32 %64)
  br label %66

66:                                               ; preds = %60, %55
  %67 = load %struct.adapter*, %struct.adapter** %3, align 8
  %68 = getelementptr inbounds %struct.adapter, %struct.adapter* %67, i32 0, i32 2
  store %struct.ix_tx_queue* null, %struct.ix_tx_queue** %68, align 8
  %69 = load %struct.adapter*, %struct.adapter** %3, align 8
  %70 = getelementptr inbounds %struct.adapter, %struct.adapter* %69, i32 0, i32 1
  store %struct.ix_tx_queue* null, %struct.ix_tx_queue** %70, align 8
  ret void
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @free(%struct.ix_tx_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
