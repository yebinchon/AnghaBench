; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-desc.c_xgbe_free_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-desc.c_xgbe_free_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32 }
%struct.xgbe_ring = type { i32, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.xgbe_ring_data = type { i32 }

@M_AXGBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*, %struct.xgbe_ring*)* @xgbe_free_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_free_ring(%struct.xgbe_prv_data* %0, %struct.xgbe_ring* %1) #0 {
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca %struct.xgbe_ring*, align 8
  %5 = alloca %struct.xgbe_ring_data*, align 8
  %6 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  store %struct.xgbe_ring* %1, %struct.xgbe_ring** %4, align 8
  %7 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %8 = icmp ne %struct.xgbe_ring* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %83

10:                                               ; preds = %2
  %11 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %12 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %11, i32 0, i32 5
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %15 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %14, i32 0, i32 6
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @bus_dmamap_destroy(i32* %13, i32* %16)
  %18 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %19 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %18, i32 0, i32 5
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @bus_dma_tag_destroy(i32* %20)
  %22 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %23 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %22, i32 0, i32 6
  store i32* null, i32** %23, align 8
  %24 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %25 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %24, i32 0, i32 5
  store i32* null, i32** %25, align 8
  %26 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %27 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %55

30:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %44, %30
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %34 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring* %38, i32 %39)
  store %struct.xgbe_ring_data* %40, %struct.xgbe_ring_data** %5, align 8
  %41 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %42 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %5, align 8
  %43 = call i32 @xgbe_unmap_rdata(%struct.xgbe_prv_data* %41, %struct.xgbe_ring_data* %42)
  br label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %6, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %31

47:                                               ; preds = %31
  %48 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %49 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @M_AXGBE, align 4
  %52 = call i32 @free(i32* %50, i32 %51)
  %53 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %54 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %53, i32 0, i32 4
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %47, %10
  %56 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %57 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %60 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @bus_dmamap_unload(i32* %58, i32* %61)
  %63 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %64 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %67 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %70 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @bus_dmamem_free(i32* %65, i32* %68, i32* %71)
  %73 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %74 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @bus_dma_tag_destroy(i32* %75)
  %77 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %78 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %77, i32 0, i32 3
  store i32* null, i32** %78, align 8
  %79 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %80 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %79, i32 0, i32 2
  store i32* null, i32** %80, align 8
  %81 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %82 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %81, i32 0, i32 1
  store i32* null, i32** %82, align 8
  br label %83

83:                                               ; preds = %55, %9
  ret void
}

declare dso_local i32 @bus_dmamap_destroy(i32*, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring*, i32) #1

declare dso_local i32 @xgbe_unmap_rdata(%struct.xgbe_prv_data*, %struct.xgbe_ring_data*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32*) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
