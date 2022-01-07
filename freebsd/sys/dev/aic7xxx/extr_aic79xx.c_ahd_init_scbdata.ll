; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_init_scbdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_init_scbdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, %struct.scb_data }
%struct.scb_data = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }

@AHD_NUM_TARGETS = common dso_local global i32 0, align 4
@AHD_NUM_LUNS_NONPKT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s: No SCB space found\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i64 0, align 8
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"%s: ahd_init_scbdata - Unable to allocate initial scbs\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AHD_SHOW_MEMORY = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahd_softc*)* @ahd_init_scbdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahd_init_scbdata(%struct.ahd_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca %struct.scb_data*, align 8
  %5 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  %6 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %6, i32 0, i32 1
  store %struct.scb_data* %7, %struct.scb_data** %4, align 8
  %8 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %9 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %8, i32 0, i32 11
  %10 = call i32 @TAILQ_INIT(i32* %9)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %25, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @AHD_NUM_TARGETS, align 4
  %14 = load i32, i32* @AHD_NUM_LUNS_NONPKT, align 4
  %15 = mul nsw i32 %13, %14
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %11
  %18 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %19 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %18, i32 0, i32 10
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @LIST_INIT(i32* %23)
  br label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %11

28:                                               ; preds = %11
  %29 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %30 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %29, i32 0, i32 9
  %31 = call i32 @LIST_INIT(i32* %30)
  %32 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %33 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %32, i32 0, i32 8
  %34 = call i32 @SLIST_INIT(i32* %33)
  %35 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %36 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %35, i32 0, i32 7
  %37 = call i32 @SLIST_INIT(i32* %36)
  %38 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %39 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %38, i32 0, i32 6
  %40 = call i32 @SLIST_INIT(i32* %39)
  %41 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %42 = call i64 @ahd_probe_scbs(%struct.ahd_softc* %41)
  %43 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %44 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %46 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %28
  %50 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %51 = call i8* @ahd_name(%struct.ahd_softc* %50)
  %52 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %51)
  %53 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %54 = call i32 @AHD_FATAL_ERROR(%struct.ahd_softc* %53)
  %55 = load i32, i32* @ENXIO, align 4
  store i32 %55, i32* %2, align 4
  br label %137

56:                                               ; preds = %28
  %57 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %58 = call i32 @ahd_initialize_hscbs(%struct.ahd_softc* %57)
  %59 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %60 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %61 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %64 = add nsw i64 %63, 1
  %65 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %66 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %67 = load i32, i32* @PAGE_SIZE, align 4
  %68 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %69 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %70 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %69, i32 0, i32 5
  %71 = call i64 @aic_dma_tag_create(%struct.ahd_softc* %59, i32 %62, i32 1, i64 %64, i64 %65, i32 %66, i32* null, i32* null, i32 %67, i32 1, i32 %68, i32 0, i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %56
  br label %135

74:                                               ; preds = %56
  %75 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %76 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  %79 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %80 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %81 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %84 = add nsw i64 %83, 1
  %85 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %86 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %87 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %88 = call i32 @ahd_sglist_allocsize(%struct.ahd_softc* %87)
  %89 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %90 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %91 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %90, i32 0, i32 4
  %92 = call i64 @aic_dma_tag_create(%struct.ahd_softc* %79, i32 %82, i32 8, i64 %84, i64 %85, i32 %86, i32* null, i32* null, i32 %88, i32 1, i32 %89, i32 0, i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %74
  br label %135

95:                                               ; preds = %74
  %96 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %97 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 8
  %100 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %101 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %102 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %105 = add nsw i64 %104, 1
  %106 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %107 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %108 = load i32, i32* @PAGE_SIZE, align 4
  %109 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %110 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %111 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %110, i32 0, i32 3
  %112 = call i64 @aic_dma_tag_create(%struct.ahd_softc* %100, i32 %103, i32 1, i64 %105, i64 %106, i32 %107, i32* null, i32* null, i32 %108, i32 1, i32 %109, i32 0, i32* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %95
  br label %135

115:                                              ; preds = %95
  %116 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %117 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 8
  br label %120

120:                                              ; preds = %124, %115
  %121 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %122 = call i64 @ahd_alloc_scbs(%struct.ahd_softc* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  br label %120

125:                                              ; preds = %120
  %126 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %127 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %132 = call i8* @ahd_name(%struct.ahd_softc* %131)
  %133 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* %132)
  br label %135

134:                                              ; preds = %125
  store i32 0, i32* %2, align 4
  br label %137

135:                                              ; preds = %130, %114, %94, %73
  %136 = load i32, i32* @ENOMEM, align 4
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %135, %134, %49
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i64 @ahd_probe_scbs(%struct.ahd_softc*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @AHD_FATAL_ERROR(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_initialize_hscbs(%struct.ahd_softc*) #1

declare dso_local i64 @aic_dma_tag_create(%struct.ahd_softc*, i32, i32, i64, i64, i32, i32*, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ahd_sglist_allocsize(%struct.ahd_softc*) #1

declare dso_local i64 @ahd_alloc_scbs(%struct.ahd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
