; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe_freebsd.c_twe_setup_data_dmamap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe_freebsd.c_twe_setup_data_dmamap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.twe_request = type { i32, %struct.twe_softc*, i32, i32, i32, i32, i32 }
%struct.twe_softc = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32, i32, i32 }

@TWE_CMD_MAPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"already mapped command\00", align 1
@TWE_CMD_IN_PROGRESS = common dso_local global i32 0, align 4
@TWE_STATE_FRZN = common dso_local global i32 0, align 4
@TWE_MAX_SGL_LENGTH = common dso_local global i32 0, align 4
@TWE_MAX_ATA_SGL_LENGTH = common dso_local global i32 0, align 4
@TWE_CMD_DATAIN = common dso_local global i32 0, align 4
@TWE_CMD_IMMEDIATE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@TWE_CMD_DATAOUT = common dso_local global i32 0, align 4
@TWE_CMD_ALIGNBUF = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i64 0, align 8
@TWE_STATE_CTLR_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_14__*, i32, i32)* @twe_setup_data_dmamap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twe_setup_data_dmamap(i8* %0, %struct.TYPE_14__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.twe_request*, align 8
  %10 = alloca %struct.twe_softc*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.twe_request*
  store %struct.twe_request* %13, %struct.twe_request** %9, align 8
  %14 = load %struct.twe_request*, %struct.twe_request** %9, align 8
  %15 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %14, i32 0, i32 1
  %16 = load %struct.twe_softc*, %struct.twe_softc** %15, align 8
  store %struct.twe_softc* %16, %struct.twe_softc** %10, align 8
  %17 = load %struct.twe_request*, %struct.twe_request** %9, align 8
  %18 = call %struct.TYPE_15__* @TWE_FIND_COMMAND(%struct.twe_request* %17)
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %11, align 8
  %19 = call i32 @debug_called(i32 4)
  %20 = load %struct.twe_request*, %struct.twe_request** %9, align 8
  %21 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @TWE_CMD_MAPPED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %4
  %29 = load i32, i32* @TWE_CMD_MAPPED, align 4
  %30 = load %struct.twe_request*, %struct.twe_request** %9, align 8
  %31 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.twe_request*, %struct.twe_request** %9, align 8
  %35 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @TWE_CMD_IN_PROGRESS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %28
  %41 = load i32, i32* @TWE_STATE_FRZN, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.twe_softc*, %struct.twe_softc** %10, align 8
  %44 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %40, %28
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.twe_request*, %struct.twe_request** %9, align 8
  %53 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = mul nsw i32 2, %54
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, %55
  store i32 %60, i32* %58, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %104 [
    i32 131, label %65
    i32 129, label %65
    i32 130, label %78
    i32 128, label %78
    i32 132, label %91
  ]

65:                                               ; preds = %47, %47
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  store i32 2, i32* %68, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @TWE_MAX_SGL_LENGTH, align 4
  %77 = call i32 @twe_fillin_sgl(i32* %73, %struct.TYPE_14__* %74, i32 %75, i32 %76)
  br label %140

78:                                               ; preds = %47, %47
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  store i32 3, i32* %81, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @TWE_MAX_SGL_LENGTH, align 4
  %90 = call i32 @twe_fillin_sgl(i32* %86, %struct.TYPE_14__* %87, i32 %88, i32 %89)
  br label %140

91:                                               ; preds = %47
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  store i32 5, i32* %94, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @TWE_MAX_ATA_SGL_LENGTH, align 4
  %103 = call i32 @twe_fillin_sgl(i32* %99, %struct.TYPE_14__* %100, i32 %101, i32 %102)
  br label %140

104:                                              ; preds = %47
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  switch i32 %108, label %139 [
    i32 2, label %109
    i32 3, label %119
    i32 5, label %129
  ]

109:                                              ; preds = %104
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @TWE_MAX_SGL_LENGTH, align 4
  %118 = call i32 @twe_fillin_sgl(i32* %114, %struct.TYPE_14__* %115, i32 %116, i32 %117)
  br label %139

119:                                              ; preds = %104
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @TWE_MAX_SGL_LENGTH, align 4
  %128 = call i32 @twe_fillin_sgl(i32* %124, %struct.TYPE_14__* %125, i32 %126, i32 %127)
  br label %139

129:                                              ; preds = %104
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @TWE_MAX_ATA_SGL_LENGTH, align 4
  %138 = call i32 @twe_fillin_sgl(i32* %134, %struct.TYPE_14__* %135, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %104, %129, %119, %109
  br label %140

140:                                              ; preds = %139, %91, %78, %65
  %141 = load %struct.twe_request*, %struct.twe_request** %9, align 8
  %142 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @TWE_CMD_DATAIN, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %173

147:                                              ; preds = %140
  %148 = load %struct.twe_request*, %struct.twe_request** %9, align 8
  %149 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @TWE_CMD_IMMEDIATE, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %147
  %155 = load %struct.twe_softc*, %struct.twe_softc** %10, align 8
  %156 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.twe_softc*, %struct.twe_softc** %10, align 8
  %159 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %162 = call i32 @bus_dmamap_sync(i32 %157, i32 %160, i32 %161)
  br label %172

163:                                              ; preds = %147
  %164 = load %struct.twe_softc*, %struct.twe_softc** %10, align 8
  %165 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.twe_request*, %struct.twe_request** %9, align 8
  %168 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %171 = call i32 @bus_dmamap_sync(i32 %166, i32 %169, i32 %170)
  br label %172

172:                                              ; preds = %163, %154
  br label %173

173:                                              ; preds = %172, %140
  %174 = load %struct.twe_request*, %struct.twe_request** %9, align 8
  %175 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @TWE_CMD_DATAOUT, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %224

180:                                              ; preds = %173
  %181 = load %struct.twe_request*, %struct.twe_request** %9, align 8
  %182 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @TWE_CMD_ALIGNBUF, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %198

187:                                              ; preds = %180
  %188 = load %struct.twe_request*, %struct.twe_request** %9, align 8
  %189 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.twe_request*, %struct.twe_request** %9, align 8
  %192 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.twe_request*, %struct.twe_request** %9, align 8
  %195 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @bcopy(i32 %190, i32 %193, i32 %196)
  br label %198

198:                                              ; preds = %187, %180
  %199 = load %struct.twe_request*, %struct.twe_request** %9, align 8
  %200 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @TWE_CMD_IMMEDIATE, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %214

205:                                              ; preds = %198
  %206 = load %struct.twe_softc*, %struct.twe_softc** %10, align 8
  %207 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.twe_softc*, %struct.twe_softc** %10, align 8
  %210 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %213 = call i32 @bus_dmamap_sync(i32 %208, i32 %211, i32 %212)
  br label %223

214:                                              ; preds = %198
  %215 = load %struct.twe_softc*, %struct.twe_softc** %10, align 8
  %216 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.twe_request*, %struct.twe_request** %9, align 8
  %219 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %222 = call i32 @bus_dmamap_sync(i32 %217, i32 %220, i32 %221)
  br label %223

223:                                              ; preds = %214, %205
  br label %224

224:                                              ; preds = %223, %173
  %225 = load %struct.twe_request*, %struct.twe_request** %9, align 8
  %226 = call i64 @twe_start(%struct.twe_request* %225)
  %227 = load i64, i64* @EBUSY, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %239

229:                                              ; preds = %224
  %230 = load i32, i32* @TWE_STATE_CTLR_BUSY, align 4
  %231 = load %struct.twe_request*, %struct.twe_request** %9, align 8
  %232 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %231, i32 0, i32 1
  %233 = load %struct.twe_softc*, %struct.twe_softc** %232, align 8
  %234 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = or i32 %235, %230
  store i32 %236, i32* %234, align 4
  %237 = load %struct.twe_request*, %struct.twe_request** %9, align 8
  %238 = call i32 @twe_requeue_ready(%struct.twe_request* %237)
  br label %239

239:                                              ; preds = %229, %224
  ret void
}

declare dso_local %struct.TYPE_15__* @TWE_FIND_COMMAND(%struct.twe_request*) #1

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @twe_fillin_sgl(i32*, %struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i64 @twe_start(%struct.twe_request*) #1

declare dso_local i32 @twe_requeue_ready(%struct.twe_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
