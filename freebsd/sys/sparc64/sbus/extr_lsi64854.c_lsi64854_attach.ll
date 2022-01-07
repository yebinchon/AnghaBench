; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sbus/extr_lsi64854.c_lsi64854_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sbus/extr_lsi64854.c_lsi64854_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lsi64854_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, %struct.ncr53c9x_softc* }
%struct.ncr53c9x_softc = type { i32, i32 }

@MAX_DMA_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"mutex not initialized\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32* null, align 8
@lsi64854_scsi_intr = common dso_local global i32 0, align 4
@lsi64854_setup = common dso_local global i32* null, align 8
@lsi64854_enet_intr = common dso_local global i32 0, align 4
@lsi64854_pp_intr = common dso_local global i32 0, align 4
@lsi64854_setup_pp = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"unknown channel\0A\00", align 1
@lsi64854_reset = common dso_local global i32 0, align 4
@BOUNDARY = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"cannot allocate buffer DMA tag\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"DMA map create failed\0A\00", align 1
@L64854_DEVID = common dso_local global i32 0, align 4
@DMAREV_HME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"DMA rev. \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ESC\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"1+\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"unknown (0x%x)\00", align 1
@LDB_ANY = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c", burst 0x%x, csr 0x%x\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsi64854_attach(%struct.lsi64854_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lsi64854_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ncr53c9x_softc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lsi64854_softc* %0, %struct.lsi64854_softc** %3, align 8
  store i32* null, i32** %4, align 8
  store i8* null, i8** %6, align 8
  %9 = load i32, i32* @MAX_DMA_SZ, align 4
  %10 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %3, align 8
  %11 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %10, i32 0, i32 6
  store i32 %9, i32* %11, align 8
  %12 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %3, align 8
  %13 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %55 [
    i32 128, label %15
    i32 130, label %44
    i32 129, label %48
  ]

15:                                               ; preds = %1
  %16 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %3, align 8
  %17 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %16, i32 0, i32 11
  %18 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %17, align 8
  store %struct.ncr53c9x_softc* %18, %struct.ncr53c9x_softc** %5, align 8
  %19 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %20 = call i32 @NCR_LOCK_INITIALIZED(%struct.ncr53c9x_softc* %19)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %3, align 8
  %24 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %2, align 4
  br label %162

28:                                               ; preds = %15
  %29 = load i32*, i32** @busdma_lock_mutex, align 8
  store i32* %29, i32** %4, align 8
  %30 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %31 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %30, i32 0, i32 1
  %32 = bitcast i32* %31 to i8*
  store i8* %32, i8** %6, align 8
  %33 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %34 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %3, align 8
  %37 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @lsi64854_scsi_intr, align 4
  %39 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %3, align 8
  %40 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %39, i32 0, i32 10
  store i32 %38, i32* %40, align 4
  %41 = load i32*, i32** @lsi64854_setup, align 8
  %42 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %3, align 8
  %43 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %42, i32 0, i32 8
  store i32* %41, i32** %43, align 8
  br label %60

44:                                               ; preds = %1
  %45 = load i32, i32* @lsi64854_enet_intr, align 4
  %46 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %3, align 8
  %47 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %46, i32 0, i32 10
  store i32 %45, i32* %47, align 4
  br label %60

48:                                               ; preds = %1
  %49 = load i32, i32* @lsi64854_pp_intr, align 4
  %50 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %3, align 8
  %51 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %50, i32 0, i32 10
  store i32 %49, i32* %51, align 4
  %52 = load i32*, i32** @lsi64854_setup_pp, align 8
  %53 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %3, align 8
  %54 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %53, i32 0, i32 8
  store i32* %52, i32** %54, align 8
  br label %60

55:                                               ; preds = %1
  %56 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %3, align 8
  %57 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @device_printf(i32 %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %55, %48, %44, %28
  %61 = load i32, i32* @lsi64854_reset, align 4
  %62 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %3, align 8
  %63 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %62, i32 0, i32 9
  store i32 %61, i32* %63, align 8
  %64 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %3, align 8
  %65 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %64, i32 0, i32 8
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %115

68:                                               ; preds = %60
  %69 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %3, align 8
  %70 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @BOUNDARY, align 4
  %73 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %74 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %75 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %3, align 8
  %76 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %3, align 8
  %79 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %82 = load i32*, i32** %4, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %3, align 8
  %85 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %84, i32 0, i32 4
  %86 = call i32 @bus_dma_tag_create(i32 %71, i32 1, i32 %72, i32 %73, i32 %74, i32* null, i32* null, i32 %77, i32 1, i32 %80, i32 %81, i32* %82, i8* %83, i32* %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %68
  %90 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %3, align 8
  %91 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @device_printf(i32 %92, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %2, align 4
  br label %162

95:                                               ; preds = %68
  %96 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %3, align 8
  %97 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %3, align 8
  %100 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %99, i32 0, i32 5
  %101 = call i32 @bus_dmamap_create(i32 %98, i32 0, i32* %100)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %95
  %105 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %3, align 8
  %106 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @device_printf(i32 %107, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %109 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %3, align 8
  %110 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @bus_dma_tag_destroy(i32 %111)
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %2, align 4
  br label %162

114:                                              ; preds = %95
  br label %115

115:                                              ; preds = %114, %60
  %116 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %3, align 8
  %117 = call i32 @L64854_GCSR(%struct.lsi64854_softc* %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @L64854_DEVID, align 4
  %120 = and i32 %118, %119
  %121 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %3, align 8
  %122 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %3, align 8
  %124 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @DMAREV_HME, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %115
  store i32 0, i32* %2, align 4
  br label %162

129:                                              ; preds = %115
  %130 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %3, align 8
  %131 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @device_printf(i32 %132, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %134 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %3, align 8
  %135 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  switch i32 %136, label %147 [
    i32 135, label %137
    i32 132, label %139
    i32 134, label %141
    i32 131, label %143
    i32 133, label %145
  ]

137:                                              ; preds = %129
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %152

139:                                              ; preds = %129
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  br label %152

141:                                              ; preds = %129
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %152

143:                                              ; preds = %129
  %144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %152

145:                                              ; preds = %129
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %152

147:                                              ; preds = %129
  %148 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %3, align 8
  %149 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %147, %145, %143, %141, %139, %137
  %153 = load i32, i32* @LDB_ANY, align 4
  %154 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %3, align 8
  %155 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = inttoptr i64 %158 to i8*
  %160 = call i32 @DPRINTF(i32 %153, i8* %159)
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %162

162:                                              ; preds = %152, %128, %104, %89, %22
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i32 @NCR_LOCK_INITIALIZED(%struct.ncr53c9x_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i8*, i32*) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @L64854_GCSR(%struct.lsi64854_softc*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @DPRINTF(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
