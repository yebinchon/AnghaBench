; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_trm_initDCB.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_trm_initDCB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_20__ = type { i64, i32, i32, %struct.TYPE_13__**, i32, %struct.TYPE_19__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_19__ = type { i64, i64, i32, i32, i32, i64, i32, %struct.TYPE_17__, i32, i64, i64, i32, i64, i32*, i64, i32*, i32*, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_15__, i32 }
%struct.TYPE_16__ = type { i8*, i64, i64 }
%struct.TYPE_15__ = type { i32, i8*, i32 }

@DS_IN_QUEUE = common dso_local global i32 0, align 4
@trm_eepromBuf = common dso_local global %struct.TYPE_18__* null, align 8
@NTC_DO_DISCONNECT = common dso_local global i32 0, align 4
@TRM_USR_DISCENB = common dso_local global i32 0, align 4
@TAG_QUEUING_ = common dso_local global i32 0, align 4
@TRM_USR_TAGENB = common dso_local global i32 0, align 4
@dc395u2x_clock_period = common dso_local global i32* null, align 8
@SYNC_NEGO_ENABLE = common dso_local global i32 0, align 4
@dc395x_clock_period = common dso_local global i32* null, align 8
@NTC_DO_WIDE_NEGO = common dso_local global i32 0, align 4
@HCC_WIDE_CARD = common dso_local global i32 0, align 4
@WIDE_NEGO_ENABLE = common dso_local global i32 0, align 4
@NTC_DO_SYNC_NEGO = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_16_BIT = common dso_local global i8* null, align 8
@MSG_EXT_WDTR_BUS_8_BIT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_19__*, i64, i64, i64)* @trm_initDCB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trm_initDCB(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_19__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %18 = load i64, i64* %9, align 8
  store i64 %18, i64* %14, align 8
  %19 = load i64, i64* %10, align 8
  store i64 %19, i64* %15, align 8
  %20 = load i64, i64* %15, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %5
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %24, align 8
  %26 = load i64, i64* %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %25, i64 %26
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DS_IN_QUEUE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %22
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %37, align 8
  %39 = load i64, i64* %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %38, i64 %39
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i64 0
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %44 = call i32 @bcopy(%struct.TYPE_13__* %42, %struct.TYPE_19__* %43, i32 4)
  br label %45

45:                                               ; preds = %35, %22, %5
  %46 = call i32 (...) @splcam()
  store i32 %46, i32* %17, align 4
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %45
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %53 = ptrtoint %struct.TYPE_19__* %52 to i64
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 5
  store %struct.TYPE_19__* %56, %struct.TYPE_19__** %58, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 17
  store %struct.TYPE_19__* %59, %struct.TYPE_19__** %61, align 8
  br label %90

62:                                               ; preds = %45
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %66, %struct.TYPE_19__** %16, align 8
  br label %67

67:                                               ; preds = %76, %62
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 17
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %69, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to %struct.TYPE_19__*
  %75 = icmp ne %struct.TYPE_19__* %70, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %67
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 17
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %78, align 8
  store %struct.TYPE_19__* %79, %struct.TYPE_19__** %16, align 8
  br label %67

80:                                               ; preds = %67
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 17
  store %struct.TYPE_19__* %81, %struct.TYPE_19__** %83, align 8
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to %struct.TYPE_19__*
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 17
  store %struct.TYPE_19__* %87, %struct.TYPE_19__** %89, align 8
  br label %90

90:                                               ; preds = %80, %51
  %91 = load i32, i32* %17, align 4
  %92 = call i32 @splx(i32 %91)
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 8
  %97 = load i64, i64* %14, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load i64, i64* %15, align 8
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 16
  store i32* null, i32** %104, align 8
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 15
  store i32* null, i32** %106, align 8
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 14
  store i64 0, i64* %108, align 8
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 13
  store i32* null, i32** %110, align 8
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 2
  store i32 1, i32* %112, align 8
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 12
  store i64 0, i64* %114, align 8
  %115 = load i32, i32* @DS_IN_QUEUE, align 4
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** @trm_eepromBuf, align 8
  %121 = load i64, i64* %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i64 %121
  store %struct.TYPE_18__* %122, %struct.TYPE_18__** %11, align 8
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %124, align 8
  %126 = load i64, i64* %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 4
  store i32 %129, i32* %131, align 8
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 11
  store i32 %134, i32* %136, align 8
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @NTC_DO_DISCONNECT, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %90
  store i64 192, i64* %12, align 8
  %144 = load i32, i32* @TRM_USR_DISCENB, align 4
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 7
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %144
  store i32 %149, i32* %147, align 8
  br label %158

150:                                              ; preds = %90
  store i64 128, i64* %12, align 8
  %151 = load i32, i32* @TRM_USR_DISCENB, align 4
  %152 = xor i32 %151, -1
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 7
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = and i32 %156, %152
  store i32 %157, i32* %155, align 8
  br label %158

158:                                              ; preds = %150, %143
  %159 = load i64, i64* %15, align 8
  %160 = load i64, i64* %12, align 8
  %161 = or i64 %160, %159
  store i64 %161, i64* %12, align 8
  %162 = load i64, i64* %12, align 8
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 5
  store i64 %162, i64* %164, align 8
  %165 = load i64, i64* %15, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %181

167:                                              ; preds = %158
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 3
  %170 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %169, align 8
  %171 = load i64, i64* %14, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %170, i64 %171
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i64 0
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @DS_IN_QUEUE, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %167
  br label %338

181:                                              ; preds = %167, %158
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @TAG_QUEUING_, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %181
  %189 = load i32, i32* @TRM_USR_TAGENB, align 4
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 7
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = or i32 %193, %189
  store i32 %194, i32* %192, align 8
  br label %203

195:                                              ; preds = %181
  %196 = load i32, i32* @TRM_USR_TAGENB, align 4
  %197 = xor i32 %196, -1
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 7
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = and i32 %201, %197
  store i32 %202, i32* %200, align 8
  br label %203

203:                                              ; preds = %195, %188
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 10
  store i64 0, i64* %205, align 8
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 9
  store i64 0, i64* %207, align 8
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %209, align 8
  %211 = load i64, i64* %14, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = and i32 %214, 7
  %216 = sext i32 %215 to i64
  store i64 %216, i64* %13, align 8
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = icmp eq i32 %219, 1
  br i1 %220, label %221, label %247

221:                                              ; preds = %203
  %222 = load i32*, i32** @dc395u2x_clock_period, align 8
  %223 = load i64, i64* %13, align 8
  %224 = getelementptr inbounds i32, i32* %222, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %226, i32 0, i32 8
  store i32 %225, i32* %227, align 8
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i32 0, i32 8
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 7
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 2
  store i32 %230, i32* %234, align 8
  %235 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 6
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @SYNC_NEGO_ENABLE, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  %241 = zext i1 %240 to i64
  %242 = select i1 %240, i32 31, i32 0
  %243 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %243, i32 0, i32 7
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 0
  store i32 %242, i32* %246, align 8
  br label %273

247:                                              ; preds = %203
  %248 = load i32*, i32** @dc395x_clock_period, align 8
  %249 = load i64, i64* %13, align 8
  %250 = getelementptr inbounds i32, i32* %248, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %252, i32 0, i32 8
  store i32 %251, i32* %253, align 8
  %254 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %254, i32 0, i32 8
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %257, i32 0, i32 7
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 2
  store i32 %256, i32* %260, align 8
  %261 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %261, i32 0, i32 6
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @SYNC_NEGO_ENABLE, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  %267 = zext i1 %266 to i64
  %268 = select i1 %266, i32 15, i32 0
  %269 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %269, i32 0, i32 7
  %271 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 0
  store i32 %268, i32* %272, align 8
  br label %273

273:                                              ; preds = %247, %221
  %274 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %274, i32 0, i32 6
  store i32 0, i32* %275, align 8
  %276 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %277 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %276, i32 0, i32 4
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @NTC_DO_WIDE_NEGO, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %295

282:                                              ; preds = %273
  %283 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @HCC_WIDE_CARD, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %295

289:                                              ; preds = %282
  %290 = load i32, i32* @WIDE_NEGO_ENABLE, align 4
  %291 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %291, i32 0, i32 6
  %293 = load i32, i32* %292, align 8
  %294 = or i32 %293, %290
  store i32 %294, i32* %292, align 8
  br label %295

295:                                              ; preds = %289, %282, %273
  %296 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %297 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %296, i32 0, i32 4
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @NTC_DO_SYNC_NEGO, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %308

302:                                              ; preds = %295
  %303 = load i32, i32* @SYNC_NEGO_ENABLE, align 4
  %304 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %305 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %304, i32 0, i32 6
  %306 = load i32, i32* %305, align 8
  %307 = or i32 %306, %303
  store i32 %307, i32* %305, align 8
  br label %308

308:                                              ; preds = %302, %295
  %309 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %309, i32 0, i32 6
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* @WIDE_NEGO_ENABLE, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %308
  %316 = load i8*, i8** @MSG_EXT_WDTR_BUS_16_BIT, align 8
  br label %319

317:                                              ; preds = %308
  %318 = load i8*, i8** @MSG_EXT_WDTR_BUS_8_BIT, align 8
  br label %319

319:                                              ; preds = %317, %315
  %320 = phi i8* [ %316, %315 ], [ %318, %317 ]
  %321 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %322 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %321, i32 0, i32 7
  %323 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %323, i32 0, i32 1
  store i8* %320, i8** %324, align 8
  %325 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %326 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %325, i32 0, i32 7
  %327 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %327, i32 0, i32 2
  store i64 0, i64* %328, align 8
  %329 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %330 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %329, i32 0, i32 7
  %331 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %331, i32 0, i32 1
  store i64 0, i64* %332, align 8
  %333 = load i8*, i8** @MSG_EXT_WDTR_BUS_8_BIT, align 8
  %334 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %335 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %334, i32 0, i32 7
  %336 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %336, i32 0, i32 0
  store i8* %333, i8** %337, align 8
  br label %338

338:                                              ; preds = %319, %180
  ret void
}

declare dso_local i32 @bcopy(%struct.TYPE_13__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @splcam(...) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
