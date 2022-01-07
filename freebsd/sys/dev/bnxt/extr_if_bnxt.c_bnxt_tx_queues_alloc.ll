; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_tx_queues_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_tx_queues_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_6__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i8*, i8*, i32, %struct.bnxt_softc*, i8*, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, i32, i8*, i8*, i32, %struct.bnxt_softc*, i8* }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"unable to allocate TX completion rings\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"unable to allocate TX rings\0A\00", align 1
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@HWRM_NA_SIGNATURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8**, i32, i32)* @bnxt_tx_queues_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_tx_queues_alloc(i32 %0, i8** %1, i8** %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bnxt_softc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8** %1, i8*** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.bnxt_softc* @iflib_get_softc(i32 %15)
  store %struct.bnxt_softc* %16, %struct.bnxt_softc** %12, align 8
  %17 = load i32, i32* %11, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 4, %18
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @M_DEVBUF, align 4
  %22 = load i32, i32* @M_NOWAIT, align 4
  %23 = load i32, i32* @M_ZERO, align 4
  %24 = or i32 %22, %23
  %25 = call i8* @malloc(i32 %20, i32 %21, i32 %24)
  %26 = bitcast i8* %25 to %struct.TYPE_8__*
  %27 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %28 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %27, i32 0, i32 1
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %28, align 8
  %29 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %30 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = icmp ne %struct.TYPE_8__* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %5
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @iflib_get_dev(i32 %34)
  %36 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ENOMEM, align 4
  store i32 %37, i32* %14, align 4
  br label %311

38:                                               ; preds = %5
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 4, %40
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @M_DEVBUF, align 4
  %44 = load i32, i32* @M_NOWAIT, align 4
  %45 = load i32, i32* @M_ZERO, align 4
  %46 = or i32 %44, %45
  %47 = call i8* @malloc(i32 %42, i32 %43, i32 %46)
  %48 = bitcast i8* %47 to %struct.TYPE_8__*
  %49 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %50 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %49, i32 0, i32 2
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %50, align 8
  %51 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %52 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %51, i32 0, i32 2
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = icmp ne %struct.TYPE_8__* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %38
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @iflib_get_dev(i32 %56)
  %58 = call i32 @device_printf(i32 %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @ENOMEM, align 4
  store i32 %59, i32* %14, align 4
  br label %305

60:                                               ; preds = %38
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 4, %63
  %65 = trunc i64 %64 to i32
  %66 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %67 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %66, i32 0, i32 4
  %68 = call i32 @iflib_dma_alloc(i32 %61, i32 %65, %struct.TYPE_7__* %67, i32 0)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  br label %299

72:                                               ; preds = %60
  %73 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %74 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %78 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %82 = call i32 @bus_dmamap_sync(i32 %76, i32 %80, i32 %81)
  store i32 0, i32* %13, align 4
  br label %83

83:                                               ; preds = %291, %72
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %294

87:                                               ; preds = %83
  %88 = load i64, i64* @HWRM_NA_SIGNATURE, align 8
  %89 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %90 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %89, i32 0, i32 1
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 8
  store i64 %88, i64* %95, align 8
  %96 = load i64, i64* @HWRM_NA_SIGNATURE, align 8
  %97 = inttoptr i64 %96 to i8*
  %98 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %99 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %98, i32 0, i32 1
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 7
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 6
  store i8* %97, i8** %105, align 8
  %106 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %107 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %108 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %107, i32 0, i32 1
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 7
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 5
  store %struct.bnxt_softc* %106, %struct.bnxt_softc** %114, align 8
  %115 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %116 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %115, i32 0, i32 3
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = mul nsw i32 %119, 2
  %121 = add nsw i32 %120, 1
  %122 = load i32, i32* %13, align 4
  %123 = add nsw i32 %121, %122
  %124 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %125 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %124, i32 0, i32 1
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 7
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  store i32 %123, i32* %131, align 8
  %132 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %133 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %132, i32 0, i32 1
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 7
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = mul nsw i32 %140, 128
  %142 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %143 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %142, i32 0, i32 1
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = load i32, i32* %13, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 7
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  store i32 %141, i32* %149, align 4
  %150 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %151 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %150, i32 0, i32 3
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %158 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %157, i32 0, i32 1
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %158, align 8
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 7
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 4
  store i32 %156, i32* %164, align 8
  %165 = load i8**, i8*** %8, align 8
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* %10, align 4
  %168 = mul nsw i32 %166, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8*, i8** %165, i64 %169
  %171 = load i8*, i8** %170, align 8
  %172 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %173 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %172, i32 0, i32 1
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %173, align 8
  %175 = load i32, i32* %13, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 7
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 3
  store i8* %171, i8** %179, align 8
  %180 = load i8**, i8*** %9, align 8
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* %10, align 4
  %183 = mul nsw i32 %181, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8*, i8** %180, i64 %184
  %186 = load i8*, i8** %185, align 8
  %187 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %188 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %187, i32 0, i32 1
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %188, align 8
  %190 = load i32, i32* %13, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 7
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 2
  store i8* %186, i8** %194, align 8
  %195 = load i64, i64* @HWRM_NA_SIGNATURE, align 8
  %196 = inttoptr i64 %195 to i8*
  %197 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %198 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %197, i32 0, i32 2
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %198, align 8
  %200 = load i32, i32* %13, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 6
  store i8* %196, i8** %203, align 8
  %204 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %205 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %206 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %205, i32 0, i32 2
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %206, align 8
  %208 = load i32, i32* %13, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 5
  store %struct.bnxt_softc* %204, %struct.bnxt_softc** %211, align 8
  %212 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %213 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %212, i32 0, i32 3
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = mul nsw i32 %216, 2
  %218 = add nsw i32 %217, 1
  %219 = load i32, i32* %13, align 4
  %220 = add nsw i32 %218, %219
  %221 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %222 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %221, i32 0, i32 2
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %222, align 8
  %224 = load i32, i32* %13, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  store i32 %220, i32* %227, align 8
  %228 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %229 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %228, i32 0, i32 2
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %229, align 8
  %231 = load i32, i32* %13, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = mul nsw i32 %235, 128
  %237 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %238 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %237, i32 0, i32 2
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %238, align 8
  %240 = load i32, i32* %13, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 1
  store i32 %236, i32* %243, align 4
  %244 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %245 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %244, i32 0, i32 3
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 1
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %252 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %251, i32 0, i32 2
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %252, align 8
  %254 = load i32, i32* %13, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 4
  store i32 %250, i32* %257, align 8
  %258 = load i8**, i8*** %8, align 8
  %259 = load i32, i32* %13, align 4
  %260 = load i32, i32* %10, align 4
  %261 = mul nsw i32 %259, %260
  %262 = add nsw i32 %261, 1
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8*, i8** %258, i64 %263
  %265 = load i8*, i8** %264, align 8
  %266 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %267 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %266, i32 0, i32 2
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %267, align 8
  %269 = load i32, i32* %13, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 3
  store i8* %265, i8** %272, align 8
  %273 = load i8**, i8*** %9, align 8
  %274 = load i32, i32* %13, align 4
  %275 = load i32, i32* %10, align 4
  %276 = mul nsw i32 %274, %275
  %277 = add nsw i32 %276, 1
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i8*, i8** %273, i64 %278
  %280 = load i8*, i8** %279, align 8
  %281 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %282 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %281, i32 0, i32 2
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** %282, align 8
  %284 = load i32, i32* %13, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 2
  store i8* %280, i8** %287, align 8
  %288 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %289 = load i32, i32* %13, align 4
  %290 = call i32 @bnxt_create_tx_sysctls(%struct.bnxt_softc* %288, i32 %289)
  br label %291

291:                                              ; preds = %87
  %292 = load i32, i32* %13, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %13, align 4
  br label %83

294:                                              ; preds = %83
  %295 = load i32, i32* %11, align 4
  %296 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %297 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %296, i32 0, i32 0
  store i32 %295, i32* %297, align 8
  %298 = load i32, i32* %14, align 4
  store i32 %298, i32* %6, align 4
  br label %313

299:                                              ; preds = %71
  %300 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %301 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %300, i32 0, i32 2
  %302 = load %struct.TYPE_8__*, %struct.TYPE_8__** %301, align 8
  %303 = load i32, i32* @M_DEVBUF, align 4
  %304 = call i32 @free(%struct.TYPE_8__* %302, i32 %303)
  br label %305

305:                                              ; preds = %299, %55
  %306 = load %struct.bnxt_softc*, %struct.bnxt_softc** %12, align 8
  %307 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %306, i32 0, i32 1
  %308 = load %struct.TYPE_8__*, %struct.TYPE_8__** %307, align 8
  %309 = load i32, i32* @M_DEVBUF, align 4
  %310 = call i32 @free(%struct.TYPE_8__* %308, i32 %309)
  br label %311

311:                                              ; preds = %305, %33
  %312 = load i32, i32* %14, align 4
  store i32 %312, i32* %6, align 4
  br label %313

313:                                              ; preds = %311, %294
  %314 = load i32, i32* %6, align 4
  ret i32 %314
}

declare dso_local %struct.bnxt_softc* @iflib_get_softc(i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i32 @iflib_dma_alloc(i32, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bnxt_create_tx_sysctls(%struct.bnxt_softc*, i32) #1

declare dso_local i32 @free(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
