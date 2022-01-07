; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_fini_scbdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_fini_scbdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { %struct.scb_data }
%struct.scb_data = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.map_node = type { i32, i32 }

@links = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*)* @ahd_fini_scbdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_fini_scbdata(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca %struct.scb_data*, align 8
  %4 = alloca %struct.map_node*, align 8
  %5 = alloca %struct.map_node*, align 8
  %6 = alloca %struct.map_node*, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  %7 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %8 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %7, i32 0, i32 0
  store %struct.scb_data* %8, %struct.scb_data** %3, align 8
  %9 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %10 = icmp eq %struct.scb_data* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %135

12:                                               ; preds = %1
  %13 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %14 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %16 [
    i32 7, label %17
    i32 6, label %56
    i32 5, label %95
    i32 4, label %134
    i32 3, label %134
    i32 2, label %134
    i32 1, label %134
    i32 0, label %134
  ]

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %12, %16
  br label %18

18:                                               ; preds = %23, %17
  %19 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %20 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %19, i32 0, i32 6
  %21 = call %struct.map_node* @SLIST_FIRST(i32* %20)
  store %struct.map_node* %21, %struct.map_node** %4, align 8
  %22 = icmp ne %struct.map_node* %21, null
  br i1 %22, label %23, label %50

23:                                               ; preds = %18
  %24 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %25 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %24, i32 0, i32 6
  %26 = load i32, i32* @links, align 4
  %27 = call i32 @SLIST_REMOVE_HEAD(i32* %25, i32 %26)
  %28 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %29 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %30 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.map_node*, %struct.map_node** %4, align 8
  %33 = getelementptr inbounds %struct.map_node, %struct.map_node* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @aic_dmamap_unload(%struct.ahd_softc* %28, i32 %31, i32 %34)
  %36 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %37 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %38 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.map_node*, %struct.map_node** %4, align 8
  %41 = getelementptr inbounds %struct.map_node, %struct.map_node* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.map_node*, %struct.map_node** %4, align 8
  %44 = getelementptr inbounds %struct.map_node, %struct.map_node* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @aic_dmamem_free(%struct.ahd_softc* %36, i32 %39, i32 %42, i32 %45)
  %47 = load %struct.map_node*, %struct.map_node** %4, align 8
  %48 = load i32, i32* @M_DEVBUF, align 4
  %49 = call i32 @free(%struct.map_node* %47, i32 %48)
  br label %18

50:                                               ; preds = %18
  %51 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %52 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %53 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @aic_dma_tag_destroy(%struct.ahd_softc* %51, i32 %54)
  br label %56

56:                                               ; preds = %12, %50
  br label %57

57:                                               ; preds = %62, %56
  %58 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %59 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %58, i32 0, i32 4
  %60 = call %struct.map_node* @SLIST_FIRST(i32* %59)
  store %struct.map_node* %60, %struct.map_node** %5, align 8
  %61 = icmp ne %struct.map_node* %60, null
  br i1 %61, label %62, label %89

62:                                               ; preds = %57
  %63 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %64 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %63, i32 0, i32 4
  %65 = load i32, i32* @links, align 4
  %66 = call i32 @SLIST_REMOVE_HEAD(i32* %64, i32 %65)
  %67 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %68 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %69 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.map_node*, %struct.map_node** %5, align 8
  %72 = getelementptr inbounds %struct.map_node, %struct.map_node* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @aic_dmamap_unload(%struct.ahd_softc* %67, i32 %70, i32 %73)
  %75 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %76 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %77 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.map_node*, %struct.map_node** %5, align 8
  %80 = getelementptr inbounds %struct.map_node, %struct.map_node* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.map_node*, %struct.map_node** %5, align 8
  %83 = getelementptr inbounds %struct.map_node, %struct.map_node* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @aic_dmamem_free(%struct.ahd_softc* %75, i32 %78, i32 %81, i32 %84)
  %86 = load %struct.map_node*, %struct.map_node** %5, align 8
  %87 = load i32, i32* @M_DEVBUF, align 4
  %88 = call i32 @free(%struct.map_node* %86, i32 %87)
  br label %57

89:                                               ; preds = %57
  %90 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %91 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %92 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @aic_dma_tag_destroy(%struct.ahd_softc* %90, i32 %93)
  br label %95

95:                                               ; preds = %12, %89
  br label %96

96:                                               ; preds = %101, %95
  %97 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %98 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %97, i32 0, i32 2
  %99 = call %struct.map_node* @SLIST_FIRST(i32* %98)
  store %struct.map_node* %99, %struct.map_node** %6, align 8
  %100 = icmp ne %struct.map_node* %99, null
  br i1 %100, label %101, label %128

101:                                              ; preds = %96
  %102 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %103 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %102, i32 0, i32 2
  %104 = load i32, i32* @links, align 4
  %105 = call i32 @SLIST_REMOVE_HEAD(i32* %103, i32 %104)
  %106 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %107 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %108 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.map_node*, %struct.map_node** %6, align 8
  %111 = getelementptr inbounds %struct.map_node, %struct.map_node* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @aic_dmamap_unload(%struct.ahd_softc* %106, i32 %109, i32 %112)
  %114 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %115 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %116 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.map_node*, %struct.map_node** %6, align 8
  %119 = getelementptr inbounds %struct.map_node, %struct.map_node* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.map_node*, %struct.map_node** %6, align 8
  %122 = getelementptr inbounds %struct.map_node, %struct.map_node* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @aic_dmamem_free(%struct.ahd_softc* %114, i32 %117, i32 %120, i32 %123)
  %125 = load %struct.map_node*, %struct.map_node** %6, align 8
  %126 = load i32, i32* @M_DEVBUF, align 4
  %127 = call i32 @free(%struct.map_node* %125, i32 %126)
  br label %96

128:                                              ; preds = %96
  %129 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %130 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %131 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @aic_dma_tag_destroy(%struct.ahd_softc* %129, i32 %132)
  br label %134

134:                                              ; preds = %12, %12, %12, %12, %12, %128
  br label %135

135:                                              ; preds = %11, %134
  ret void
}

declare dso_local %struct.map_node* @SLIST_FIRST(i32*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @aic_dmamap_unload(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @aic_dmamem_free(%struct.ahd_softc*, i32, i32, i32) #1

declare dso_local i32 @free(%struct.map_node*, i32) #1

declare dso_local i32 @aic_dma_tag_destroy(%struct.ahd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
