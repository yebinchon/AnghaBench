; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_sbus.c_isp_sbus_mbxdma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_sbus.c_isp_sbus_mbxdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_12__, i32, i64, i8*, i64, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_14__* }
%struct.TYPE_12__ = type { %struct.isp_pcmd*, %struct.isp_pcmd*, i32, i32, i32, i32, i32 }
%struct.isp_pcmd = type { %struct.isp_pcmd*, i32, i32 }
%struct.imush = type { i32, i64 }

@BUS_SPACE_MAXADDR_24BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@ISP_NSEG_MAX = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32 0, align 4
@ISP_LOGERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"could not create master dma tag\00", align 1
@QENTRY_LEN = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"cannot create request DMA tag\00", align 1
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"cannot allocate request DMA memory\00", align 1
@imc = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"error loading request DMA map %d\00", align 1
@ISP_LOGDEBUG0 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"request area @ 0x%jx/0x%jx\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"cannot create response DMA tag\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"cannot allocate response DMA memory\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"error loading response DMA map %d\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"response area @ 0x%jx/0x%jx\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"error %d creating per-cmd DMA maps\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @isp_sbus_mbxdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_sbus_mbxdma(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.imush, align 8
  %9 = alloca %struct.isp_pcmd*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %13 = icmp ne %struct.TYPE_14__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %396

15:                                               ; preds = %1
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 8
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %396

26:                                               ; preds = %20, %15
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %28 = call i32 @ISP_UNLOCK(%struct.TYPE_13__* %27)
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 8
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %239

34:                                               ; preds = %26
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %36 = call i32 @ISP_SBD(%struct.TYPE_13__* %35)
  %37 = call i32 @bus_get_dma_tag(i32 %36)
  %38 = load i32, i32* @BUS_SPACE_MAXADDR_24BIT, align 4
  %39 = add nsw i32 %38, 1
  %40 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %41 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %42 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %43 = load i32, i32* @ISP_NSEG_MAX, align 4
  %44 = load i32, i32* @BUS_SPACE_MAXADDR_24BIT, align 4
  %45 = load i32, i32* @busdma_lock_mutex, align 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  %51 = call i64 @bus_dma_tag_create(i32 %37, i32 1, i32 %39, i32 %40, i32 %41, i32* null, i32* null, i32 %42, i32 %43, i32 %44, i32 0, i32 %45, i32* %47, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %34
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %55 = load i32, i32* @ISP_LOGERR, align 4
  %56 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @isp_prt(%struct.TYPE_13__* %54, i32 %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %391

57:                                               ; preds = %34
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = call i32 @RQUEST_QUEUE_LEN(%struct.TYPE_13__* %58)
  %60 = call i32 @ISP_QUEUE_SIZE(i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @QENTRY_LEN, align 4
  %66 = load i32, i32* @BUS_SPACE_MAXADDR_24BIT, align 4
  %67 = add nsw i32 %66, 1
  %68 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %69 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @busdma_lock_mutex, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 6
  %78 = call i64 @bus_dma_tag_create(i32 %64, i32 %65, i32 %67, i32 %68, i32 %69, i32* null, i32* null, i32 %70, i32 1, i32 %71, i32 0, i32 %72, i32* %74, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %57
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %82 = load i32, i32* @ISP_LOGERR, align 4
  %83 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @isp_prt(%struct.TYPE_13__* %81, i32 %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %391

84:                                               ; preds = %57
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 5
  %93 = call i64 @bus_dmamem_alloc(i32 %88, i8** %4, i32 %89, i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %84
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %97 = load i32, i32* @ISP_LOGERR, align 4
  %98 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @isp_prt(%struct.TYPE_13__* %96, i32 %97, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @bus_dma_tag_destroy(i32 %102)
  br label %391

104:                                              ; preds = %84
  %105 = load i8*, i8** %4, align 8
  %106 = bitcast i8* %105 to i32*
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 8
  store i32* %106, i32** %108, align 8
  %109 = getelementptr inbounds %struct.imush, %struct.imush* %8, i32 0, i32 0
  store i32 0, i32* %109, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = load i8*, i8** %4, align 8
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @imc, align 4
  %121 = call i64 @bus_dmamap_load(i32 %113, i32 %117, i8* %118, i32 %119, i32 %120, %struct.imush* %8, i32 0)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %104
  %124 = getelementptr inbounds %struct.imush, %struct.imush* %8, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %123, %104
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %129 = load i32, i32* @ISP_LOGERR, align 4
  %130 = getelementptr inbounds %struct.imush, %struct.imush* %8, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @isp_prt(%struct.TYPE_13__* %128, i32 %129, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %131)
  br label %391

133:                                              ; preds = %123
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %135 = load i32, i32* @ISP_LOGDEBUG0, align 4
  %136 = getelementptr inbounds %struct.imush, %struct.imush* %8, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = trunc i64 %137 to i32
  %139 = load i32, i32* %5, align 4
  %140 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @isp_prt(%struct.TYPE_13__* %134, i32 %135, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %138, i32 %139)
  %141 = getelementptr inbounds %struct.imush, %struct.imush* %8, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 7
  store i64 %142, i64* %144, align 8
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %146 = call i32 @RESULT_QUEUE_LEN(%struct.TYPE_13__* %145)
  %147 = call i32 @ISP_QUEUE_SIZE(i32 %146)
  store i32 %147, i32* %5, align 4
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @QENTRY_LEN, align 4
  %153 = load i32, i32* @BUS_SPACE_MAXADDR_24BIT, align 4
  %154 = add nsw i32 %153, 1
  %155 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %156 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %157 = load i32, i32* %5, align 4
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* @busdma_lock_mutex, align 4
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 4
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 4
  %165 = call i64 @bus_dma_tag_create(i32 %151, i32 %152, i32 %154, i32 %155, i32 %156, i32* null, i32* null, i32 %157, i32 1, i32 %158, i32 0, i32 %159, i32* %161, i32* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %133
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %169 = load i32, i32* @ISP_LOGERR, align 4
  %170 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @isp_prt(%struct.TYPE_13__* %168, i32 %169, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %391

171:                                              ; preds = %133
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 3
  %180 = call i64 @bus_dmamem_alloc(i32 %175, i8** %4, i32 %176, i32* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %171
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %184 = load i32, i32* @ISP_LOGERR, align 4
  %185 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @isp_prt(%struct.TYPE_13__* %183, i32 %184, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @bus_dma_tag_destroy(i32 %189)
  br label %391

191:                                              ; preds = %171
  %192 = load i8*, i8** %4, align 8
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 6
  store i8* %192, i8** %194, align 8
  %195 = getelementptr inbounds %struct.imush, %struct.imush* %8, i32 0, i32 0
  store i32 0, i32* %195, align 8
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = load i8*, i8** %4, align 8
  %205 = load i32, i32* %5, align 4
  %206 = load i32, i32* @imc, align 4
  %207 = call i64 @bus_dmamap_load(i32 %199, i32 %203, i8* %204, i32 %205, i32 %206, %struct.imush* %8, i32 0)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %213, label %209

209:                                              ; preds = %191
  %210 = getelementptr inbounds %struct.imush, %struct.imush* %8, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %209, %191
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %215 = load i32, i32* @ISP_LOGERR, align 4
  %216 = getelementptr inbounds %struct.imush, %struct.imush* %8, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @isp_prt(%struct.TYPE_13__* %214, i32 %215, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %217)
  br label %391

219:                                              ; preds = %209
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %221 = load i32, i32* @ISP_LOGDEBUG0, align 4
  %222 = getelementptr inbounds %struct.imush, %struct.imush* %8, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = trunc i64 %223 to i32
  %225 = load i32, i32* %5, align 4
  %226 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @isp_prt(%struct.TYPE_13__* %220, i32 %221, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %224, i32 %225)
  %227 = getelementptr inbounds %struct.imush, %struct.imush* %8, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 5
  store i64 %228, i64* %230, align 8
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %219
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %237 = call i32 @ISP_LOCK(%struct.TYPE_13__* %236)
  store i32 0, i32* %2, align 4
  br label %396

238:                                              ; preds = %219
  br label %239

239:                                              ; preds = %238, %33
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = sext i32 %242 to i64
  %244 = mul i64 16, %243
  %245 = trunc i64 %244 to i32
  store i32 %245, i32* %5, align 4
  %246 = load i32, i32* %5, align 4
  %247 = load i32, i32* @M_DEVBUF, align 4
  %248 = load i32, i32* @M_WAITOK, align 4
  %249 = load i32, i32* @M_ZERO, align 4
  %250 = or i32 %248, %249
  %251 = call i64 @malloc(i32 %246, i32 %247, i32 %250)
  %252 = inttoptr i64 %251 to %struct.isp_pcmd*
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 3
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 0
  store %struct.isp_pcmd* %252, %struct.isp_pcmd** %255, align 8
  store i32 0, i32* %6, align 4
  br label %256

256:                                              ; preds = %331, %239
  %257 = load i32, i32* %6, align 4
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = icmp slt i32 %257, %260
  br i1 %261, label %262, label %334

262:                                              ; preds = %256
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 3
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 0
  %266 = load %struct.isp_pcmd*, %struct.isp_pcmd** %265, align 8
  %267 = load i32, i32* %6, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.isp_pcmd, %struct.isp_pcmd* %266, i64 %268
  store %struct.isp_pcmd* %269, %struct.isp_pcmd** %9, align 8
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 3
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.isp_pcmd*, %struct.isp_pcmd** %9, align 8
  %275 = getelementptr inbounds %struct.isp_pcmd, %struct.isp_pcmd* %274, i32 0, i32 2
  %276 = call i32 @bus_dmamap_create(i32 %273, i32 0, i32* %275)
  store i32 %276, i32* %7, align 4
  %277 = load i32, i32* %7, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %304

279:                                              ; preds = %262
  %280 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %281 = load i32, i32* @ISP_LOGERR, align 4
  %282 = load i32, i32* %7, align 4
  %283 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @isp_prt(%struct.TYPE_13__* %280, i32 %281, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %282)
  br label %284

284:                                              ; preds = %288, %279
  %285 = load i32, i32* %6, align 4
  %286 = add nsw i32 %285, -1
  store i32 %286, i32* %6, align 4
  %287 = icmp sge i32 %286, 0
  br i1 %287, label %288, label %303

288:                                              ; preds = %284
  %289 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 3
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %293, i32 0, i32 3
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 0
  %296 = load %struct.isp_pcmd*, %struct.isp_pcmd** %295, align 8
  %297 = load i32, i32* %6, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.isp_pcmd, %struct.isp_pcmd* %296, i64 %298
  %300 = getelementptr inbounds %struct.isp_pcmd, %struct.isp_pcmd* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @bus_dmamap_destroy(i32 %292, i32 %301)
  br label %284

303:                                              ; preds = %284
  br label %391

304:                                              ; preds = %262
  %305 = load %struct.isp_pcmd*, %struct.isp_pcmd** %9, align 8
  %306 = getelementptr inbounds %struct.isp_pcmd, %struct.isp_pcmd* %305, i32 0, i32 1
  %307 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %307, i32 0, i32 4
  %309 = call i32 @callout_init_mtx(i32* %306, i32* %308, i32 0)
  %310 = load i32, i32* %6, align 4
  %311 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = sub nsw i32 %313, 1
  %315 = icmp eq i32 %310, %314
  br i1 %315, label %316, label %319

316:                                              ; preds = %304
  %317 = load %struct.isp_pcmd*, %struct.isp_pcmd** %9, align 8
  %318 = getelementptr inbounds %struct.isp_pcmd, %struct.isp_pcmd* %317, i32 0, i32 0
  store %struct.isp_pcmd* null, %struct.isp_pcmd** %318, align 8
  br label %330

319:                                              ; preds = %304
  %320 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %321 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %320, i32 0, i32 3
  %322 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %321, i32 0, i32 0
  %323 = load %struct.isp_pcmd*, %struct.isp_pcmd** %322, align 8
  %324 = load i32, i32* %6, align 4
  %325 = add nsw i32 %324, 1
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.isp_pcmd, %struct.isp_pcmd* %323, i64 %326
  %328 = load %struct.isp_pcmd*, %struct.isp_pcmd** %9, align 8
  %329 = getelementptr inbounds %struct.isp_pcmd, %struct.isp_pcmd* %328, i32 0, i32 0
  store %struct.isp_pcmd* %327, %struct.isp_pcmd** %329, align 8
  br label %330

330:                                              ; preds = %319, %316
  br label %331

331:                                              ; preds = %330
  %332 = load i32, i32* %6, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %6, align 4
  br label %256

334:                                              ; preds = %256
  %335 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %336 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %335, i32 0, i32 3
  %337 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %336, i32 0, i32 0
  %338 = load %struct.isp_pcmd*, %struct.isp_pcmd** %337, align 8
  %339 = getelementptr inbounds %struct.isp_pcmd, %struct.isp_pcmd* %338, i64 0
  %340 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %341 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %340, i32 0, i32 3
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %341, i32 0, i32 1
  store %struct.isp_pcmd* %339, %struct.isp_pcmd** %342, align 8
  %343 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = sext i32 %345 to i64
  %347 = mul i64 8, %346
  %348 = trunc i64 %347 to i32
  store i32 %348, i32* %5, align 4
  %349 = load i32, i32* %5, align 4
  %350 = load i32, i32* @M_DEVBUF, align 4
  %351 = load i32, i32* @M_WAITOK, align 4
  %352 = load i32, i32* @M_ZERO, align 4
  %353 = or i32 %351, %352
  %354 = call i64 @malloc(i32 %349, i32 %350, i32 %353)
  %355 = inttoptr i64 %354 to %struct.TYPE_14__*
  %356 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %357 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %356, i32 0, i32 1
  store %struct.TYPE_14__* %355, %struct.TYPE_14__** %357, align 8
  store i32 0, i32* %5, align 4
  br label %358

358:                                              ; preds = %380, %334
  %359 = load i32, i32* %5, align 4
  %360 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %361 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = sub nsw i32 %362, 1
  %364 = icmp slt i32 %359, %363
  br i1 %364, label %365, label %383

365:                                              ; preds = %358
  %366 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %367 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %366, i32 0, i32 1
  %368 = load %struct.TYPE_14__*, %struct.TYPE_14__** %367, align 8
  %369 = load i32, i32* %5, align 4
  %370 = add nsw i32 %369, 1
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %368, i64 %371
  %373 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %374 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %373, i32 0, i32 1
  %375 = load %struct.TYPE_14__*, %struct.TYPE_14__** %374, align 8
  %376 = load i32, i32* %5, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %375, i64 %377
  %379 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %378, i32 0, i32 0
  store %struct.TYPE_14__* %372, %struct.TYPE_14__** %379, align 8
  br label %380

380:                                              ; preds = %365
  %381 = load i32, i32* %5, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %5, align 4
  br label %358

383:                                              ; preds = %358
  %384 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %385 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %384, i32 0, i32 1
  %386 = load %struct.TYPE_14__*, %struct.TYPE_14__** %385, align 8
  %387 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %388 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %387, i32 0, i32 2
  store %struct.TYPE_14__* %386, %struct.TYPE_14__** %388, align 8
  %389 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %390 = call i32 @ISP_LOCK(%struct.TYPE_13__* %389)
  store i32 0, i32* %2, align 4
  br label %396

391:                                              ; preds = %303, %213, %182, %167, %127, %95, %80, %53
  %392 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %393 = call i32 @isp_sbus_mbxdmafree(%struct.TYPE_13__* %392)
  %394 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %395 = call i32 @ISP_LOCK(%struct.TYPE_13__* %394)
  store i32 1, i32* %2, align 4
  br label %396

396:                                              ; preds = %391, %383, %235, %25, %14
  %397 = load i32, i32* %2, align 4
  ret i32 %397
}

declare dso_local i32 @ISP_UNLOCK(%struct.TYPE_13__*) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @ISP_SBD(%struct.TYPE_13__*) #1

declare dso_local i32 @isp_prt(%struct.TYPE_13__*, i32, i8*, ...) #1

declare dso_local i32 @ISP_QUEUE_SIZE(i32) #1

declare dso_local i32 @RQUEST_QUEUE_LEN(%struct.TYPE_13__*) #1

declare dso_local i64 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i64 @bus_dmamap_load(i32, i32, i8*, i32, i32, %struct.imush*, i32) #1

declare dso_local i32 @RESULT_QUEUE_LEN(%struct.TYPE_13__*) #1

declare dso_local i32 @ISP_LOCK(%struct.TYPE_13__*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @isp_sbus_mbxdmafree(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
