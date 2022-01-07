; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ida/extr_ida.c_ida_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ida/extr_ida.c_ida_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ida_softc = type { i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.ida_qcb = type { i64, i32, i8*, %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@dumping = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@QCB_FREE = common dso_local global i64 0, align 8
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@DMA_DATA_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"bad DMA data flags\00", align 1
@SOFT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"soft %s error\0A\00", align 1
@BIO_READ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"soft error\0A\00", align 1
@HARD_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"hard %s error\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"hard error\0A\00", align 1
@CMD_REJECTED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"invalid request\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"request failed to map: %d\0A\00", align 1
@IDA_COMMAND = common dso_local global i32 0, align 4
@IDA_INTERRUPTS = common dso_local global i32 0, align 4
@QCB_TIMEDOUT = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [30 x i8] c"ida_done(): qcb->buf is NULL!\00", align 1
@BIO_ERROR = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@ida_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ida_softc*, %struct.ida_qcb*)* @ida_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ida_done(%struct.ida_softc* %0, %struct.ida_qcb* %1) #0 {
  %3 = alloca %struct.ida_softc*, align 8
  %4 = alloca %struct.ida_qcb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ida_softc* %0, %struct.ida_softc** %3, align 8
  store %struct.ida_qcb* %1, %struct.ida_qcb** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @dumping, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.ida_softc*, %struct.ida_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %11, i32 0, i32 7
  %13 = load i32, i32* @MA_OWNED, align 4
  %14 = call i32 @mtx_assert(i32* %12, i32 %13)
  br label %15

15:                                               ; preds = %10, %2
  %16 = load %struct.ida_qcb*, %struct.ida_qcb** %4, align 8
  %17 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @QCB_FREE, align 8
  %20 = icmp ne i64 %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %6, align 4
  %22 = load %struct.ida_qcb*, %struct.ida_qcb** %4, align 8
  %23 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, 128
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %67

27:                                               ; preds = %15
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %67

30:                                               ; preds = %27
  %31 = load %struct.ida_qcb*, %struct.ida_qcb** %4, align 8
  %32 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, 128
  switch i32 %34, label %41 [
    i32 128, label %35
    i32 129, label %39
  ]

35:                                               ; preds = %30
  %36 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %37 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %5, align 4
  br label %51

39:                                               ; preds = %30
  %40 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  store i32 %40, i32* %5, align 4
  br label %51

41:                                               ; preds = %30
  %42 = load %struct.ida_qcb*, %struct.ida_qcb** %4, align 8
  %43 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, 128
  %46 = load i32, i32* @DMA_DATA_OUT, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @KASSERT(i32 %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %41, %39, %35
  %52 = load %struct.ida_softc*, %struct.ida_softc** %3, align 8
  %53 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ida_qcb*, %struct.ida_qcb** %4, align 8
  %56 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @bus_dmamap_sync(i32 %54, i32 %57, i32 %58)
  %60 = load %struct.ida_softc*, %struct.ida_softc** %3, align 8
  %61 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ida_qcb*, %struct.ida_qcb** %4, align 8
  %64 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @bus_dmamap_unload(i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %51, %27, %15
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load %struct.ida_softc*, %struct.ida_softc** %3, align 8
  %72 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.ida_softc*, %struct.ida_softc** %3, align 8
  %75 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %78 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @bus_dmamap_sync(i32 %73, i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %70, %67
  %82 = load %struct.ida_qcb*, %struct.ida_qcb** %4, align 8
  %83 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %82, i32 0, i32 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @SOFT_ERROR, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %116

91:                                               ; preds = %81
  %92 = load %struct.ida_qcb*, %struct.ida_qcb** %4, align 8
  %93 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %92, i32 0, i32 3
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = icmp ne %struct.TYPE_6__* %94, null
  br i1 %95, label %96, label %110

96:                                               ; preds = %91
  %97 = load %struct.ida_softc*, %struct.ida_softc** %3, align 8
  %98 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.ida_qcb*, %struct.ida_qcb** %4, align 8
  %101 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %100, i32 0, i32 3
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @BIO_READ, align 8
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %109 = call i32 (i32, i8*, ...) @device_printf(i32 %99, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %108)
  br label %115

110:                                              ; preds = %91
  %111 = load %struct.ida_softc*, %struct.ida_softc** %3, align 8
  %112 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (i32, i8*, ...) @device_printf(i32 %113, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %115

115:                                              ; preds = %110, %96
  br label %116

116:                                              ; preds = %115, %81
  %117 = load %struct.ida_qcb*, %struct.ida_qcb** %4, align 8
  %118 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %117, i32 0, i32 4
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @HARD_ERROR, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %151

126:                                              ; preds = %116
  store i32 1, i32* %7, align 4
  %127 = load %struct.ida_qcb*, %struct.ida_qcb** %4, align 8
  %128 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %127, i32 0, i32 3
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = icmp ne %struct.TYPE_6__* %129, null
  br i1 %130, label %131, label %145

131:                                              ; preds = %126
  %132 = load %struct.ida_softc*, %struct.ida_softc** %3, align 8
  %133 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.ida_qcb*, %struct.ida_qcb** %4, align 8
  %136 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %135, i32 0, i32 3
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @BIO_READ, align 8
  %141 = icmp eq i64 %139, %140
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %144 = call i32 (i32, i8*, ...) @device_printf(i32 %134, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %143)
  br label %150

145:                                              ; preds = %126
  %146 = load %struct.ida_softc*, %struct.ida_softc** %3, align 8
  %147 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = call i32 (i32, i8*, ...) @device_printf(i32 %148, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %150

150:                                              ; preds = %145, %131
  br label %151

151:                                              ; preds = %150, %116
  %152 = load %struct.ida_qcb*, %struct.ida_qcb** %4, align 8
  %153 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %152, i32 0, i32 4
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @CMD_REJECTED, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %151
  store i32 1, i32* %7, align 4
  %162 = load %struct.ida_softc*, %struct.ida_softc** %3, align 8
  %163 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = call i32 (i32, i8*, ...) @device_printf(i32 %164, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %166

166:                                              ; preds = %161, %151
  %167 = load %struct.ida_qcb*, %struct.ida_qcb** %4, align 8
  %168 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %167, i32 0, i32 2
  %169 = load i8*, i8** %168, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %179

171:                                              ; preds = %166
  store i32 1, i32* %7, align 4
  %172 = load %struct.ida_softc*, %struct.ida_softc** %3, align 8
  %173 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.ida_qcb*, %struct.ida_qcb** %4, align 8
  %176 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %175, i32 0, i32 2
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 (i32, i8*, ...) @device_printf(i32 %174, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8* %177)
  br label %179

179:                                              ; preds = %171, %166
  %180 = load %struct.ida_qcb*, %struct.ida_qcb** %4, align 8
  %181 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @IDA_COMMAND, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %207

186:                                              ; preds = %179
  %187 = load %struct.ida_softc*, %struct.ida_softc** %3, align 8
  %188 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @IDA_INTERRUPTS, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %186
  %194 = load %struct.ida_qcb*, %struct.ida_qcb** %4, align 8
  %195 = call i32 @wakeup(%struct.ida_qcb* %194)
  br label %196

196:                                              ; preds = %193, %186
  %197 = load %struct.ida_qcb*, %struct.ida_qcb** %4, align 8
  %198 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @QCB_TIMEDOUT, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %206

202:                                              ; preds = %196
  %203 = load %struct.ida_softc*, %struct.ida_softc** %3, align 8
  %204 = load %struct.ida_qcb*, %struct.ida_qcb** %4, align 8
  %205 = call i32 @ida_free_qcb(%struct.ida_softc* %203, %struct.ida_qcb* %204)
  br label %206

206:                                              ; preds = %202, %196
  br label %232

207:                                              ; preds = %179
  %208 = load %struct.ida_qcb*, %struct.ida_qcb** %4, align 8
  %209 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %208, i32 0, i32 3
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %209, align 8
  %211 = icmp ne %struct.TYPE_6__* %210, null
  %212 = zext i1 %211 to i32
  %213 = call i32 @KASSERT(i32 %212, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  %214 = load i32, i32* %7, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %224

216:                                              ; preds = %207
  %217 = load i32, i32* @BIO_ERROR, align 4
  %218 = load %struct.ida_qcb*, %struct.ida_qcb** %4, align 8
  %219 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %218, i32 0, i32 3
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = or i32 %222, %217
  store i32 %223, i32* %221, align 8
  br label %224

224:                                              ; preds = %216, %207
  %225 = load %struct.ida_qcb*, %struct.ida_qcb** %4, align 8
  %226 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %225, i32 0, i32 3
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %226, align 8
  %228 = call i32 @idad_intr(%struct.TYPE_6__* %227)
  %229 = load %struct.ida_softc*, %struct.ida_softc** %3, align 8
  %230 = load %struct.ida_qcb*, %struct.ida_qcb** %4, align 8
  %231 = call i32 @ida_free_qcb(%struct.ida_softc* %229, %struct.ida_qcb* %230)
  br label %232

232:                                              ; preds = %224, %206
  %233 = load i32, i32* %6, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %236, label %235

235:                                              ; preds = %232
  br label %257

236:                                              ; preds = %232
  %237 = load %struct.ida_softc*, %struct.ida_softc** %3, align 8
  %238 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %237, i32 0, i32 2
  %239 = load i64, i64* %238, align 8
  %240 = add nsw i64 %239, -1
  store i64 %240, i64* %238, align 8
  %241 = load %struct.ida_softc*, %struct.ida_softc** %3, align 8
  %242 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %241, i32 0, i32 2
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %253

245:                                              ; preds = %236
  %246 = load %struct.ida_softc*, %struct.ida_softc** %3, align 8
  %247 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %246, i32 0, i32 1
  %248 = load i32, i32* @hz, align 4
  %249 = mul nsw i32 %248, 5
  %250 = load i32, i32* @ida_timeout, align 4
  %251 = load %struct.ida_softc*, %struct.ida_softc** %3, align 8
  %252 = call i32 @callout_reset(i32* %247, i32 %249, i32 %250, %struct.ida_softc* %251)
  br label %257

253:                                              ; preds = %236
  %254 = load %struct.ida_softc*, %struct.ida_softc** %3, align 8
  %255 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %254, i32 0, i32 1
  %256 = call i32 @callout_stop(i32* %255)
  br label %257

257:                                              ; preds = %235, %253, %245
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @wakeup(%struct.ida_qcb*) #1

declare dso_local i32 @ida_free_qcb(%struct.ida_softc*, %struct.ida_qcb*) #1

declare dso_local i32 @idad_intr(%struct.TYPE_6__*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.ida_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
