; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_free_tx_bufs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_free_tx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, i32, %struct.ena_ring* }
%struct.ena_ring = type { i32, %struct.ena_tx_buffer* }
%struct.ena_tx_buffer = type { i32, i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"free uncompleted tx mbuf qid %d idx 0x%x\0A\00", align 1
@ENA_DBG = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_adapter*, i32)* @ena_free_tx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_free_tx_bufs(%struct.ena_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.ena_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ena_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ena_tx_buffer*, align 8
  store %struct.ena_adapter* %0, %struct.ena_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %9 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %9, i32 0, i32 2
  %11 = load %struct.ena_ring*, %struct.ena_ring** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %11, i64 %13
  store %struct.ena_ring* %14, %struct.ena_ring** %6, align 8
  %15 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %16 = call i32 @ENA_RING_MTX_LOCK(%struct.ena_ring* %15)
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %103, %2
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %20 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %106

23:                                               ; preds = %17
  %24 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %25 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %24, i32 0, i32 1
  %26 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %26, i64 %28
  store %struct.ena_tx_buffer* %29, %struct.ena_tx_buffer** %8, align 8
  %30 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %8, align 8
  %31 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %103

35:                                               ; preds = %23
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  store i32 0, i32* %5, align 4
  br label %50

45:                                               ; preds = %35
  %46 = load i32, i32* @ENA_DBG, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @ena_trace(i32 %46, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %38
  %51 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %8, align 8
  %52 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %73

55:                                               ; preds = %50
  %56 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %57 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %8, align 8
  %60 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %63 = call i32 @bus_dmamap_sync(i32 %58, i32 %61, i32 %62)
  %64 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %65 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %8, align 8
  %68 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @bus_dmamap_unload(i32 %66, i32 %69)
  %71 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %8, align 8
  %72 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
  br label %73

73:                                               ; preds = %55, %50
  %74 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %8, align 8
  %75 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %96

78:                                               ; preds = %73
  %79 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %80 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %8, align 8
  %83 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %86 = call i32 @bus_dmamap_sync(i32 %81, i32 %84, i32 %85)
  %87 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %88 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %8, align 8
  %91 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @bus_dmamap_unload(i32 %89, i32 %92)
  %94 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %8, align 8
  %95 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %94, i32 0, i32 1
  store i32 0, i32* %95, align 4
  br label %96

96:                                               ; preds = %78, %73
  %97 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %8, align 8
  %98 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @m_free(i32* %99)
  %101 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %8, align 8
  %102 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %101, i32 0, i32 2
  store i32* null, i32** %102, align 8
  br label %103

103:                                              ; preds = %96, %34
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %17

106:                                              ; preds = %17
  %107 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %108 = call i32 @ENA_RING_MTX_UNLOCK(%struct.ena_ring* %107)
  ret void
}

declare dso_local i32 @ENA_RING_MTX_LOCK(%struct.ena_ring*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @ena_trace(i32, i8*, i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_free(i32*) #1

declare dso_local i32 @ENA_RING_MTX_UNLOCK(%struct.ena_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
