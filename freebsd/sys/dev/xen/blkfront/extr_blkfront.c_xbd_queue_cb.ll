; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_queue_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_queue_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbd_softc = type { i32, i32, i32, i32, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.xbd_command = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*, %struct.xbd_softc* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i8*, i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i8*, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Too many segments in a blkfront I/O\00", align 1
@BLKIF_MAX_SEGMENTS_PER_REQUEST = common dso_local global i32 0, align 4
@BLKIF_OP_WRITE = common dso_local global i64 0, align 8
@BLKIF_OP_INDIRECT = common dso_local global i32 0, align 4
@BLKIF_OP_READ = common dso_local global i64 0, align 8
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@XBD_Q_BUSY = common dso_local global i32 0, align 4
@XBDCF_ASYNC_MAPPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32, i32)* @xbd_queue_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xbd_queue_cb(i8* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.xbd_softc*, align 8
  %10 = alloca %struct.xbd_command*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.xbd_command*
  store %struct.xbd_command* %15, %struct.xbd_command** %10, align 8
  %16 = load %struct.xbd_command*, %struct.xbd_command** %10, align 8
  %17 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %16, i32 0, i32 11
  %18 = load %struct.xbd_softc*, %struct.xbd_softc** %17, align 8
  store %struct.xbd_softc* %18, %struct.xbd_softc** %9, align 8
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %4
  %22 = load i32, i32* @EIO, align 4
  %23 = load %struct.xbd_command*, %struct.xbd_command** %10, align 8
  %24 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %23, i32 0, i32 10
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 4
  %27 = load %struct.xbd_command*, %struct.xbd_command** %10, align 8
  %28 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %27, i32 0, i32 10
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = call i32 @biodone(%struct.TYPE_7__* %29)
  %31 = load %struct.xbd_command*, %struct.xbd_command** %10, align 8
  %32 = call i32 @xbd_free_command(%struct.xbd_command* %31)
  br label %227

33:                                               ; preds = %4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.xbd_softc*, %struct.xbd_softc** %9, align 8
  %36 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sle i32 %34, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @KASSERT(i32 %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @BLKIF_MAX_SEGMENTS_PER_REQUEST, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %106

44:                                               ; preds = %33
  %45 = load %struct.xbd_softc*, %struct.xbd_softc** %9, align 8
  %46 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %45, i32 0, i32 5
  %47 = load %struct.xbd_softc*, %struct.xbd_softc** %9, align 8
  %48 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @RING_GET_REQUEST(%struct.TYPE_8__* %46, i32 %50)
  %52 = inttoptr i64 %51 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %52, %struct.TYPE_5__** %12, align 8
  %53 = load %struct.xbd_softc*, %struct.xbd_softc** %9, align 8
  %54 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  %58 = load %struct.xbd_command*, %struct.xbd_command** %10, align 8
  %59 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 4
  %63 = load %struct.xbd_command*, %struct.xbd_command** %10, align 8
  %64 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.xbd_command*, %struct.xbd_command** %10, align 8
  %69 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load %struct.xbd_softc*, %struct.xbd_softc** %9, align 8
  %74 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.xbd_command*, %struct.xbd_command** %10, align 8
  %84 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.xbd_command*, %struct.xbd_command** %10, align 8
  %88 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %87, i32 0, i32 3
  %89 = load %struct.xbd_softc*, %struct.xbd_softc** %9, align 8
  %90 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @xenbus_get_otherend_id(i32 %91)
  %93 = load %struct.xbd_command*, %struct.xbd_command** %10, align 8
  %94 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @BLKIF_OP_WRITE, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = load %struct.xbd_command*, %struct.xbd_command** %10, align 8
  %100 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @xbd_mksegarray(i32* %85, i32 %86, i32* %88, i32 %92, i32 %98, i32 %101, i32 %104)
  br label %183

106:                                              ; preds = %33
  %107 = load %struct.xbd_softc*, %struct.xbd_softc** %9, align 8
  %108 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %107, i32 0, i32 5
  %109 = load %struct.xbd_softc*, %struct.xbd_softc** %9, align 8
  %110 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @RING_GET_REQUEST(%struct.TYPE_8__* %108, i32 %112)
  %114 = inttoptr i64 %113 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %114, %struct.TYPE_6__** %13, align 8
  %115 = load %struct.xbd_softc*, %struct.xbd_softc** %9, align 8
  %116 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %115, i32 0, i32 5
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 8
  %120 = load %struct.xbd_command*, %struct.xbd_command** %10, align 8
  %121 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %120, i32 0, i32 9
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 6
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* @BLKIF_OP_INDIRECT, align 4
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 5
  store i32 %125, i32* %127, align 4
  %128 = load %struct.xbd_command*, %struct.xbd_command** %10, align 8
  %129 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  %133 = load %struct.xbd_command*, %struct.xbd_command** %10, align 8
  %134 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 8
  %138 = load %struct.xbd_softc*, %struct.xbd_softc** %9, align 8
  %139 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = inttoptr i64 %140 to i8*
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 3
  store i8* %141, i8** %143, align 8
  %144 = load i32, i32* %7, align 4
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 8
  %147 = load i32, i32* %7, align 4
  %148 = load %struct.xbd_command*, %struct.xbd_command** %10, align 8
  %149 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 8
  %150 = load i32*, i32** %6, align 8
  %151 = load i32, i32* %7, align 4
  %152 = load %struct.xbd_command*, %struct.xbd_command** %10, align 8
  %153 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %152, i32 0, i32 3
  %154 = load %struct.xbd_softc*, %struct.xbd_softc** %9, align 8
  %155 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @xenbus_get_otherend_id(i32 %156)
  %158 = load %struct.xbd_command*, %struct.xbd_command** %10, align 8
  %159 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @BLKIF_OP_WRITE, align 8
  %162 = icmp eq i64 %160, %161
  %163 = zext i1 %162 to i32
  %164 = load %struct.xbd_command*, %struct.xbd_command** %10, align 8
  %165 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %164, i32 0, i32 7
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.xbd_command*, %struct.xbd_command** %10, align 8
  %168 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @xbd_mksegarray(i32* %150, i32 %151, i32* %153, i32 %157, i32 %163, i32 %166, i32 %169)
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.xbd_command*, %struct.xbd_command** %10, align 8
  %175 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %174, i32 0, i32 5
  %176 = load %struct.xbd_softc*, %struct.xbd_softc** %9, align 8
  %177 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = mul i64 4, %179
  %181 = trunc i64 %180 to i32
  %182 = call i32 @memcpy(i32 %173, i32* %175, i32 %181)
  br label %183

183:                                              ; preds = %106, %44
  %184 = load %struct.xbd_command*, %struct.xbd_command** %10, align 8
  %185 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @BLKIF_OP_READ, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %183
  %190 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  store i32 %190, i32* %11, align 4
  br label %201

191:                                              ; preds = %183
  %192 = load %struct.xbd_command*, %struct.xbd_command** %10, align 8
  %193 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @BLKIF_OP_WRITE, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %191
  %198 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  store i32 %198, i32* %11, align 4
  br label %200

199:                                              ; preds = %191
  store i32 0, i32* %11, align 4
  br label %200

200:                                              ; preds = %199, %197
  br label %201

201:                                              ; preds = %200, %189
  %202 = load %struct.xbd_softc*, %struct.xbd_softc** %9, align 8
  %203 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.xbd_command*, %struct.xbd_command** %10, align 8
  %206 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %11, align 4
  %209 = call i32 @bus_dmamap_sync(i32 %204, i32 %207, i32 %208)
  %210 = load %struct.xbd_command*, %struct.xbd_command** %10, align 8
  %211 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @gnttab_free_grant_references(i32 %212)
  %214 = load %struct.xbd_command*, %struct.xbd_command** %10, align 8
  %215 = load i32, i32* @XBD_Q_BUSY, align 4
  %216 = call i32 @xbd_enqueue_cm(%struct.xbd_command* %214, i32 %215)
  %217 = load %struct.xbd_command*, %struct.xbd_command** %10, align 8
  %218 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @XBDCF_ASYNC_MAPPING, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %201
  %224 = load %struct.xbd_softc*, %struct.xbd_softc** %9, align 8
  %225 = call i32 @xbd_flush_requests(%struct.xbd_softc* %224)
  br label %226

226:                                              ; preds = %223, %201
  br label %227

227:                                              ; preds = %226, %21
  ret void
}

declare dso_local i32 @biodone(%struct.TYPE_7__*) #1

declare dso_local i32 @xbd_free_command(%struct.xbd_command*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @RING_GET_REQUEST(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @xbd_mksegarray(i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @xenbus_get_otherend_id(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @gnttab_free_grant_references(i32) #1

declare dso_local i32 @xbd_enqueue_cm(%struct.xbd_command*, i32) #1

declare dso_local i32 @xbd_flush_requests(%struct.xbd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
