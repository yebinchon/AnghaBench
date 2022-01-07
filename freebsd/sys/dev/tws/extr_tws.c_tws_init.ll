; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws.c_tws_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws.c_tws_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { i32, i8*, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i64 }

@tws_queue_depth = common dso_local global i32 0, align 4
@TWS_MAX_REQS = common dso_local global i32 0, align 4
@TWS_RESERVED_REQS = common dso_local global i32 0, align 4
@tws_use_32bit_sgls = common dso_local global i32 0, align 4
@TWS_MAX_64BIT_SG_ELEMENTS = common dso_local global i32 0, align 4
@TWS_MAX_32BIT_SG_ELEMENTS = common dso_local global i32 0, align 4
@TWS_SECTOR_SIZE = common dso_local global i32 0, align 4
@TWS_ALIGNMENT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"DMA parent tag Create fail\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@TWS_IN_MF_ALIGNMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"DMA cmd tag Create fail\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"DMA mem alloc fail\00", align 1
@tws_dmamap_cmds_load_cbfn = common dso_local global i32 0, align 4
@TWS_MAX_IO_SIZE = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32* null, align 8
@M_TWS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Cannot allocate ioctl data mem\0A\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"dma_mem_phys\00", align 1
@TWS_I2O0_CTL = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@TWS_BIT1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tws_softc*)* @tws_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tws_init(%struct.tws_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tws_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tws_softc* %0, %struct.tws_softc** %3, align 8
  %8 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %9 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %8, i32 0, i32 15
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @tws_queue_depth, align 4
  %11 = load i32, i32* @TWS_MAX_REQS, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @TWS_MAX_REQS, align 4
  store i32 %14, i32* @tws_queue_depth, align 4
  br label %15

15:                                               ; preds = %13, %1
  %16 = load i32, i32* @tws_queue_depth, align 4
  %17 = load i32, i32* @TWS_RESERVED_REQS, align 4
  %18 = add nsw i32 %17, 1
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @TWS_RESERVED_REQS, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @tws_queue_depth, align 4
  br label %23

23:                                               ; preds = %20, %15
  %24 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %25 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %27 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load i32, i32* @tws_use_32bit_sgls, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @TWS_MAX_64BIT_SG_ELEMENTS, align 4
  br label %37

35:                                               ; preds = %30, %23
  %36 = load i32, i32* @TWS_MAX_32BIT_SG_ELEMENTS, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* @tws_queue_depth, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 4, %40
  %42 = load i32, i32* @TWS_SECTOR_SIZE, align 4
  %43 = sext i32 %42 to i64
  %44 = add i64 %41, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %5, align 4
  %46 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %47 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @bus_get_dma_tag(i32 %48)
  %50 = load i32, i32* @TWS_ALIGNMENT, align 4
  %51 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %52 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %53 = load i32, i32* @BUS_SPACE_MAXSIZE, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @BUS_SPACE_MAXSIZE, align 4
  %56 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %57 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %56, i32 0, i32 12
  %58 = call i64 @bus_dma_tag_create(i32 %49, i32 %50, i32 0, i32 %51, i32 %52, i32* null, i32* null, i32 %53, i32 %54, i32 %55, i32 0, i32* null, i32* null, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %37
  %61 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %64 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %65)
  %67 = load i32, i32* @ENOMEM, align 4
  store i32 %67, i32* %2, align 4
  br label %240

68:                                               ; preds = %37
  %69 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %70 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %69, i32 0, i32 12
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @TWS_IN_MF_ALIGNMENT, align 4
  %73 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %74 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @BUS_SPACE_MAXSIZE, align 4
  %77 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %78 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %77, i32 0, i32 14
  %79 = call i64 @bus_dma_tag_create(i32 %71, i32 %72, i32 0, i32 %73, i32 %74, i32* null, i32* null, i32 %75, i32 1, i32 %76, i32 0, i32* null, i32* null, i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %68
  %82 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %83 = load i32, i32* %4, align 4
  %84 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %85 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %82, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %86)
  %88 = load i32, i32* @ENOMEM, align 4
  store i32 %88, i32* %2, align 4
  br label %240

89:                                               ; preds = %68
  %90 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %91 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %90, i32 0, i32 14
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %94 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %93, i32 0, i32 1
  %95 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %96 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %97 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %96, i32 0, i32 13
  %98 = call i64 @bus_dmamem_alloc(i32 %92, i8** %94, i32 %95, i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %89
  %101 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %102 = load i32, i32* %4, align 4
  %103 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %104 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %101, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %102, i32 %105)
  %107 = load i32, i32* @ENOMEM, align 4
  store i32 %107, i32* %2, align 4
  br label %240

108:                                              ; preds = %89
  %109 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %110 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %109, i32 0, i32 2
  store i32 0, i32* %110, align 8
  %111 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %112 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %111, i32 0, i32 14
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %115 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %114, i32 0, i32 13
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %118 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @tws_dmamap_cmds_load_cbfn, align 4
  %122 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %123 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %122, i32 0, i32 2
  %124 = call i32 @bus_dmamap_load(i32 %113, i32 %116, i8* %119, i32 %120, i32 %121, i32* %123, i32 0)
  store i32 %124, i32* %6, align 4
  %125 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %126 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %125, i32 0, i32 12
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @TWS_ALIGNMENT, align 4
  %129 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %130 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %131 = load i32, i32* @TWS_MAX_IO_SIZE, align 4
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* @TWS_MAX_IO_SIZE, align 4
  %134 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %135 = load i32*, i32** @busdma_lock_mutex, align 8
  %136 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %137 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %136, i32 0, i32 11
  %138 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %139 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %138, i32 0, i32 7
  %140 = call i64 @bus_dma_tag_create(i32 %127, i32 %128, i32 0, i32 %129, i32 %130, i32* null, i32* null, i32 %131, i32 %132, i32 %133, i32 %134, i32* %135, i32* %137, i32* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %108
  %143 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %144 = load i32, i32* %4, align 4
  %145 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %146 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %143, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %144, i32 %147)
  %149 = load i32, i32* @ENOMEM, align 4
  store i32 %149, i32* %2, align 4
  br label %240

150:                                              ; preds = %108
  %151 = load i32, i32* @tws_queue_depth, align 4
  %152 = sext i32 %151 to i64
  %153 = mul i64 4, %152
  %154 = trunc i64 %153 to i32
  %155 = load i32, i32* @M_TWS, align 4
  %156 = load i32, i32* @M_WAITOK, align 4
  %157 = load i32, i32* @M_ZERO, align 4
  %158 = or i32 %156, %157
  %159 = call i8* @malloc(i32 %154, i32 %155, i32 %158)
  %160 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %161 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %160, i32 0, i32 10
  store i8* %159, i8** %161, align 8
  %162 = load i32, i32* @tws_queue_depth, align 4
  %163 = sext i32 %162 to i64
  %164 = mul i64 4, %163
  %165 = trunc i64 %164 to i32
  %166 = load i32, i32* @M_TWS, align 4
  %167 = load i32, i32* @M_WAITOK, align 4
  %168 = load i32, i32* @M_ZERO, align 4
  %169 = or i32 %167, %168
  %170 = call i8* @malloc(i32 %165, i32 %166, i32 %169)
  %171 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %172 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %171, i32 0, i32 9
  store i8* %170, i8** %172, align 8
  %173 = load i32, i32* @M_TWS, align 4
  %174 = load i32, i32* @M_WAITOK, align 4
  %175 = load i32, i32* @M_ZERO, align 4
  %176 = or i32 %174, %175
  %177 = call i8* @malloc(i32 4, i32 %173, i32 %176)
  %178 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %179 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %178, i32 0, i32 8
  store i8* %177, i8** %179, align 8
  %180 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %181 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %180, i32 0, i32 7
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %184 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %183, i32 0, i32 6
  %185 = bitcast i32* %184 to i8**
  %186 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %187 = load i32, i32* @BUS_DMA_ZERO, align 4
  %188 = or i32 %186, %187
  %189 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %190 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %189, i32 0, i32 5
  %191 = call i64 @bus_dmamem_alloc(i32 %182, i8** %185, i32 %188, i32* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %150
  %194 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %195 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @device_printf(i32 %196, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %198 = load i32, i32* @ENOMEM, align 4
  store i32 %198, i32* %2, align 4
  br label %240

199:                                              ; preds = %150
  %200 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %201 = call i32 @tws_ctlr_ready(%struct.tws_softc* %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %210, label %203

203:                                              ; preds = %199
  %204 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %205 = call i32 @tws_ctlr_reset(%struct.tws_softc* %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %209, label %207

207:                                              ; preds = %203
  %208 = load i32, i32* @FAILURE, align 4
  store i32 %208, i32* %2, align 4
  br label %240

209:                                              ; preds = %203
  br label %210

210:                                              ; preds = %209, %199
  %211 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %212 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %211, i32 0, i32 3
  %213 = call i32 @bzero(i32* %212, i32 4)
  %214 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %215 = call i32 @tws_init_qs(%struct.tws_softc* %214)
  %216 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %217 = call i32 @tws_turn_off_interrupts(%struct.tws_softc* %216)
  %218 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %219 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %220 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @TWS_I2O0_CTL, align 4
  %223 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %218, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %221, i32 %222)
  %224 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %225 = load i32, i32* %5, align 4
  %226 = call i32 @tws_init_reqs(%struct.tws_softc* %224, i32 %225)
  %227 = load i32, i32* @FAILURE, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %231

229:                                              ; preds = %210
  %230 = load i32, i32* @FAILURE, align 4
  store i32 %230, i32* %2, align 4
  br label %240

231:                                              ; preds = %210
  %232 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %233 = call i32 @tws_init_aen_q(%struct.tws_softc* %232)
  %234 = load i32, i32* @FAILURE, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %238

236:                                              ; preds = %231
  %237 = load i32, i32* @FAILURE, align 4
  store i32 %237, i32* %2, align 4
  br label %240

238:                                              ; preds = %231
  %239 = load i32, i32* @SUCCESS, align 4
  store i32 %239, i32* %2, align 4
  br label %240

240:                                              ; preds = %238, %236, %229, %207, %193, %142, %100, %81, %60
  %241 = load i32, i32* %2, align 4
  ret i32 %241
}

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @TWS_TRACE_DEBUG(%struct.tws_softc*, i8*, i32, i32) #1

declare dso_local i64 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i8*, i32, i32, i32*, i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @tws_ctlr_ready(%struct.tws_softc*) #1

declare dso_local i32 @tws_ctlr_reset(%struct.tws_softc*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @tws_init_qs(%struct.tws_softc*) #1

declare dso_local i32 @tws_turn_off_interrupts(%struct.tws_softc*) #1

declare dso_local i32 @tws_init_reqs(%struct.tws_softc*, i32) #1

declare dso_local i32 @tws_init_aen_q(%struct.tws_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
