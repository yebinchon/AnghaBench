; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_fini_scbdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_fini_scbdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { %struct.scb_data* }
%struct.scb_data = type { i32, %struct.sg_map_node*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sg_map_node = type { i32, i32 }

@links = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*)* @ahc_fini_scbdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_fini_scbdata(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  %3 = alloca %struct.scb_data*, align 8
  %4 = alloca %struct.sg_map_node*, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  %5 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %5, i32 0, i32 0
  %7 = load %struct.scb_data*, %struct.scb_data** %6, align 8
  store %struct.scb_data* %7, %struct.scb_data** %3, align 8
  %8 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %9 = icmp eq %struct.scb_data* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %121

11:                                               ; preds = %1
  %12 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %13 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %15 [
    i32 7, label %16
    i32 6, label %55
    i32 5, label %64
    i32 4, label %76
    i32 3, label %82
    i32 2, label %91
    i32 1, label %103
    i32 0, label %109
  ]

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %11, %15
  br label %17

17:                                               ; preds = %22, %16
  %18 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %19 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %18, i32 0, i32 9
  %20 = call %struct.sg_map_node* @SLIST_FIRST(i32* %19)
  store %struct.sg_map_node* %20, %struct.sg_map_node** %4, align 8
  %21 = icmp ne %struct.sg_map_node* %20, null
  br i1 %21, label %22, label %49

22:                                               ; preds = %17
  %23 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %24 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %23, i32 0, i32 9
  %25 = load i32, i32* @links, align 4
  %26 = call i32 @SLIST_REMOVE_HEAD(i32* %24, i32 %25)
  %27 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %28 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %29 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.sg_map_node*, %struct.sg_map_node** %4, align 8
  %32 = getelementptr inbounds %struct.sg_map_node, %struct.sg_map_node* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @aic_dmamap_unload(%struct.ahc_softc* %27, i32 %30, i32 %33)
  %35 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %36 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %37 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.sg_map_node*, %struct.sg_map_node** %4, align 8
  %40 = getelementptr inbounds %struct.sg_map_node, %struct.sg_map_node* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sg_map_node*, %struct.sg_map_node** %4, align 8
  %43 = getelementptr inbounds %struct.sg_map_node, %struct.sg_map_node* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @aic_dmamem_free(%struct.ahc_softc* %35, i32 %38, i32 %41, i32 %44)
  %46 = load %struct.sg_map_node*, %struct.sg_map_node** %4, align 8
  %47 = load i32, i32* @M_DEVBUF, align 4
  %48 = call i32 @free(%struct.sg_map_node* %46, i32 %47)
  br label %17

49:                                               ; preds = %17
  %50 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %51 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %52 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @aic_dma_tag_destroy(%struct.ahc_softc* %50, i32 %53)
  br label %55

55:                                               ; preds = %11, %49
  %56 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %57 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %58 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %61 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @aic_dmamap_unload(%struct.ahc_softc* %56, i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %11, %55
  %65 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %66 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %67 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %70 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %73 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @aic_dmamem_free(%struct.ahc_softc* %65, i32 %68, i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %11, %64
  %77 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %78 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %79 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @aic_dma_tag_destroy(%struct.ahc_softc* %77, i32 %80)
  br label %82

82:                                               ; preds = %11, %76
  %83 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %84 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %85 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %88 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @aic_dmamap_unload(%struct.ahc_softc* %83, i32 %86, i32 %89)
  br label %91

91:                                               ; preds = %11, %82
  %92 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %93 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %94 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %97 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %100 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @aic_dmamem_free(%struct.ahc_softc* %92, i32 %95, i32 %98, i32 %101)
  br label %103

103:                                              ; preds = %11, %91
  %104 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %105 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %106 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @aic_dma_tag_destroy(%struct.ahc_softc* %104, i32 %107)
  br label %110

109:                                              ; preds = %11
  br label %110

110:                                              ; preds = %109, %103
  %111 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %112 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %111, i32 0, i32 1
  %113 = load %struct.sg_map_node*, %struct.sg_map_node** %112, align 8
  %114 = icmp ne %struct.sg_map_node* %113, null
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %117 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %116, i32 0, i32 1
  %118 = load %struct.sg_map_node*, %struct.sg_map_node** %117, align 8
  %119 = load i32, i32* @M_DEVBUF, align 4
  %120 = call i32 @free(%struct.sg_map_node* %118, i32 %119)
  br label %121

121:                                              ; preds = %10, %115, %110
  ret void
}

declare dso_local %struct.sg_map_node* @SLIST_FIRST(i32*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @aic_dmamap_unload(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @aic_dmamem_free(%struct.ahc_softc*, i32, i32, i32) #1

declare dso_local i32 @free(%struct.sg_map_node*, i32) #1

declare dso_local i32 @aic_dma_tag_destroy(%struct.ahc_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
