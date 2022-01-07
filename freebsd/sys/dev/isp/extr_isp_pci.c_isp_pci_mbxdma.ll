; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_pci.c_isp_pci_mbxdma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_pci.c_isp_pci_mbxdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i64, i32, %struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_22__, i32, i64, i8*, i64, i8*, i64, i8*, i64, i32* }
%struct.TYPE_24__ = type { %struct.TYPE_24__* }
%struct.TYPE_22__ = type { %struct.isp_pcmd*, %struct.isp_pcmd*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_25__*, %struct.TYPE_25__*, i64, i32, i32 }
%struct.isp_pcmd = type { %struct.isp_pcmd*, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_25__* }
%struct.imush = type { i32, i64 }
%struct.isp_fc = type { %struct.isp_nexus*, i32 }
%struct.isp_nexus = type { %struct.isp_nexus* }
%struct.TYPE_21__ = type { i64, i32* }

@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@ISP_NSEG_MAX = common dso_local global i64 0, align 8
@BUS_SPACE_MAXSIZE = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32 0, align 4
@ISP_LOGERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"could not create master dma tag\00", align 1
@ISP_HA_FC_2200 = common dso_local global i64 0, align 8
@N_XCMDS = common dso_local global i64 0, align 8
@XCMD_SIZE = common dso_local global i64 0, align 8
@QENTRY_LEN = common dso_local global i32 0, align 4
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
@ISP_FC_SCRLEN = common dso_local global i32 0, align 4
@INITIAL_NEXUS_COUNT = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"error %d creating per-cmd DMA maps\00", align 1
@ISP_NSEG64_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*)* @isp_pci_mbxdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_pci_mbxdma(%struct.TYPE_23__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.imush, align 8
  %14 = alloca %struct.TYPE_25__*, align 8
  %15 = alloca %struct.isp_fc*, align 8
  %16 = alloca %struct.isp_nexus*, align 8
  %17 = alloca %struct.isp_pcmd*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %21 = icmp ne %struct.TYPE_24__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %713

23:                                               ; preds = %1
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 14
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %713

34:                                               ; preds = %28, %23
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %36 = call i32 @ISP_UNLOCK(%struct.TYPE_23__* %35)
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 14
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %559

42:                                               ; preds = %34
  %43 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  store i32 %43, i32* %12, align 4
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %45 = call i64 @IS_ULTRA2(%struct.TYPE_23__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %49 = call i64 @IS_FC(%struct.TYPE_23__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %53 = call i64 @IS_1240(%struct.TYPE_23__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51, %47, %42
  store i32 -2147483648, i32* %10, align 4
  %56 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  store i32 %56, i32* %11, align 4
  br label %59

57:                                               ; preds = %51
  store i32 16777216, i32* %10, align 4
  %58 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = load i64, i64* @ISP_NSEG_MAX, align 8
  store i64 %60, i64* %6, align 8
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %62 = call i32 @ISP_PCD(%struct.TYPE_23__* %61)
  %63 = call i32 @bus_get_dma_tag(i32 %62)
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @BUS_SPACE_MAXSIZE, align 4
  %68 = load i64, i64* %6, align 8
  %69 = trunc i64 %68 to i32
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @busdma_lock_mutex, align 4
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 6
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 2
  %77 = call i64 @bus_dma_tag_create(i32 %63, i32 1, i32 %64, i32 %65, i32 %66, i32* null, i32* null, i32 %67, i32 %69, i32 %70, i32 0, i32 %71, i32* %73, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %59
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %81 = call i32 @ISP_LOCK(%struct.TYPE_23__* %80)
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %83 = load i32, i32* @ISP_LOGERR, align 4
  %84 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @isp_prt(%struct.TYPE_23__* %82, i32 %83, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %713

85:                                               ; preds = %59
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %87 = call i32 @RQUEST_QUEUE_LEN(%struct.TYPE_23__* %86)
  %88 = call i64 @ISP_QUEUE_SIZE(i32 %87)
  store i64 %88, i64* %5, align 8
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @ISP_HA_FC_2200, align 8
  %93 = icmp sge i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %85
  %95 = load i64, i64* @N_XCMDS, align 8
  %96 = load i64, i64* @XCMD_SIZE, align 8
  %97 = mul i64 %95, %96
  %98 = load i64, i64* %5, align 8
  %99 = add i64 %98, %97
  store i64 %99, i64* %5, align 8
  br label %100

100:                                              ; preds = %94, %85
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @QENTRY_LEN, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %108 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %109 = load i64, i64* %5, align 8
  %110 = trunc i64 %109 to i32
  %111 = load i64, i64* %5, align 8
  %112 = trunc i64 %111 to i32
  %113 = load i32, i32* @busdma_lock_mutex, align 4
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 6
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 14
  %119 = call i64 @bus_dma_tag_create(i32 %104, i32 %105, i32 %106, i32 %107, i32 %108, i32* null, i32* null, i32 %110, i32 1, i32 %112, i32 0, i32 %113, i32* %115, i32* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %100
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %123 = load i32, i32* @ISP_LOGERR, align 4
  %124 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @isp_prt(%struct.TYPE_23__* %122, i32 %123, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %708

125:                                              ; preds = %100
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 5
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 14
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 13
  %134 = call i64 @bus_dmamem_alloc(i32 %129, i8** %4, i32 %130, i32* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %125
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %138 = load i32, i32* @ISP_LOGERR, align 4
  %139 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @isp_prt(%struct.TYPE_23__* %137, i32 %138, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 14
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @bus_dma_tag_destroy(i32 %143)
  br label %708

145:                                              ; preds = %125
  %146 = load i8*, i8** %4, align 8
  %147 = bitcast i8* %146 to i32*
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 14
  store i32* %147, i32** %149, align 8
  %150 = getelementptr inbounds %struct.imush, %struct.imush* %13, i32 0, i32 0
  store i32 0, i32* %150, align 8
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 5
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 14
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 5
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 13
  %158 = load i32, i32* %157, align 8
  %159 = load i8*, i8** %4, align 8
  %160 = load i64, i64* %5, align 8
  %161 = trunc i64 %160 to i32
  %162 = load i32, i32* @imc, align 4
  %163 = call i64 @bus_dmamap_load(i32 %154, i32 %158, i8* %159, i32 %161, i32 %162, %struct.imush* %13, i32 0)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %145
  %166 = getelementptr inbounds %struct.imush, %struct.imush* %13, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %165, %145
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %171 = load i32, i32* @ISP_LOGERR, align 4
  %172 = getelementptr inbounds %struct.imush, %struct.imush* %13, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @isp_prt(%struct.TYPE_23__* %170, i32 %171, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %173)
  br label %708

175:                                              ; preds = %165
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %177 = load i32, i32* @ISP_LOGDEBUG0, align 4
  %178 = getelementptr inbounds %struct.imush, %struct.imush* %13, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = trunc i64 %179 to i32
  %181 = load i64, i64* %5, align 8
  %182 = trunc i64 %181 to i32
  %183 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @isp_prt(%struct.TYPE_23__* %176, i32 %177, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %180, i32 %182)
  %184 = getelementptr inbounds %struct.imush, %struct.imush* %13, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 13
  store i64 %185, i64* %187, align 8
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %189 = call i32 @RQUEST_QUEUE_LEN(%struct.TYPE_23__* %188)
  %190 = call i64 @ISP_QUEUE_SIZE(i32 %189)
  %191 = load i8*, i8** %4, align 8
  %192 = getelementptr i8, i8* %191, i64 %190
  store i8* %192, i8** %4, align 8
  %193 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %194 = call i32 @RQUEST_QUEUE_LEN(%struct.TYPE_23__* %193)
  %195 = call i64 @ISP_QUEUE_SIZE(i32 %194)
  %196 = getelementptr inbounds %struct.imush, %struct.imush* %13, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = add i64 %197, %195
  store i64 %198, i64* %196, align 8
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @ISP_HA_FC_2200, align 8
  %203 = icmp sge i64 %201, %202
  br i1 %203, label %204, label %258

204:                                              ; preds = %175
  %205 = getelementptr inbounds %struct.imush, %struct.imush* %13, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 5
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 12
  store i64 %206, i64* %209, align 8
  %210 = load i8*, i8** %4, align 8
  %211 = bitcast i8* %210 to %struct.TYPE_25__*
  %212 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %212, i32 0, i32 5
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %213, i32 0, i32 10
  store %struct.TYPE_25__* %211, %struct.TYPE_25__** %214, align 8
  %215 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %215, i32 0, i32 5
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 10
  %218 = load %struct.TYPE_25__*, %struct.TYPE_25__** %217, align 8
  %219 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %219, i32 0, i32 5
  %221 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %220, i32 0, i32 11
  store %struct.TYPE_25__* %218, %struct.TYPE_25__** %221, align 8
  %222 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %222, i32 0, i32 5
  %224 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %223, i32 0, i32 10
  %225 = load %struct.TYPE_25__*, %struct.TYPE_25__** %224, align 8
  store %struct.TYPE_25__* %225, %struct.TYPE_25__** %14, align 8
  br label %226

226:                                              ; preds = %254, %204
  %227 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %228 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %228, i32 0, i32 5
  %230 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %229, i32 0, i32 10
  %231 = load %struct.TYPE_25__*, %struct.TYPE_25__** %230, align 8
  %232 = load i64, i64* @N_XCMDS, align 8
  %233 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %231, i64 %232
  %234 = icmp ult %struct.TYPE_25__* %227, %233
  br i1 %234, label %235, label %257

235:                                              ; preds = %226
  %236 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %237 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %237, i32 0, i32 5
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 10
  %240 = load %struct.TYPE_25__*, %struct.TYPE_25__** %239, align 8
  %241 = load i64, i64* @N_XCMDS, align 8
  %242 = sub i64 %241, 1
  %243 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %240, i64 %242
  %244 = icmp eq %struct.TYPE_25__* %236, %243
  br i1 %244, label %245, label %248

245:                                              ; preds = %235
  %246 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %247 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %246, i32 0, i32 0
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %247, align 8
  br label %253

248:                                              ; preds = %235
  %249 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %250 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %249, i64 1
  %251 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %252 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %251, i32 0, i32 0
  store %struct.TYPE_25__* %250, %struct.TYPE_25__** %252, align 8
  br label %253

253:                                              ; preds = %248, %245
  br label %254

254:                                              ; preds = %253
  %255 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %256 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %255, i32 1
  store %struct.TYPE_25__* %256, %struct.TYPE_25__** %14, align 8
  br label %226

257:                                              ; preds = %226
  br label %258

258:                                              ; preds = %257, %175
  %259 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %260 = call i32 @RESULT_QUEUE_LEN(%struct.TYPE_23__* %259)
  %261 = call i64 @ISP_QUEUE_SIZE(i32 %260)
  store i64 %261, i64* %5, align 8
  %262 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %262, i32 0, i32 5
  %264 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @QENTRY_LEN, align 4
  %267 = load i32, i32* %10, align 4
  %268 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %269 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %270 = load i64, i64* %5, align 8
  %271 = trunc i64 %270 to i32
  %272 = load i64, i64* %5, align 8
  %273 = trunc i64 %272 to i32
  %274 = load i32, i32* @busdma_lock_mutex, align 4
  %275 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %275, i32 0, i32 6
  %277 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %277, i32 0, i32 5
  %279 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %278, i32 0, i32 9
  %280 = call i64 @bus_dma_tag_create(i32 %265, i32 %266, i32 %267, i32 %268, i32 %269, i32* null, i32* null, i32 %271, i32 1, i32 %273, i32 0, i32 %274, i32* %276, i32* %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %286

282:                                              ; preds = %258
  %283 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %284 = load i32, i32* @ISP_LOGERR, align 4
  %285 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @isp_prt(%struct.TYPE_23__* %283, i32 %284, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %708

286:                                              ; preds = %258
  %287 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %287, i32 0, i32 5
  %289 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %288, i32 0, i32 9
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %292 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %292, i32 0, i32 5
  %294 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %293, i32 0, i32 8
  %295 = call i64 @bus_dmamem_alloc(i32 %290, i8** %4, i32 %291, i32* %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %306

297:                                              ; preds = %286
  %298 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %299 = load i32, i32* @ISP_LOGERR, align 4
  %300 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @isp_prt(%struct.TYPE_23__* %298, i32 %299, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %301 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %301, i32 0, i32 5
  %303 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %302, i32 0, i32 9
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @bus_dma_tag_destroy(i32 %304)
  br label %708

306:                                              ; preds = %286
  %307 = load i8*, i8** %4, align 8
  %308 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %309 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %308, i32 0, i32 12
  store i8* %307, i8** %309, align 8
  %310 = getelementptr inbounds %struct.imush, %struct.imush* %13, i32 0, i32 0
  store i32 0, i32* %310, align 8
  %311 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %311, i32 0, i32 5
  %313 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %312, i32 0, i32 9
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %315, i32 0, i32 5
  %317 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %316, i32 0, i32 8
  %318 = load i32, i32* %317, align 8
  %319 = load i8*, i8** %4, align 8
  %320 = load i64, i64* %5, align 8
  %321 = trunc i64 %320 to i32
  %322 = load i32, i32* @imc, align 4
  %323 = call i64 @bus_dmamap_load(i32 %314, i32 %318, i8* %319, i32 %321, i32 %322, %struct.imush* %13, i32 0)
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %329, label %325

325:                                              ; preds = %306
  %326 = getelementptr inbounds %struct.imush, %struct.imush* %13, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %335

329:                                              ; preds = %325, %306
  %330 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %331 = load i32, i32* @ISP_LOGERR, align 4
  %332 = getelementptr inbounds %struct.imush, %struct.imush* %13, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @isp_prt(%struct.TYPE_23__* %330, i32 %331, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %333)
  br label %708

335:                                              ; preds = %325
  %336 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %337 = load i32, i32* @ISP_LOGDEBUG0, align 4
  %338 = getelementptr inbounds %struct.imush, %struct.imush* %13, i32 0, i32 1
  %339 = load i64, i64* %338, align 8
  %340 = trunc i64 %339 to i32
  %341 = load i64, i64* %5, align 8
  %342 = trunc i64 %341 to i32
  %343 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @isp_prt(%struct.TYPE_23__* %336, i32 %337, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %340, i32 %342)
  %344 = getelementptr inbounds %struct.imush, %struct.imush* %13, i32 0, i32 1
  %345 = load i64, i64* %344, align 8
  %346 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %347 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %346, i32 0, i32 11
  store i64 %345, i64* %347, align 8
  %348 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %349 = call i64 @IS_FC(%struct.TYPE_23__* %348)
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %550

351:                                              ; preds = %335
  %352 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %353 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %352, i32 0, i32 5
  %354 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* %10, align 4
  %357 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %358 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %359 = load i32, i32* @QENTRY_LEN, align 4
  %360 = mul nsw i32 2, %359
  %361 = load i32, i32* @QENTRY_LEN, align 4
  %362 = mul nsw i32 2, %361
  %363 = load i32, i32* @busdma_lock_mutex, align 4
  %364 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %365 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %364, i32 0, i32 6
  %366 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %367 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %366, i32 0, i32 5
  %368 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %367, i32 0, i32 5
  %369 = call i64 @bus_dma_tag_create(i32 %355, i32 64, i32 %356, i32 %357, i32 %358, i32* null, i32* null, i32 %360, i32 1, i32 %362, i32 0, i32 %363, i32* %365, i32* %368)
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %372

371:                                              ; preds = %351
  br label %708

372:                                              ; preds = %351
  %373 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %374 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %373, i32 0, i32 5
  %375 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %374, i32 0, i32 5
  %376 = load i32, i32* %375, align 4
  %377 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %378 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %379 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %378, i32 0, i32 5
  %380 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %379, i32 0, i32 4
  %381 = call i64 @bus_dmamem_alloc(i32 %376, i8** %4, i32 %377, i32* %380)
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %384

383:                                              ; preds = %372
  br label %708

384:                                              ; preds = %372
  %385 = load i8*, i8** %4, align 8
  %386 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %387 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %386, i32 0, i32 8
  store i8* %385, i8** %387, align 8
  %388 = getelementptr inbounds %struct.imush, %struct.imush* %13, i32 0, i32 0
  store i32 0, i32* %388, align 8
  %389 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %390 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %389, i32 0, i32 5
  %391 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %390, i32 0, i32 5
  %392 = load i32, i32* %391, align 4
  %393 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %394 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %393, i32 0, i32 5
  %395 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %394, i32 0, i32 4
  %396 = load i32, i32* %395, align 8
  %397 = load i8*, i8** %4, align 8
  %398 = load i32, i32* @QENTRY_LEN, align 4
  %399 = mul nsw i32 2, %398
  %400 = load i32, i32* @imc, align 4
  %401 = call i64 @bus_dmamap_load(i32 %392, i32 %396, i8* %397, i32 %399, i32 %400, %struct.imush* %13, i32 0)
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %407, label %403

403:                                              ; preds = %384
  %404 = getelementptr inbounds %struct.imush, %struct.imush* %13, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %408

407:                                              ; preds = %403, %384
  br label %708

408:                                              ; preds = %403
  %409 = getelementptr inbounds %struct.imush, %struct.imush* %13, i32 0, i32 1
  %410 = load i64, i64* %409, align 8
  %411 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %412 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %411, i32 0, i32 7
  store i64 %410, i64* %412, align 8
  %413 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %414 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %413, i32 0, i32 5
  %415 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %414, i32 0, i32 2
  %416 = load i32, i32* %415, align 8
  %417 = load i32, i32* %10, align 4
  %418 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %419 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %420 = load i32, i32* @ISP_FC_SCRLEN, align 4
  %421 = load i32, i32* @ISP_FC_SCRLEN, align 4
  %422 = load i32, i32* @busdma_lock_mutex, align 4
  %423 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %424 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %423, i32 0, i32 6
  %425 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %426 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %425, i32 0, i32 5
  %427 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %426, i32 0, i32 3
  %428 = call i64 @bus_dma_tag_create(i32 %416, i32 64, i32 %417, i32 %418, i32 %419, i32* null, i32* null, i32 %420, i32 1, i32 %421, i32 0, i32 %422, i32* %424, i32* %427)
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %431

430:                                              ; preds = %408
  br label %708

431:                                              ; preds = %408
  store i32 0, i32* %9, align 4
  br label %432

432:                                              ; preds = %546, %431
  %433 = load i32, i32* %9, align 4
  %434 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %435 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %434, i32 0, i32 2
  %436 = load i32, i32* %435, align 8
  %437 = icmp slt i32 %433, %436
  br i1 %437, label %438, label %549

438:                                              ; preds = %432
  %439 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %440 = load i32, i32* %9, align 4
  %441 = call %struct.isp_fc* @ISP_FC_PC(%struct.TYPE_23__* %439, i32 %440)
  store %struct.isp_fc* %441, %struct.isp_fc** %15, align 8
  %442 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %443 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %442, i32 0, i32 5
  %444 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %443, i32 0, i32 3
  %445 = load i32, i32* %444, align 4
  %446 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %447 = load %struct.isp_fc*, %struct.isp_fc** %15, align 8
  %448 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %447, i32 0, i32 1
  %449 = call i64 @bus_dmamem_alloc(i32 %445, i8** %4, i32 %446, i32* %448)
  %450 = icmp ne i64 %449, 0
  br i1 %450, label %451, label %452

451:                                              ; preds = %438
  br label %708

452:                                              ; preds = %438
  %453 = load i8*, i8** %4, align 8
  %454 = bitcast i8* %453 to i32*
  %455 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %456 = load i32, i32* %9, align 4
  %457 = call %struct.TYPE_21__* @FCPARAM(%struct.TYPE_23__* %455, i32 %456)
  %458 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %457, i32 0, i32 1
  store i32* %454, i32** %458, align 8
  %459 = getelementptr inbounds %struct.imush, %struct.imush* %13, i32 0, i32 0
  store i32 0, i32* %459, align 8
  %460 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %461 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %460, i32 0, i32 5
  %462 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %461, i32 0, i32 3
  %463 = load i32, i32* %462, align 4
  %464 = load %struct.isp_fc*, %struct.isp_fc** %15, align 8
  %465 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 8
  %467 = load i8*, i8** %4, align 8
  %468 = load i32, i32* @ISP_FC_SCRLEN, align 4
  %469 = load i32, i32* @imc, align 4
  %470 = call i64 @bus_dmamap_load(i32 %463, i32 %466, i8* %467, i32 %468, i32 %469, %struct.imush* %13, i32 0)
  %471 = icmp ne i64 %470, 0
  br i1 %471, label %476, label %472

472:                                              ; preds = %452
  %473 = getelementptr inbounds %struct.imush, %struct.imush* %13, i32 0, i32 0
  %474 = load i32, i32* %473, align 8
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %490

476:                                              ; preds = %472, %452
  %477 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %478 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %477, i32 0, i32 5
  %479 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %478, i32 0, i32 3
  %480 = load i32, i32* %479, align 4
  %481 = load i8*, i8** %4, align 8
  %482 = load %struct.isp_fc*, %struct.isp_fc** %15, align 8
  %483 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %482, i32 0, i32 1
  %484 = load i32, i32* %483, align 8
  %485 = call i32 @bus_dmamem_free(i32 %480, i8* %481, i32 %484)
  %486 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %487 = load i32, i32* %9, align 4
  %488 = call %struct.TYPE_21__* @FCPARAM(%struct.TYPE_23__* %486, i32 %487)
  %489 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %488, i32 0, i32 1
  store i32* null, i32** %489, align 8
  br label %708

490:                                              ; preds = %472
  %491 = getelementptr inbounds %struct.imush, %struct.imush* %13, i32 0, i32 1
  %492 = load i64, i64* %491, align 8
  %493 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %494 = load i32, i32* %9, align 4
  %495 = call %struct.TYPE_21__* @FCPARAM(%struct.TYPE_23__* %493, i32 %494)
  %496 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %495, i32 0, i32 0
  store i64 %492, i64* %496, align 8
  %497 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %498 = call i32 @IS_2100(%struct.TYPE_23__* %497)
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %545, label %500

500:                                              ; preds = %490
  store i32 0, i32* %7, align 4
  br label %501

501:                                              ; preds = %541, %500
  %502 = load i32, i32* %7, align 4
  %503 = load i32, i32* @INITIAL_NEXUS_COUNT, align 4
  %504 = icmp slt i32 %502, %503
  br i1 %504, label %505, label %544

505:                                              ; preds = %501
  %506 = load i32, i32* @M_DEVBUF, align 4
  %507 = load i32, i32* @M_NOWAIT, align 4
  %508 = load i32, i32* @M_ZERO, align 4
  %509 = or i32 %507, %508
  %510 = call %struct.isp_nexus* @malloc(i64 8, i32 %506, i32 %509)
  store %struct.isp_nexus* %510, %struct.isp_nexus** %16, align 8
  %511 = load %struct.isp_nexus*, %struct.isp_nexus** %16, align 8
  %512 = icmp eq %struct.isp_nexus* %511, null
  br i1 %512, label %513, label %532

513:                                              ; preds = %505
  br label %514

514:                                              ; preds = %519, %513
  %515 = load %struct.isp_fc*, %struct.isp_fc** %15, align 8
  %516 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %515, i32 0, i32 0
  %517 = load %struct.isp_nexus*, %struct.isp_nexus** %516, align 8
  %518 = icmp ne %struct.isp_nexus* %517, null
  br i1 %518, label %519, label %531

519:                                              ; preds = %514
  %520 = load %struct.isp_fc*, %struct.isp_fc** %15, align 8
  %521 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %520, i32 0, i32 0
  %522 = load %struct.isp_nexus*, %struct.isp_nexus** %521, align 8
  store %struct.isp_nexus* %522, %struct.isp_nexus** %16, align 8
  %523 = load %struct.isp_nexus*, %struct.isp_nexus** %16, align 8
  %524 = getelementptr inbounds %struct.isp_nexus, %struct.isp_nexus* %523, i32 0, i32 0
  %525 = load %struct.isp_nexus*, %struct.isp_nexus** %524, align 8
  %526 = load %struct.isp_fc*, %struct.isp_fc** %15, align 8
  %527 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %526, i32 0, i32 0
  store %struct.isp_nexus* %525, %struct.isp_nexus** %527, align 8
  %528 = load %struct.isp_nexus*, %struct.isp_nexus** %16, align 8
  %529 = load i32, i32* @M_DEVBUF, align 4
  %530 = call i32 @free(%struct.isp_nexus* %528, i32 %529)
  br label %514

531:                                              ; preds = %514
  br label %708

532:                                              ; preds = %505
  %533 = load %struct.isp_fc*, %struct.isp_fc** %15, align 8
  %534 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %533, i32 0, i32 0
  %535 = load %struct.isp_nexus*, %struct.isp_nexus** %534, align 8
  %536 = load %struct.isp_nexus*, %struct.isp_nexus** %16, align 8
  %537 = getelementptr inbounds %struct.isp_nexus, %struct.isp_nexus* %536, i32 0, i32 0
  store %struct.isp_nexus* %535, %struct.isp_nexus** %537, align 8
  %538 = load %struct.isp_nexus*, %struct.isp_nexus** %16, align 8
  %539 = load %struct.isp_fc*, %struct.isp_fc** %15, align 8
  %540 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %539, i32 0, i32 0
  store %struct.isp_nexus* %538, %struct.isp_nexus** %540, align 8
  br label %541

541:                                              ; preds = %532
  %542 = load i32, i32* %7, align 4
  %543 = add nsw i32 %542, 1
  store i32 %543, i32* %7, align 4
  br label %501

544:                                              ; preds = %501
  br label %545

545:                                              ; preds = %544, %490
  br label %546

546:                                              ; preds = %545
  %547 = load i32, i32* %9, align 4
  %548 = add nsw i32 %547, 1
  store i32 %548, i32* %9, align 4
  br label %432

549:                                              ; preds = %432
  br label %550

550:                                              ; preds = %549, %335
  %551 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %552 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %551, i32 0, i32 0
  %553 = load i32, i32* %552, align 8
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %555, label %558

555:                                              ; preds = %550
  %556 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %557 = call i32 @ISP_LOCK(%struct.TYPE_23__* %556)
  store i32 0, i32* %2, align 4
  br label %713

558:                                              ; preds = %550
  br label %559

559:                                              ; preds = %558, %41
  %560 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %561 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %560, i32 0, i32 0
  %562 = load i32, i32* %561, align 8
  %563 = sext i32 %562 to i64
  %564 = mul i64 %563, 16
  store i64 %564, i64* %5, align 8
  %565 = load i64, i64* %5, align 8
  %566 = load i32, i32* @M_DEVBUF, align 4
  %567 = load i32, i32* @M_WAITOK, align 4
  %568 = load i32, i32* @M_ZERO, align 4
  %569 = or i32 %567, %568
  %570 = call %struct.isp_nexus* @malloc(i64 %565, i32 %566, i32 %569)
  %571 = bitcast %struct.isp_nexus* %570 to %struct.isp_pcmd*
  %572 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %573 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %572, i32 0, i32 5
  %574 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %573, i32 0, i32 0
  store %struct.isp_pcmd* %571, %struct.isp_pcmd** %574, align 8
  store i32 0, i32* %7, align 4
  br label %575

575:                                              ; preds = %650, %559
  %576 = load i32, i32* %7, align 4
  %577 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %578 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %577, i32 0, i32 0
  %579 = load i32, i32* %578, align 8
  %580 = icmp slt i32 %576, %579
  br i1 %580, label %581, label %653

581:                                              ; preds = %575
  %582 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %583 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %582, i32 0, i32 5
  %584 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %583, i32 0, i32 0
  %585 = load %struct.isp_pcmd*, %struct.isp_pcmd** %584, align 8
  %586 = load i32, i32* %7, align 4
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds %struct.isp_pcmd, %struct.isp_pcmd* %585, i64 %587
  store %struct.isp_pcmd* %588, %struct.isp_pcmd** %17, align 8
  %589 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %590 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %589, i32 0, i32 5
  %591 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %590, i32 0, i32 2
  %592 = load i32, i32* %591, align 8
  %593 = load %struct.isp_pcmd*, %struct.isp_pcmd** %17, align 8
  %594 = getelementptr inbounds %struct.isp_pcmd, %struct.isp_pcmd* %593, i32 0, i32 2
  %595 = call i32 @bus_dmamap_create(i32 %592, i32 0, i32* %594)
  store i32 %595, i32* %8, align 4
  %596 = load i32, i32* %8, align 4
  %597 = icmp ne i32 %596, 0
  br i1 %597, label %598, label %623

598:                                              ; preds = %581
  %599 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %600 = load i32, i32* @ISP_LOGERR, align 4
  %601 = load i32, i32* %8, align 4
  %602 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @isp_prt(%struct.TYPE_23__* %599, i32 %600, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %601)
  br label %603

603:                                              ; preds = %607, %598
  %604 = load i32, i32* %7, align 4
  %605 = add nsw i32 %604, -1
  store i32 %605, i32* %7, align 4
  %606 = icmp sge i32 %605, 0
  br i1 %606, label %607, label %622

607:                                              ; preds = %603
  %608 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %609 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %608, i32 0, i32 5
  %610 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %609, i32 0, i32 2
  %611 = load i32, i32* %610, align 8
  %612 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %613 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %612, i32 0, i32 5
  %614 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %613, i32 0, i32 0
  %615 = load %struct.isp_pcmd*, %struct.isp_pcmd** %614, align 8
  %616 = load i32, i32* %7, align 4
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds %struct.isp_pcmd, %struct.isp_pcmd* %615, i64 %617
  %619 = getelementptr inbounds %struct.isp_pcmd, %struct.isp_pcmd* %618, i32 0, i32 2
  %620 = load i32, i32* %619, align 4
  %621 = call i32 @bus_dmamap_destroy(i32 %611, i32 %620)
  br label %603

622:                                              ; preds = %603
  br label %708

623:                                              ; preds = %581
  %624 = load %struct.isp_pcmd*, %struct.isp_pcmd** %17, align 8
  %625 = getelementptr inbounds %struct.isp_pcmd, %struct.isp_pcmd* %624, i32 0, i32 1
  %626 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %627 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %626, i32 0, i32 6
  %628 = call i32 @callout_init_mtx(i32* %625, i32* %627, i32 0)
  %629 = load i32, i32* %7, align 4
  %630 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %631 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %630, i32 0, i32 0
  %632 = load i32, i32* %631, align 8
  %633 = sub nsw i32 %632, 1
  %634 = icmp eq i32 %629, %633
  br i1 %634, label %635, label %638

635:                                              ; preds = %623
  %636 = load %struct.isp_pcmd*, %struct.isp_pcmd** %17, align 8
  %637 = getelementptr inbounds %struct.isp_pcmd, %struct.isp_pcmd* %636, i32 0, i32 0
  store %struct.isp_pcmd* null, %struct.isp_pcmd** %637, align 8
  br label %649

638:                                              ; preds = %623
  %639 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %640 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %639, i32 0, i32 5
  %641 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %640, i32 0, i32 0
  %642 = load %struct.isp_pcmd*, %struct.isp_pcmd** %641, align 8
  %643 = load i32, i32* %7, align 4
  %644 = add nsw i32 %643, 1
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds %struct.isp_pcmd, %struct.isp_pcmd* %642, i64 %645
  %647 = load %struct.isp_pcmd*, %struct.isp_pcmd** %17, align 8
  %648 = getelementptr inbounds %struct.isp_pcmd, %struct.isp_pcmd* %647, i32 0, i32 0
  store %struct.isp_pcmd* %646, %struct.isp_pcmd** %648, align 8
  br label %649

649:                                              ; preds = %638, %635
  br label %650

650:                                              ; preds = %649
  %651 = load i32, i32* %7, align 4
  %652 = add nsw i32 %651, 1
  store i32 %652, i32* %7, align 4
  br label %575

653:                                              ; preds = %575
  %654 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %655 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %654, i32 0, i32 5
  %656 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %655, i32 0, i32 0
  %657 = load %struct.isp_pcmd*, %struct.isp_pcmd** %656, align 8
  %658 = getelementptr inbounds %struct.isp_pcmd, %struct.isp_pcmd* %657, i64 0
  %659 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %660 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %659, i32 0, i32 5
  %661 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %660, i32 0, i32 1
  store %struct.isp_pcmd* %658, %struct.isp_pcmd** %661, align 8
  %662 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %663 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %662, i32 0, i32 0
  %664 = load i32, i32* %663, align 8
  %665 = sext i32 %664 to i64
  %666 = mul i64 8, %665
  store i64 %666, i64* %5, align 8
  %667 = load i64, i64* %5, align 8
  %668 = load i32, i32* @M_DEVBUF, align 4
  %669 = load i32, i32* @M_WAITOK, align 4
  %670 = load i32, i32* @M_ZERO, align 4
  %671 = or i32 %669, %670
  %672 = call %struct.isp_nexus* @malloc(i64 %667, i32 %668, i32 %671)
  %673 = bitcast %struct.isp_nexus* %672 to %struct.TYPE_24__*
  %674 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %675 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %674, i32 0, i32 3
  store %struct.TYPE_24__* %673, %struct.TYPE_24__** %675, align 8
  store i64 0, i64* %5, align 8
  br label %676

676:                                              ; preds = %697, %653
  %677 = load i64, i64* %5, align 8
  %678 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %679 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %678, i32 0, i32 0
  %680 = load i32, i32* %679, align 8
  %681 = sub nsw i32 %680, 1
  %682 = sext i32 %681 to i64
  %683 = icmp ult i64 %677, %682
  br i1 %683, label %684, label %700

684:                                              ; preds = %676
  %685 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %686 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %685, i32 0, i32 3
  %687 = load %struct.TYPE_24__*, %struct.TYPE_24__** %686, align 8
  %688 = load i64, i64* %5, align 8
  %689 = add i64 %688, 1
  %690 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %687, i64 %689
  %691 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %692 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %691, i32 0, i32 3
  %693 = load %struct.TYPE_24__*, %struct.TYPE_24__** %692, align 8
  %694 = load i64, i64* %5, align 8
  %695 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %693, i64 %694
  %696 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %695, i32 0, i32 0
  store %struct.TYPE_24__* %690, %struct.TYPE_24__** %696, align 8
  br label %697

697:                                              ; preds = %684
  %698 = load i64, i64* %5, align 8
  %699 = add i64 %698, 1
  store i64 %699, i64* %5, align 8
  br label %676

700:                                              ; preds = %676
  %701 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %702 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %701, i32 0, i32 3
  %703 = load %struct.TYPE_24__*, %struct.TYPE_24__** %702, align 8
  %704 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %705 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %704, i32 0, i32 4
  store %struct.TYPE_24__* %703, %struct.TYPE_24__** %705, align 8
  %706 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %707 = call i32 @ISP_LOCK(%struct.TYPE_23__* %706)
  store i32 0, i32* %2, align 4
  br label %713

708:                                              ; preds = %622, %531, %476, %451, %430, %407, %383, %371, %329, %297, %282, %169, %136, %121
  %709 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %710 = call i32 @isp_pci_mbxdmafree(%struct.TYPE_23__* %709)
  %711 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %712 = call i32 @ISP_LOCK(%struct.TYPE_23__* %711)
  store i32 1, i32* %2, align 4
  br label %713

713:                                              ; preds = %708, %700, %555, %79, %33, %22
  %714 = load i32, i32* %2, align 4
  ret i32 %714
}

declare dso_local i32 @ISP_UNLOCK(%struct.TYPE_23__*) #1

declare dso_local i64 @IS_ULTRA2(%struct.TYPE_23__*) #1

declare dso_local i64 @IS_FC(%struct.TYPE_23__*) #1

declare dso_local i64 @IS_1240(%struct.TYPE_23__*) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @ISP_PCD(%struct.TYPE_23__*) #1

declare dso_local i32 @ISP_LOCK(%struct.TYPE_23__*) #1

declare dso_local i32 @isp_prt(%struct.TYPE_23__*, i32, i8*, ...) #1

declare dso_local i64 @ISP_QUEUE_SIZE(i32) #1

declare dso_local i32 @RQUEST_QUEUE_LEN(%struct.TYPE_23__*) #1

declare dso_local i64 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i64 @bus_dmamap_load(i32, i32, i8*, i32, i32, %struct.imush*, i32) #1

declare dso_local i32 @RESULT_QUEUE_LEN(%struct.TYPE_23__*) #1

declare dso_local %struct.isp_fc* @ISP_FC_PC(%struct.TYPE_23__*, i32) #1

declare dso_local %struct.TYPE_21__* @FCPARAM(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i8*, i32) #1

declare dso_local i32 @IS_2100(%struct.TYPE_23__*) #1

declare dso_local %struct.isp_nexus* @malloc(i64, i32, i32) #1

declare dso_local i32 @free(%struct.isp_nexus*, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @isp_pci_mbxdmafree(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
