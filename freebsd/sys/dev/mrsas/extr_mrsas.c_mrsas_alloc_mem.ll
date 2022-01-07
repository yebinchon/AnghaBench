; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_alloc_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_alloc_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32, i32, i32, i64, i32, i32, i32, i32*, i32, i32*, i32, i32, i32, i32*, i32, i32, i32, i32*, i32, i32, i32, i32*, i32, i32, i32, i32*, i32, i32, i32, i32*, i32, i32, i32, i32*, i32, i32, i32, i32* }

@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@MAXPHYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Cannot allocate parent DMA tag\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MRSAS_MAX_NAME_LENGTH = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Cannot allocate verbuf DMA tag\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Cannot allocate verbuf memory\0A\00", align 1
@mrsas_addr_cb = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Cannot load verbuf DMA map\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Cannot create IO request tag\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Cannot alloc IO request memory\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Cannot load IO request memory\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Cannot create chain frame tag\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Cannot alloc chain frame memory\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Cannot load chain frame memory\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Cannot create reply descriptor tag\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"Cannot alloc reply descriptor memory\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"Cannot load reply descriptor memory\0A\00", align 1
@MRSAS_SENSE_LEN = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [31 x i8] c"Cannot allocate sense buf tag\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"Cannot allocate sense buf memory\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"Cannot load sense buf memory\0A\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"Cannot create Event detail tag\0A\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"Cannot alloc Event detail buffer memory\0A\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"Cannot load Event detail buffer memory\0A\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"Cannot create PD INFO tag\0A\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"Cannot alloc PD INFO buffer memory\0A\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"Cannot load PD INFO buffer memory\0A\00", align 1
@busdma_lock_mutex = common dso_local global i32* null, align 8
@.str.22 = private unnamed_addr constant [28 x i8] c"Cannot create data dma tag\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mrsas_softc*)* @mrsas_alloc_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrsas_alloc_mem(%struct.mrsas_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mrsas_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %3, align 8
  %12 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %13 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %14 = load i32, i32* @MAXPHYS, align 4
  %15 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %16 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @MAXPHYS, align 4
  %19 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %20 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %19, i32 0, i32 9
  %21 = call i64 @bus_dma_tag_create(i32* null, i32 1, i32 0, i32 %12, i32 %13, i32* null, i32* null, i32 %14, i32 %17, i32 %18, i32 0, i32* null, i32* null, i32** %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %25 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @device_printf(i32 %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  store i32 %28, i32* %2, align 4
  br label %532

29:                                               ; preds = %1
  %30 = load i32, i32* @MRSAS_MAX_NAME_LENGTH, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %4, align 4
  %34 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %35 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %34, i32 0, i32 9
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %38 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %42 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %43 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %42, i32 0, i32 37
  %44 = call i64 @bus_dma_tag_create(i32* %36, i32 1, i32 0, i32 %37, i32 %38, i32* null, i32* null, i32 %39, i32 1, i32 %40, i32 %41, i32* null, i32* null, i32** %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %29
  %47 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %48 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @ENOMEM, align 4
  store i32 %51, i32* %2, align 4
  br label %532

52:                                               ; preds = %29
  %53 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %54 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %53, i32 0, i32 37
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %57 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %56, i32 0, i32 35
  %58 = bitcast i32* %57 to i8**
  %59 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %60 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %61 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %60, i32 0, i32 36
  %62 = call i64 @bus_dmamem_alloc(i32* %55, i8** %58, i32 %59, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %52
  %65 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %66 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @ENOMEM, align 4
  store i32 %69, i32* %2, align 4
  br label %532

70:                                               ; preds = %52
  %71 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %72 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %71, i32 0, i32 35
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @bzero(i32 %73, i32 %74)
  %76 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %77 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %76, i32 0, i32 37
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %80 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %79, i32 0, i32 36
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %83 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %82, i32 0, i32 35
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @mrsas_addr_cb, align 4
  %87 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %88 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %87, i32 0, i32 34
  %89 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %90 = call i64 @bus_dmamap_load(i32* %78, i32 %81, i32 %84, i32 %85, i32 %86, i32* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %70
  %93 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %94 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @device_printf(i32 %95, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %97 = load i32, i32* @ENOMEM, align 4
  store i32 %97, i32* %2, align 4
  br label %532

98:                                               ; preds = %70
  %99 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %100 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %5, align 4
  %102 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %103 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %102, i32 0, i32 9
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %106 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %110 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %111 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %110, i32 0, i32 33
  %112 = call i64 @bus_dma_tag_create(i32* %104, i32 16, i32 0, i32 %105, i32 %106, i32* null, i32* null, i32 %107, i32 1, i32 %108, i32 %109, i32* null, i32* null, i32** %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %98
  %115 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %116 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @device_printf(i32 %117, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %119 = load i32, i32* @ENOMEM, align 4
  store i32 %119, i32* %2, align 4
  br label %532

120:                                              ; preds = %98
  %121 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %122 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %121, i32 0, i32 33
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %125 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %124, i32 0, i32 31
  %126 = bitcast i32* %125 to i8**
  %127 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %128 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %129 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %128, i32 0, i32 32
  %130 = call i64 @bus_dmamem_alloc(i32* %123, i8** %126, i32 %127, i32* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %120
  %133 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %134 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @device_printf(i32 %135, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %137 = load i32, i32* @ENOMEM, align 4
  store i32 %137, i32* %2, align 4
  br label %532

138:                                              ; preds = %120
  %139 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %140 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %139, i32 0, i32 31
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @bzero(i32 %141, i32 %142)
  %144 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %145 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %144, i32 0, i32 33
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %148 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %147, i32 0, i32 32
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %151 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %150, i32 0, i32 31
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %5, align 4
  %154 = load i32, i32* @mrsas_addr_cb, align 4
  %155 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %156 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %155, i32 0, i32 30
  %157 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %158 = call i64 @bus_dmamap_load(i32* %146, i32 %149, i32 %152, i32 %153, i32 %154, i32* %156, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %138
  %161 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %162 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @device_printf(i32 %163, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %165 = load i32, i32* @ENOMEM, align 4
  store i32 %165, i32* %2, align 4
  br label %532

166:                                              ; preds = %138
  %167 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %168 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  store i32 %169, i32* %8, align 4
  %170 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %171 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %170, i32 0, i32 9
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %174 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %178 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %179 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %178, i32 0, i32 29
  %180 = call i64 @bus_dma_tag_create(i32* %172, i32 4, i32 0, i32 %173, i32 %174, i32* null, i32* null, i32 %175, i32 1, i32 %176, i32 %177, i32* null, i32* null, i32** %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %166
  %183 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %184 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @device_printf(i32 %185, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %187 = load i32, i32* @ENOMEM, align 4
  store i32 %187, i32* %2, align 4
  br label %532

188:                                              ; preds = %166
  %189 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %190 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %189, i32 0, i32 29
  %191 = load i32*, i32** %190, align 8
  %192 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %193 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %192, i32 0, i32 27
  %194 = bitcast i32* %193 to i8**
  %195 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %196 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %197 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %196, i32 0, i32 28
  %198 = call i64 @bus_dmamem_alloc(i32* %191, i8** %194, i32 %195, i32* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %188
  %201 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %202 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %201, i32 0, i32 6
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @device_printf(i32 %203, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %205 = load i32, i32* @ENOMEM, align 4
  store i32 %205, i32* %2, align 4
  br label %532

206:                                              ; preds = %188
  %207 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %208 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %207, i32 0, i32 27
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %8, align 4
  %211 = call i32 @bzero(i32 %209, i32 %210)
  %212 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %213 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %212, i32 0, i32 29
  %214 = load i32*, i32** %213, align 8
  %215 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %216 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %215, i32 0, i32 28
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %219 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %218, i32 0, i32 27
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* %8, align 4
  %222 = load i32, i32* @mrsas_addr_cb, align 4
  %223 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %224 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %223, i32 0, i32 26
  %225 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %226 = call i64 @bus_dmamap_load(i32* %214, i32 %217, i32 %220, i32 %221, i32 %222, i32* %224, i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %206
  %229 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %230 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %229, i32 0, i32 6
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @device_printf(i32 %231, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %233 = load i32, i32* @ENOMEM, align 4
  store i32 %233, i32* %2, align 4
  br label %532

234:                                              ; preds = %206
  %235 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %236 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %235, i32 0, i32 3
  %237 = load i64, i64* %236, align 8
  %238 = icmp sgt i64 %237, 0
  br i1 %238, label %239, label %243

239:                                              ; preds = %234
  %240 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %241 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %240, i32 0, i32 3
  %242 = load i64, i64* %241, align 8
  br label %244

243:                                              ; preds = %234
  br label %244

244:                                              ; preds = %243, %239
  %245 = phi i64 [ %242, %239 ], [ 1, %243 ]
  %246 = trunc i64 %245 to i32
  store i32 %246, i32* %10, align 4
  %247 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %248 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* %10, align 4
  %251 = mul nsw i32 %249, %250
  store i32 %251, i32* %6, align 4
  %252 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %253 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %252, i32 0, i32 9
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %256 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %257 = load i32, i32* %6, align 4
  %258 = load i32, i32* %6, align 4
  %259 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %260 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %261 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %260, i32 0, i32 25
  %262 = call i64 @bus_dma_tag_create(i32* %254, i32 16, i32 0, i32 %255, i32 %256, i32* null, i32* null, i32 %257, i32 1, i32 %258, i32 %259, i32* null, i32* null, i32** %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %244
  %265 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %266 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %265, i32 0, i32 6
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @device_printf(i32 %267, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  %269 = load i32, i32* @ENOMEM, align 4
  store i32 %269, i32* %2, align 4
  br label %532

270:                                              ; preds = %244
  %271 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %272 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %271, i32 0, i32 25
  %273 = load i32*, i32** %272, align 8
  %274 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %275 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %274, i32 0, i32 23
  %276 = bitcast i32* %275 to i8**
  %277 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %278 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %279 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %278, i32 0, i32 24
  %280 = call i64 @bus_dmamem_alloc(i32* %273, i8** %276, i32 %277, i32* %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %288

282:                                              ; preds = %270
  %283 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %284 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %283, i32 0, i32 6
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @device_printf(i32 %285, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  %287 = load i32, i32* @ENOMEM, align 4
  store i32 %287, i32* %2, align 4
  br label %532

288:                                              ; preds = %270
  %289 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %290 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %289, i32 0, i32 25
  %291 = load i32*, i32** %290, align 8
  %292 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %293 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %292, i32 0, i32 24
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %296 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %295, i32 0, i32 23
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* %6, align 4
  %299 = load i32, i32* @mrsas_addr_cb, align 4
  %300 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %301 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %300, i32 0, i32 22
  %302 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %303 = call i64 @bus_dmamap_load(i32* %291, i32 %294, i32 %297, i32 %298, i32 %299, i32* %301, i32 %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %311

305:                                              ; preds = %288
  %306 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %307 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %306, i32 0, i32 6
  %308 = load i32, i32* %307, align 8
  %309 = call i32 @device_printf(i32 %308, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  %310 = load i32, i32* @ENOMEM, align 4
  store i32 %310, i32* %2, align 4
  br label %532

311:                                              ; preds = %288
  %312 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %313 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %312, i32 0, i32 5
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* @MRSAS_SENSE_LEN, align 4
  %316 = mul nsw i32 %314, %315
  store i32 %316, i32* %7, align 4
  %317 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %318 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %317, i32 0, i32 9
  %319 = load i32*, i32** %318, align 8
  %320 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %321 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %322 = load i32, i32* %7, align 4
  %323 = load i32, i32* %7, align 4
  %324 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %325 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %326 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %325, i32 0, i32 21
  %327 = call i64 @bus_dma_tag_create(i32* %319, i32 64, i32 0, i32 %320, i32 %321, i32* null, i32* null, i32 %322, i32 1, i32 %323, i32 %324, i32* null, i32* null, i32** %326)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %335

329:                                              ; preds = %311
  %330 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %331 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %330, i32 0, i32 6
  %332 = load i32, i32* %331, align 8
  %333 = call i32 @device_printf(i32 %332, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  %334 = load i32, i32* @ENOMEM, align 4
  store i32 %334, i32* %2, align 4
  br label %532

335:                                              ; preds = %311
  %336 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %337 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %336, i32 0, i32 21
  %338 = load i32*, i32** %337, align 8
  %339 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %340 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %339, i32 0, i32 19
  %341 = bitcast i32* %340 to i8**
  %342 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %343 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %344 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %343, i32 0, i32 20
  %345 = call i64 @bus_dmamem_alloc(i32* %338, i8** %341, i32 %342, i32* %344)
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %353

347:                                              ; preds = %335
  %348 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %349 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %348, i32 0, i32 6
  %350 = load i32, i32* %349, align 8
  %351 = call i32 @device_printf(i32 %350, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  %352 = load i32, i32* @ENOMEM, align 4
  store i32 %352, i32* %2, align 4
  br label %532

353:                                              ; preds = %335
  %354 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %355 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %354, i32 0, i32 21
  %356 = load i32*, i32** %355, align 8
  %357 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %358 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %357, i32 0, i32 20
  %359 = load i32, i32* %358, align 8
  %360 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %361 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %360, i32 0, i32 19
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* %7, align 4
  %364 = load i32, i32* @mrsas_addr_cb, align 4
  %365 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %366 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %365, i32 0, i32 18
  %367 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %368 = call i64 @bus_dmamap_load(i32* %356, i32 %359, i32 %362, i32 %363, i32 %364, i32* %366, i32 %367)
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %376

370:                                              ; preds = %353
  %371 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %372 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %371, i32 0, i32 6
  %373 = load i32, i32* %372, align 8
  %374 = call i32 @device_printf(i32 %373, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0))
  %375 = load i32, i32* @ENOMEM, align 4
  store i32 %375, i32* %2, align 4
  br label %532

376:                                              ; preds = %353
  store i32 4, i32* %9, align 4
  %377 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %378 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %377, i32 0, i32 9
  %379 = load i32*, i32** %378, align 8
  %380 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %381 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %382 = load i32, i32* %9, align 4
  %383 = load i32, i32* %9, align 4
  %384 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %385 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %386 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %385, i32 0, i32 17
  %387 = call i64 @bus_dma_tag_create(i32* %379, i32 1, i32 0, i32 %380, i32 %381, i32* null, i32* null, i32 %382, i32 1, i32 %383, i32 %384, i32* null, i32* null, i32** %386)
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %395

389:                                              ; preds = %376
  %390 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %391 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %390, i32 0, i32 6
  %392 = load i32, i32* %391, align 8
  %393 = call i32 @device_printf(i32 %392, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0))
  %394 = load i32, i32* @ENOMEM, align 4
  store i32 %394, i32* %2, align 4
  br label %532

395:                                              ; preds = %376
  %396 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %397 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %396, i32 0, i32 17
  %398 = load i32*, i32** %397, align 8
  %399 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %400 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %399, i32 0, i32 15
  %401 = bitcast i32* %400 to i8**
  %402 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %403 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %404 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %403, i32 0, i32 16
  %405 = call i64 @bus_dmamem_alloc(i32* %398, i8** %401, i32 %402, i32* %404)
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %407, label %413

407:                                              ; preds = %395
  %408 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %409 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %408, i32 0, i32 6
  %410 = load i32, i32* %409, align 8
  %411 = call i32 @device_printf(i32 %410, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0))
  %412 = load i32, i32* @ENOMEM, align 4
  store i32 %412, i32* %2, align 4
  br label %532

413:                                              ; preds = %395
  %414 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %415 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %414, i32 0, i32 15
  %416 = load i32, i32* %415, align 4
  %417 = load i32, i32* %9, align 4
  %418 = call i32 @bzero(i32 %416, i32 %417)
  %419 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %420 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %419, i32 0, i32 17
  %421 = load i32*, i32** %420, align 8
  %422 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %423 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %422, i32 0, i32 16
  %424 = load i32, i32* %423, align 8
  %425 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %426 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %425, i32 0, i32 15
  %427 = load i32, i32* %426, align 4
  %428 = load i32, i32* %9, align 4
  %429 = load i32, i32* @mrsas_addr_cb, align 4
  %430 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %431 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %430, i32 0, i32 14
  %432 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %433 = call i64 @bus_dmamap_load(i32* %421, i32 %424, i32 %427, i32 %428, i32 %429, i32* %431, i32 %432)
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %435, label %441

435:                                              ; preds = %413
  %436 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %437 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %436, i32 0, i32 6
  %438 = load i32, i32* %437, align 8
  %439 = call i32 @device_printf(i32 %438, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0))
  %440 = load i32, i32* @ENOMEM, align 4
  store i32 %440, i32* %2, align 4
  br label %532

441:                                              ; preds = %413
  store i32 4, i32* %11, align 4
  %442 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %443 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %442, i32 0, i32 9
  %444 = load i32*, i32** %443, align 8
  %445 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %446 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %447 = load i32, i32* %11, align 4
  %448 = load i32, i32* %11, align 4
  %449 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %450 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %451 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %450, i32 0, i32 13
  %452 = call i64 @bus_dma_tag_create(i32* %444, i32 1, i32 0, i32 %445, i32 %446, i32* null, i32* null, i32 %447, i32 1, i32 %448, i32 %449, i32* null, i32* null, i32** %451)
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %454, label %460

454:                                              ; preds = %441
  %455 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %456 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %455, i32 0, i32 6
  %457 = load i32, i32* %456, align 8
  %458 = call i32 @device_printf(i32 %457, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0))
  %459 = load i32, i32* @ENOMEM, align 4
  store i32 %459, i32* %2, align 4
  br label %532

460:                                              ; preds = %441
  %461 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %462 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %461, i32 0, i32 13
  %463 = load i32*, i32** %462, align 8
  %464 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %465 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %464, i32 0, i32 11
  %466 = bitcast i32* %465 to i8**
  %467 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %468 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %469 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %468, i32 0, i32 12
  %470 = call i64 @bus_dmamem_alloc(i32* %463, i8** %466, i32 %467, i32* %469)
  %471 = icmp ne i64 %470, 0
  br i1 %471, label %472, label %478

472:                                              ; preds = %460
  %473 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %474 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %473, i32 0, i32 6
  %475 = load i32, i32* %474, align 8
  %476 = call i32 @device_printf(i32 %475, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0))
  %477 = load i32, i32* @ENOMEM, align 4
  store i32 %477, i32* %2, align 4
  br label %532

478:                                              ; preds = %460
  %479 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %480 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %479, i32 0, i32 11
  %481 = load i32, i32* %480, align 4
  %482 = load i32, i32* %11, align 4
  %483 = call i32 @bzero(i32 %481, i32 %482)
  %484 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %485 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %484, i32 0, i32 13
  %486 = load i32*, i32** %485, align 8
  %487 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %488 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %487, i32 0, i32 12
  %489 = load i32, i32* %488, align 8
  %490 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %491 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %490, i32 0, i32 11
  %492 = load i32, i32* %491, align 4
  %493 = load i32, i32* %11, align 4
  %494 = load i32, i32* @mrsas_addr_cb, align 4
  %495 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %496 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %495, i32 0, i32 10
  %497 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %498 = call i64 @bus_dmamap_load(i32* %486, i32 %489, i32 %492, i32 %493, i32 %494, i32* %496, i32 %497)
  %499 = icmp ne i64 %498, 0
  br i1 %499, label %500, label %506

500:                                              ; preds = %478
  %501 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %502 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %501, i32 0, i32 6
  %503 = load i32, i32* %502, align 8
  %504 = call i32 @device_printf(i32 %503, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i64 0, i64 0))
  %505 = load i32, i32* @ENOMEM, align 4
  store i32 %505, i32* %2, align 4
  br label %532

506:                                              ; preds = %478
  %507 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %508 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %507, i32 0, i32 9
  %509 = load i32*, i32** %508, align 8
  %510 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %511 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %512 = load i32, i32* @MAXPHYS, align 4
  %513 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %514 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %513, i32 0, i32 0
  %515 = load i32, i32* %514, align 8
  %516 = load i32, i32* @MAXPHYS, align 4
  %517 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %518 = load i32*, i32** @busdma_lock_mutex, align 8
  %519 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %520 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %519, i32 0, i32 8
  %521 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %522 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %521, i32 0, i32 7
  %523 = call i64 @bus_dma_tag_create(i32* %509, i32 1, i32 0, i32 %510, i32 %511, i32* null, i32* null, i32 %512, i32 %515, i32 %516, i32 %517, i32* %518, i32* %520, i32** %522)
  %524 = icmp ne i64 %523, 0
  br i1 %524, label %525, label %531

525:                                              ; preds = %506
  %526 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %527 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %526, i32 0, i32 6
  %528 = load i32, i32* %527, align 8
  %529 = call i32 @device_printf(i32 %528, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0))
  %530 = load i32, i32* @ENOMEM, align 4
  store i32 %530, i32* %2, align 4
  br label %532

531:                                              ; preds = %506
  store i32 0, i32* %2, align 4
  br label %532

532:                                              ; preds = %531, %525, %500, %472, %454, %435, %407, %389, %370, %347, %329, %305, %282, %264, %228, %200, %182, %160, %132, %114, %92, %64, %46, %23
  %533 = load i32, i32* %2, align 4
  ret i32 %533
}

declare dso_local i64 @bus_dma_tag_create(i32*, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32**) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_dmamem_alloc(i32*, i8**, i32, i32*) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i64 @bus_dmamap_load(i32*, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
