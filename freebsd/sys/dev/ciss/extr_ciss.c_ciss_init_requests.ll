; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_init_requests.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_init_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_softc = type { i32, i32, i64, i64, %struct.ciss_request*, i32, i32, i32, %struct.TYPE_2__* }
%struct.ciss_request = type { i32, i32, i64, %struct.ciss_command*, %struct.ciss_softc* }
%struct.ciss_command = type { i32 }
%struct.TYPE_2__ = type { i32 }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"using %d of %d available commands\0A\00", align 1
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@CISS_COMMAND_ALLOC_SIZE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"can't allocate command DMA tag\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"can't allocate command memory\0A\00", align 1
@ciss_command_map_helper = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ciss_softc*)* @ciss_init_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciss_init_requests(%struct.ciss_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ciss_softc*, align 8
  %4 = alloca %struct.ciss_request*, align 8
  %5 = alloca i32, align 4
  store %struct.ciss_softc* %0, %struct.ciss_softc** %3, align 8
  %6 = call i32 @debug_called(i32 1)
  %7 = load i64, i64* @bootverbose, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %11 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %15 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %14, i32 0, i32 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %10, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %18)
  br label %20

20:                                               ; preds = %9, %1
  %21 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %25 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %26 = load i32, i32* @CISS_COMMAND_ALLOC_SIZE, align 4
  %27 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = mul nsw i32 %26, %29
  %31 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %32 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %33 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %32, i32 0, i32 6
  %34 = call i64 @bus_dma_tag_create(i32 %23, i32 32, i32 0, i32 %24, i32 %25, i32* null, i32* null, i32 %30, i32 1, i32 %31, i32 0, i32* null, i32* null, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %20
  %37 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %38 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @ENOMEM, align 4
  store i32 %39, i32* %2, align 4
  br label %136

40:                                               ; preds = %20
  %41 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %42 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %45 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %44, i32 0, i32 3
  %46 = bitcast i64* %45 to i8**
  %47 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %48 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %49 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %48, i32 0, i32 5
  %50 = call i64 @bus_dmamem_alloc(i32 %43, i8** %46, i32 %47, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %40
  %53 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %54 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @ENOMEM, align 4
  store i32 %55, i32* %2, align 4
  br label %136

56:                                               ; preds = %40
  %57 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %58 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %61 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %64 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @CISS_COMMAND_ALLOC_SIZE, align 4
  %67 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %68 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = mul nsw i32 %66, %69
  %71 = load i32, i32* @ciss_command_map_helper, align 4
  %72 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %73 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %72, i32 0, i32 2
  %74 = call i32 @bus_dmamap_load(i32 %59, i32 %62, i64 %65, i32 %70, i32 %71, i64* %73, i32 0)
  %75 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %76 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* @CISS_COMMAND_ALLOC_SIZE, align 4
  %79 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %80 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = mul nsw i32 %78, %81
  %83 = call i32 @bzero(i64 %77, i32 %82)
  store i32 1, i32* %5, align 4
  br label %84

84:                                               ; preds = %132, %56
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %87 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %135

90:                                               ; preds = %84
  %91 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %92 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %91, i32 0, i32 4
  %93 = load %struct.ciss_request*, %struct.ciss_request** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %93, i64 %95
  store %struct.ciss_request* %96, %struct.ciss_request** %4, align 8
  %97 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %98 = load %struct.ciss_request*, %struct.ciss_request** %4, align 8
  %99 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %98, i32 0, i32 4
  store %struct.ciss_softc* %97, %struct.ciss_softc** %99, align 8
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.ciss_request*, %struct.ciss_request** %4, align 8
  %102 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %104 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* @CISS_COMMAND_ALLOC_SIZE, align 4
  %107 = load i32, i32* %5, align 4
  %108 = mul nsw i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = add i64 %105, %109
  %111 = inttoptr i64 %110 to %struct.ciss_command*
  %112 = load %struct.ciss_request*, %struct.ciss_request** %4, align 8
  %113 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %112, i32 0, i32 3
  store %struct.ciss_command* %111, %struct.ciss_command** %113, align 8
  %114 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %115 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* @CISS_COMMAND_ALLOC_SIZE, align 4
  %118 = load i32, i32* %5, align 4
  %119 = mul nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %116, %120
  %122 = load %struct.ciss_request*, %struct.ciss_request** %4, align 8
  %123 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %122, i32 0, i32 2
  store i64 %121, i64* %123, align 8
  %124 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %125 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.ciss_request*, %struct.ciss_request** %4, align 8
  %128 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %127, i32 0, i32 1
  %129 = call i32 @bus_dmamap_create(i32 %126, i32 0, i32* %128)
  %130 = load %struct.ciss_request*, %struct.ciss_request** %4, align 8
  %131 = call i32 @ciss_enqueue_free(%struct.ciss_request* %130)
  br label %132

132:                                              ; preds = %90
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %5, align 4
  br label %84

135:                                              ; preds = %84
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %135, %52, %36
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @ciss_printf(%struct.ciss_softc*, i8*, ...) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i64, i32, i32, i64*, i32) #1

declare dso_local i32 @bzero(i64, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @ciss_enqueue_free(%struct.ciss_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
