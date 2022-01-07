; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_free_rx_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_free_rx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, %struct.ena_ring* }
%struct.ena_ring = type { i32, %struct.TYPE_2__*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_adapter*, i32)* @ena_free_rx_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_free_rx_resources(%struct.ena_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.ena_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ena_ring*, align 8
  %6 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %7, i32 0, i32 1
  %9 = load %struct.ena_ring*, %struct.ena_ring** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %9, i64 %11
  store %struct.ena_ring* %12, %struct.ena_ring** %5, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %73, %2
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %16 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %76

19:                                               ; preds = %13
  %20 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %24 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %32 = call i32 @bus_dmamap_sync(i32 %22, i32 %30, i32 %31)
  %33 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %34 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @m_freem(i32* %40)
  %42 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %43 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32* null, i32** %48, align 8
  %49 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %53 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @bus_dmamap_unload(i32 %51, i32 %59)
  %61 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %65 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @bus_dmamap_destroy(i32 %63, i32 %71)
  br label %73

73:                                               ; preds = %19
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %13

76:                                               ; preds = %13
  %77 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %78 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %77, i32 0, i32 3
  %79 = call i32 @tcp_lro_free(i32* %78)
  %80 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %81 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %80, i32 0, i32 2
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* @M_DEVBUF, align 4
  %84 = call i32 @free(%struct.TYPE_2__* %82, i32 %83)
  %85 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %86 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %85, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %86, align 8
  %87 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %88 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* @M_DEVBUF, align 4
  %91 = call i32 @free(%struct.TYPE_2__* %89, i32 %90)
  %92 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %93 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %92, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %93, align 8
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @tcp_lro_free(i32*) #1

declare dso_local i32 @free(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
