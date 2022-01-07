; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_if_queues_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_if_queues_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.em_tx_queue*, %struct.em_tx_queue*, %struct.em_tx_queue* }
%struct.em_tx_queue = type { %struct.tx_ring }
%struct.tx_ring = type { %struct.em_tx_queue* }
%struct.em_rx_queue = type { %struct.tx_ring }

@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @em_if_queues_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em_if_queues_free(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.em_tx_queue*, align 8
  %5 = alloca %struct.em_rx_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tx_ring*, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.adapter* @iflib_get_softc(i32 %8)
  store %struct.adapter* %9, %struct.adapter** %3, align 8
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 3
  %12 = load %struct.em_tx_queue*, %struct.em_tx_queue** %11, align 8
  store %struct.em_tx_queue* %12, %struct.em_tx_queue** %4, align 8
  %13 = load %struct.adapter*, %struct.adapter** %3, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 2
  %15 = load %struct.em_tx_queue*, %struct.em_tx_queue** %14, align 8
  %16 = bitcast %struct.em_tx_queue* %15 to %struct.em_rx_queue*
  store %struct.em_rx_queue* %16, %struct.em_rx_queue** %5, align 8
  %17 = load %struct.em_tx_queue*, %struct.em_tx_queue** %4, align 8
  %18 = icmp ne %struct.em_tx_queue* %17, null
  br i1 %18, label %19, label %55

19:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %42, %19
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.adapter*, %struct.adapter** %3, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %20
  %27 = load %struct.em_tx_queue*, %struct.em_tx_queue** %4, align 8
  %28 = getelementptr inbounds %struct.em_tx_queue, %struct.em_tx_queue* %27, i32 0, i32 0
  store %struct.tx_ring* %28, %struct.tx_ring** %7, align 8
  %29 = load %struct.tx_ring*, %struct.tx_ring** %7, align 8
  %30 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %29, i32 0, i32 0
  %31 = load %struct.em_tx_queue*, %struct.em_tx_queue** %30, align 8
  %32 = icmp eq %struct.em_tx_queue* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %47

34:                                               ; preds = %26
  %35 = load %struct.tx_ring*, %struct.tx_ring** %7, align 8
  %36 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %35, i32 0, i32 0
  %37 = load %struct.em_tx_queue*, %struct.em_tx_queue** %36, align 8
  %38 = load i32, i32* @M_DEVBUF, align 4
  %39 = call i32 @free(%struct.em_tx_queue* %37, i32 %38)
  %40 = load %struct.tx_ring*, %struct.tx_ring** %7, align 8
  %41 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %40, i32 0, i32 0
  store %struct.em_tx_queue* null, %struct.em_tx_queue** %41, align 8
  br label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  %45 = load %struct.em_tx_queue*, %struct.em_tx_queue** %4, align 8
  %46 = getelementptr inbounds %struct.em_tx_queue, %struct.em_tx_queue* %45, i32 1
  store %struct.em_tx_queue* %46, %struct.em_tx_queue** %4, align 8
  br label %20

47:                                               ; preds = %33, %20
  %48 = load %struct.adapter*, %struct.adapter** %3, align 8
  %49 = getelementptr inbounds %struct.adapter, %struct.adapter* %48, i32 0, i32 3
  %50 = load %struct.em_tx_queue*, %struct.em_tx_queue** %49, align 8
  %51 = load i32, i32* @M_DEVBUF, align 4
  %52 = call i32 @free(%struct.em_tx_queue* %50, i32 %51)
  %53 = load %struct.adapter*, %struct.adapter** %3, align 8
  %54 = getelementptr inbounds %struct.adapter, %struct.adapter* %53, i32 0, i32 3
  store %struct.em_tx_queue* null, %struct.em_tx_queue** %54, align 8
  br label %55

55:                                               ; preds = %47, %1
  %56 = load %struct.em_rx_queue*, %struct.em_rx_queue** %5, align 8
  %57 = icmp ne %struct.em_rx_queue* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load %struct.adapter*, %struct.adapter** %3, align 8
  %60 = getelementptr inbounds %struct.adapter, %struct.adapter* %59, i32 0, i32 2
  %61 = load %struct.em_tx_queue*, %struct.em_tx_queue** %60, align 8
  %62 = load i32, i32* @M_DEVBUF, align 4
  %63 = call i32 @free(%struct.em_tx_queue* %61, i32 %62)
  %64 = load %struct.adapter*, %struct.adapter** %3, align 8
  %65 = getelementptr inbounds %struct.adapter, %struct.adapter* %64, i32 0, i32 2
  store %struct.em_tx_queue* null, %struct.em_tx_queue** %65, align 8
  br label %66

66:                                               ; preds = %58, %55
  %67 = load %struct.adapter*, %struct.adapter** %3, align 8
  %68 = call i32 @em_release_hw_control(%struct.adapter* %67)
  %69 = load %struct.adapter*, %struct.adapter** %3, align 8
  %70 = getelementptr inbounds %struct.adapter, %struct.adapter* %69, i32 0, i32 1
  %71 = load %struct.em_tx_queue*, %struct.em_tx_queue** %70, align 8
  %72 = icmp ne %struct.em_tx_queue* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %66
  %74 = load %struct.adapter*, %struct.adapter** %3, align 8
  %75 = getelementptr inbounds %struct.adapter, %struct.adapter* %74, i32 0, i32 1
  %76 = load %struct.em_tx_queue*, %struct.em_tx_queue** %75, align 8
  %77 = load i32, i32* @M_DEVBUF, align 4
  %78 = call i32 @free(%struct.em_tx_queue* %76, i32 %77)
  br label %79

79:                                               ; preds = %73, %66
  ret void
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @free(%struct.em_tx_queue*, i32) #1

declare dso_local i32 @em_release_hw_control(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
