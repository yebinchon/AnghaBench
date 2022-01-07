; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ae/extr_if_ae.c_ae_alloc_rings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ae/extr_if_ae.c_ae_alloc_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32*, i64, i32, i32, i32, i64, i64, i32, i32, i64, i64, i32, i32, i32 }

@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"could not creare parent DMA tag.\0A\00", align 1
@AE_TXD_BUFSIZE_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"could not creare TxD DMA tag.\0A\00", align 1
@AE_TXS_COUNT_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"could not creare TxS DMA tag.\0A\00", align 1
@AE_RXD_COUNT_DEFAULT = common dso_local global i32 0, align 4
@AE_RXD_PADDING = common dso_local global i32 0, align 4
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"could not allocate DMA memory for TxD ring.\0A\00", align 1
@ae_dmamap_cb = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"could not load DMA map for TxD ring.\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"could not allocate DMA memory for TxS ring.\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"could not load DMA map for TxS ring.\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"could not allocate DMA memory for RxD ring.\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"could not load DMA map for RxD ring.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @ae_alloc_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ae_alloc_rings(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @bus_get_dma_tag(i32 %8)
  %10 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %11 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %12 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %13 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 14
  %16 = call i32 @bus_dma_tag_create(i32 %9, i32 1, i32 0, i32 %10, i32 %11, i32* null, i32* null, i32 %12, i32 0, i32 %13, i32 0, i32* null, i32* null, i32* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @device_printf(i32 %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %260

25:                                               ; preds = %1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 14
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %30 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %31 = load i32, i32* @AE_TXD_BUFSIZE_DEFAULT, align 4
  %32 = load i32, i32* @AE_TXD_BUFSIZE_DEFAULT, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 13
  %35 = call i32 @bus_dma_tag_create(i32 %28, i32 8, i32 0, i32 %29, i32 %30, i32* null, i32* null, i32 %31, i32 1, i32 %32, i32 0, i32* null, i32* null, i32* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %25
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %260

44:                                               ; preds = %25
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 14
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %49 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %50 = load i32, i32* @AE_TXS_COUNT_DEFAULT, align 4
  %51 = mul nsw i32 %50, 4
  %52 = load i32, i32* @AE_TXS_COUNT_DEFAULT, align 4
  %53 = mul nsw i32 %52, 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 9
  %56 = call i32 @bus_dma_tag_create(i32 %47, i32 8, i32 0, i32 %48, i32 %49, i32* null, i32* null, i32 %51, i32 1, i32 %53, i32 0, i32* null, i32* null, i32* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %44
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @device_printf(i32 %62, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %260

65:                                               ; preds = %44
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 14
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %70 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %71 = load i32, i32* @AE_RXD_COUNT_DEFAULT, align 4
  %72 = mul nsw i32 %71, 1536
  %73 = load i32, i32* @AE_RXD_PADDING, align 4
  %74 = add nsw i32 %72, %73
  %75 = load i32, i32* @AE_RXD_COUNT_DEFAULT, align 4
  %76 = mul nsw i32 %75, 1536
  %77 = load i32, i32* @AE_RXD_PADDING, align 4
  %78 = add nsw i32 %76, %77
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 5
  %81 = call i32 @bus_dma_tag_create(i32 %68, i32 128, i32 0, i32 %69, i32 %70, i32* null, i32* null, i32 %74, i32 1, i32 %78, i32 0, i32* null, i32* null, i32* %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %65
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @device_printf(i32 %87, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %89 = load i32, i32* %5, align 4
  store i32 %89, i32* %2, align 4
  br label %260

90:                                               ; preds = %65
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 13
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 11
  %96 = bitcast i64* %95 to i8**
  %97 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %98 = load i32, i32* @BUS_DMA_ZERO, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 12
  %104 = call i32 @bus_dmamem_alloc(i32 %93, i8** %96, i32 %101, i32* %103)
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %5, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %90
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @device_printf(i32 %110, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %112 = load i32, i32* %5, align 4
  store i32 %112, i32* %2, align 4
  br label %260

113:                                              ; preds = %90
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 13
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 12
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 11
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* @AE_TXD_BUFSIZE_DEFAULT, align 4
  %124 = load i32, i32* @ae_dmamap_cb, align 4
  %125 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %126 = call i32 @bus_dmamap_load(i32 %116, i32 %119, i64 %122, i32 %123, i32 %124, i64* %4, i32 %125)
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* %5, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %113
  %130 = load i64, i64* %4, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %129, %113
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @device_printf(i32 %135, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %137 = load i32, i32* %5, align 4
  store i32 %137, i32* %2, align 4
  br label %260

138:                                              ; preds = %129
  %139 = load i64, i64* %4, align 8
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 10
  store i64 %139, i64* %141, align 8
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 9
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 7
  %147 = bitcast i64* %146 to i8**
  %148 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %149 = load i32, i32* @BUS_DMA_ZERO, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %152 = or i32 %150, %151
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 8
  %155 = call i32 @bus_dmamem_alloc(i32 %144, i8** %147, i32 %152, i32* %154)
  store i32 %155, i32* %5, align 4
  %156 = load i32, i32* %5, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %138
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @device_printf(i32 %161, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %163 = load i32, i32* %5, align 4
  store i32 %163, i32* %2, align 4
  br label %260

164:                                              ; preds = %138
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 9
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 8
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 7
  %173 = load i64, i64* %172, align 8
  %174 = load i32, i32* @AE_TXS_COUNT_DEFAULT, align 4
  %175 = mul nsw i32 %174, 4
  %176 = load i32, i32* @ae_dmamap_cb, align 4
  %177 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %178 = call i32 @bus_dmamap_load(i32 %167, i32 %170, i64 %173, i32 %175, i32 %176, i64* %4, i32 %177)
  store i32 %178, i32* %5, align 4
  %179 = load i32, i32* %5, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %164
  %182 = load i64, i64* %4, align 8
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %181, %164
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @device_printf(i32 %187, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %189 = load i32, i32* %5, align 4
  store i32 %189, i32* %2, align 4
  br label %260

190:                                              ; preds = %181
  %191 = load i64, i64* %4, align 8
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 6
  store i64 %191, i64* %193, align 8
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 0
  %199 = bitcast i64* %198 to i8**
  %200 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %201 = load i32, i32* @BUS_DMA_ZERO, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %204 = or i32 %202, %203
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 4
  %207 = call i32 @bus_dmamem_alloc(i32 %196, i8** %199, i32 %204, i32* %206)
  store i32 %207, i32* %5, align 4
  %208 = load i32, i32* %5, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %190
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @device_printf(i32 %213, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0))
  %215 = load i32, i32* %5, align 4
  store i32 %215, i32* %2, align 4
  br label %260

216:                                              ; preds = %190
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i32, i32* @AE_RXD_COUNT_DEFAULT, align 4
  %227 = mul nsw i32 %226, 1536
  %228 = load i32, i32* @AE_RXD_PADDING, align 4
  %229 = add nsw i32 %227, %228
  %230 = load i32, i32* @ae_dmamap_cb, align 4
  %231 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %232 = call i32 @bus_dmamap_load(i32 %219, i32 %222, i64 %225, i32 %229, i32 %230, i64* %4, i32 %231)
  store i32 %232, i32* %5, align 4
  %233 = load i32, i32* %5, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %238, label %235

235:                                              ; preds = %216
  %236 = load i64, i64* %4, align 8
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %235, %216
  %239 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @device_printf(i32 %241, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %243 = load i32, i32* %5, align 4
  store i32 %243, i32* %2, align 4
  br label %260

244:                                              ; preds = %235
  %245 = load i64, i64* %4, align 8
  %246 = load i32, i32* @AE_RXD_PADDING, align 4
  %247 = sext i32 %246 to i64
  %248 = add nsw i64 %245, %247
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 2
  store i64 %248, i64* %250, align 8
  %251 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i32, i32* @AE_RXD_PADDING, align 4
  %255 = sext i32 %254 to i64
  %256 = add nsw i64 %253, %255
  %257 = inttoptr i64 %256 to i32*
  %258 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 1
  store i32* %257, i32** %259, align 8
  store i32 0, i32* %2, align 4
  br label %260

260:                                              ; preds = %244, %238, %210, %184, %158, %132, %107, %84, %59, %38, %19
  %261 = load i32, i32* %2, align 4
  ret i32 %261
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i64, i32, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
