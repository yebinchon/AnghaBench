; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_alloc_slice_rings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_alloc_slice_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxge_slice_state = type { %struct.TYPE_15__, %struct.TYPE_16__*, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_9__*, i32, i32*, i8*, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32, %struct.mxge_slice_state* }
%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_13__*, i8* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_11__*, i8* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@MHLEN = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Err %d allocating rx_small dmat\0A\00", align 1
@MJUM9BYTES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Err %d allocating rx_big dmat\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Err %d  rx_small dmamap\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Err %d extra rx_small dmamap\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Err %d  rx_big dmamap\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Err %d extra rx_big dmamap\0A\00", align 1
@MXGE_MAX_SEND_DESC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Err %d allocating tx dmat\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Err %d  tx dmamap\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxge_slice_state*, i32, i32)* @mxge_alloc_slice_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxge_alloc_slice_rings(%struct.mxge_slice_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mxge_slice_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mxge_slice_state* %0, %struct.mxge_slice_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %13 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %12, i32 0, i32 1
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sub nsw i32 %15, 1
  %17 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %18 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 8
  %20 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %21 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  store i32 %16, i32* %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = mul nsw i32 2, %23
  %25 = sub nsw i32 %24, 1
  %26 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %27 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 1
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i32, i32* @M_DEVBUF, align 4
  %34 = load i32, i32* @M_ZERO, align 4
  %35 = load i32, i32* @M_WAITOK, align 4
  %36 = or i32 %34, %35
  %37 = call i8* @malloc(i64 %32, i32 %33, i32 %36)
  %38 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %39 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 4
  store i8* %37, i8** %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 1
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i32, i32* @M_DEVBUF, align 4
  %46 = load i32, i32* @M_ZERO, align 4
  %47 = load i32, i32* @M_WAITOK, align 4
  %48 = or i32 %46, %47
  %49 = call i8* @malloc(i64 %44, i32 %45, i32 %48)
  %50 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %51 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 4
  store i8* %49, i8** %52, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  store i64 %55, i64* %9, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load i32, i32* @M_DEVBUF, align 4
  %58 = load i32, i32* @M_ZERO, align 4
  %59 = load i32, i32* @M_WAITOK, align 4
  %60 = or i32 %58, %59
  %61 = call i8* @malloc(i64 %56, i32 %57, i32 %60)
  %62 = bitcast i8* %61 to %struct.TYPE_11__*
  %63 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %64 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 3
  store %struct.TYPE_11__* %62, %struct.TYPE_11__** %65, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load i32, i32* @M_DEVBUF, align 4
  %71 = load i32, i32* @M_ZERO, align 4
  %72 = load i32, i32* @M_WAITOK, align 4
  %73 = or i32 %71, %72
  %74 = call i8* @malloc(i64 %69, i32 %70, i32 %73)
  %75 = bitcast i8* %74 to %struct.TYPE_13__*
  %76 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %77 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 3
  store %struct.TYPE_13__* %75, %struct.TYPE_13__** %78, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %83 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %84 = load i32, i32* @MHLEN, align 4
  %85 = load i32, i32* @MHLEN, align 4
  %86 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %87 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %88 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 2
  %90 = call i32 (i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32*, ...) @bus_dma_tag_create(i32 %81, i32 1, i32 4096, i32 %82, i32 %83, i32* null, i32* null, i32 %84, i32 1, i32 %85, i32 %86, i32 0, i32* null, i32* %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %3
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @device_printf(i32 %96, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %4, align 4
  br label %368

100:                                              ; preds = %3
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %105 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %106 = load i32, i32* @MJUM9BYTES, align 4
  %107 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %108 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %109 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 2
  %111 = call i32 (i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32*, ...) @bus_dma_tag_create(i32 %103, i32 1, i32 0, i32 %104, i32 %105, i32* null, i32* null, i32 12288, i32 1, i32 %106, i32 %107, i32 0, i32* null, i32* %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %100
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @device_printf(i32 %117, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %4, align 4
  br label %368

121:                                              ; preds = %100
  store i32 0, i32* %11, align 4
  br label %122

122:                                              ; preds = %153, %121
  %123 = load i32, i32* %11, align 4
  %124 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %125 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp sle i32 %123, %127
  br i1 %128, label %129, label %156

129:                                              ; preds = %122
  %130 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %131 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %135 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 3
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %136, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = call i32 @bus_dmamap_create(i32 %133, i32 0, i32* %141)
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %10, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %129
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @device_printf(i32 %148, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* %10, align 4
  store i32 %151, i32* %4, align 4
  br label %368

152:                                              ; preds = %129
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %11, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %11, align 4
  br label %122

156:                                              ; preds = %122
  %157 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %158 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %162 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = call i32 @bus_dmamap_create(i32 %160, i32 0, i32* %163)
  store i32 %164, i32* %10, align 4
  %165 = load i32, i32* %10, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %156
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %10, align 4
  %172 = call i32 @device_printf(i32 %170, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %171)
  %173 = load i32, i32* %10, align 4
  store i32 %173, i32* %4, align 4
  br label %368

174:                                              ; preds = %156
  store i32 0, i32* %11, align 4
  br label %175

175:                                              ; preds = %206, %174
  %176 = load i32, i32* %11, align 4
  %177 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %178 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp sle i32 %176, %180
  br i1 %181, label %182, label %209

182:                                              ; preds = %175
  %183 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %184 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %188 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 3
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %189, align 8
  %191 = load i32, i32* %11, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 0
  %195 = call i32 @bus_dmamap_create(i32 %186, i32 0, i32* %194)
  store i32 %195, i32* %10, align 4
  %196 = load i32, i32* %10, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %182
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %10, align 4
  %203 = call i32 @device_printf(i32 %201, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %202)
  %204 = load i32, i32* %10, align 4
  store i32 %204, i32* %4, align 4
  br label %368

205:                                              ; preds = %182
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %11, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %11, align 4
  br label %175

209:                                              ; preds = %175
  %210 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %211 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %215 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 1
  %217 = call i32 @bus_dmamap_create(i32 %213, i32 0, i32* %216)
  store i32 %217, i32* %10, align 4
  %218 = load i32, i32* %10, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %209
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %10, align 4
  %225 = call i32 @device_printf(i32 %223, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %224)
  %226 = load i32, i32* %10, align 4
  store i32 %226, i32* %4, align 4
  br label %368

227:                                              ; preds = %209
  %228 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %229 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %230 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %229, i32 0, i32 1
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 3
  %233 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %232, align 8
  %234 = icmp ne %struct.mxge_slice_state* %228, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %227
  store i32 0, i32* %4, align 4
  br label %368

236:                                              ; preds = %227
  %237 = load i32, i32* %7, align 4
  %238 = sub nsw i32 %237, 1
  %239 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %240 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 0
  store i32 %238, i32* %241, align 8
  %242 = load i32, i32* @MXGE_MAX_SEND_DESC, align 4
  %243 = load i32, i32* %7, align 4
  %244 = sdiv i32 %243, 4
  %245 = call i32 @MIN(i32 %242, i32 %244)
  %246 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %247 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i32 0, i32 1
  store i32 %245, i32* %248, align 4
  %249 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %250 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = add nsw i32 %252, 4
  %254 = sext i32 %253 to i64
  %255 = mul i64 4, %254
  %256 = add i64 8, %255
  store i64 %256, i64* %9, align 8
  %257 = load i64, i64* %9, align 8
  %258 = load i32, i32* @M_DEVBUF, align 4
  %259 = load i32, i32* @M_WAITOK, align 4
  %260 = call i8* @malloc(i64 %257, i32 %258, i32 %259)
  %261 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %262 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 5
  store i8* %260, i8** %263, align 8
  %264 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %265 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 5
  %267 = load i8*, i8** %266, align 8
  %268 = getelementptr i8, i8* %267, i64 7
  %269 = ptrtoint i8* %268 to i64
  %270 = and i64 %269, -8
  %271 = inttoptr i64 %270 to i32*
  %272 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %273 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 6
  store i32* %271, i32** %274, align 8
  %275 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %276 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = sext i32 %278 to i64
  %280 = mul i64 4, %279
  store i64 %280, i64* %9, align 8
  %281 = load i64, i64* %9, align 8
  %282 = load i32, i32* @M_DEVBUF, align 4
  %283 = load i32, i32* @M_WAITOK, align 4
  %284 = call i8* @malloc(i64 %281, i32 %282, i32 %283)
  %285 = bitcast i8* %284 to i32*
  %286 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %287 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 4
  store i32* %285, i32** %288, align 8
  %289 = load i32, i32* %7, align 4
  %290 = sext i32 %289 to i64
  %291 = mul i64 %290, 4
  store i64 %291, i64* %9, align 8
  %292 = load i64, i64* %9, align 8
  %293 = load i32, i32* @M_DEVBUF, align 4
  %294 = load i32, i32* @M_ZERO, align 4
  %295 = load i32, i32* @M_WAITOK, align 4
  %296 = or i32 %294, %295
  %297 = call i8* @malloc(i64 %292, i32 %293, i32 %296)
  %298 = bitcast i8* %297 to %struct.TYPE_9__*
  %299 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %300 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %300, i32 0, i32 2
  store %struct.TYPE_9__* %298, %struct.TYPE_9__** %301, align 8
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %309 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %310 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %311 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = sub nsw i32 %313, 2
  %315 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %316 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %319 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %320 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %320, i32 0, i32 3
  %322 = call i32 (i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32*, ...) @bus_dma_tag_create(i32 %304, i32 1, i32 %307, i32 %308, i32 %309, i32* null, i32* null, i32 65792, i32 %314, i32 %317, i32 %318, i32 0, i32* null, i32* %321)
  store i32 %322, i32* %10, align 4
  %323 = load i32, i32* %10, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %332

325:                                              ; preds = %236
  %326 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %327 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* %10, align 4
  %330 = call i32 @device_printf(i32 %328, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %329)
  %331 = load i32, i32* %10, align 4
  store i32 %331, i32* %4, align 4
  br label %368

332:                                              ; preds = %236
  store i32 0, i32* %11, align 4
  br label %333

333:                                              ; preds = %364, %332
  %334 = load i32, i32* %11, align 4
  %335 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %336 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = icmp sle i32 %334, %338
  br i1 %339, label %340, label %367

340:                                              ; preds = %333
  %341 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %342 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %342, i32 0, i32 3
  %344 = load i32, i32* %343, align 8
  %345 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %346 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %346, i32 0, i32 2
  %348 = load %struct.TYPE_9__*, %struct.TYPE_9__** %347, align 8
  %349 = load i32, i32* %11, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %348, i64 %350
  %352 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %351, i32 0, i32 0
  %353 = call i32 @bus_dmamap_create(i32 %344, i32 0, i32* %352)
  store i32 %353, i32* %10, align 4
  %354 = load i32, i32* %10, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %363

356:                                              ; preds = %340
  %357 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %358 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = load i32, i32* %10, align 4
  %361 = call i32 @device_printf(i32 %359, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %360)
  %362 = load i32, i32* %10, align 4
  store i32 %362, i32* %4, align 4
  br label %368

363:                                              ; preds = %340
  br label %364

364:                                              ; preds = %363
  %365 = load i32, i32* %11, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %11, align 4
  br label %333

367:                                              ; preds = %333
  store i32 0, i32* %4, align 4
  br label %368

368:                                              ; preds = %367, %356, %325, %235, %220, %198, %167, %145, %114, %93
  %369 = load i32, i32* %4, align 4
  ret i32 %369
}

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32*, ...) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
