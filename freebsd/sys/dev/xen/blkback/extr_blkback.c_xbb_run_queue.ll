; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_run_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_run_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbb_softc = type { i32, i64, i64, i32, i32, i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_12__, i32, i32, i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.xbb_xen_reqlist = type { i64, i32, i64 }
%struct.TYPE_10__ = type { i64, i32, i64 }
%struct.blkif_x86_32_request = type { i32 }
%struct.blkif_x86_64_request = type { i32 }

@xbb_xen_reqlist = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unexpected blkif protocol ABI.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @xbb_run_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xbb_run_queue(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xbb_softc*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xbb_xen_reqlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.blkif_x86_32_request*, align 8
  %16 = alloca %struct.blkif_x86_64_request*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = bitcast i8* %17 to %struct.xbb_softc*
  store %struct.xbb_softc* %18, %struct.xbb_softc** %5, align 8
  %19 = load %struct.xbb_softc*, %struct.xbb_softc** %5, align 8
  %20 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %19, i32 0, i32 8
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %6, align 8
  br label %21

21:                                               ; preds = %222, %2
  %22 = load %struct.xbb_softc*, %struct.xbb_softc** %5, align 8
  %23 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %22, i32 0, i32 6
  %24 = load i32, i32* @xbb_xen_reqlist, align 4
  %25 = load i32, i32* @links, align 4
  %26 = call %struct.xbb_xen_reqlist* @STAILQ_LAST(i32* %23, i32 %24, i32 %25)
  store %struct.xbb_xen_reqlist* %26, %struct.xbb_xen_reqlist** %10, align 8
  %27 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %10, align 8
  %28 = icmp ne %struct.xbb_xen_reqlist* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %21
  %30 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %10, align 8
  %31 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %8, align 8
  %33 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %10, align 8
  %34 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %9, align 4
  br label %37

36:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  store i64 0, i64* %8, align 8
  br label %37

37:                                               ; preds = %36, %29
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %7, align 8
  %44 = call i32 (...) @rmb()
  br label %45

45:                                               ; preds = %153, %37
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %45
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @RING_REQUEST_CONS_OVERFLOW(%struct.TYPE_12__* %54, i64 %58)
  %60 = icmp eq i64 %59, 0
  br label %61

61:                                               ; preds = %52, %45
  %62 = phi i1 [ false, %45 ], [ %60, %52 ]
  br i1 %62, label %63, label %178

63:                                               ; preds = %61
  %64 = load %struct.xbb_softc*, %struct.xbb_softc** %5, align 8
  %65 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %101 [
    i32 130, label %67
    i32 129, label %77
    i32 128, label %89
  ]

67:                                               ; preds = %63
  %68 = load %struct.xbb_softc*, %struct.xbb_softc** %5, align 8
  %69 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %68, i32 0, i32 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i8* @RING_GET_REQUEST(i32* %70, i64 %74)
  %76 = bitcast i8* %75 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %76, %struct.TYPE_10__** %13, align 8
  br label %103

77:                                               ; preds = %63
  %78 = load %struct.xbb_softc*, %struct.xbb_softc** %5, align 8
  %79 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %78, i32 0, i32 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i8* @RING_GET_REQUEST(i32* %80, i64 %84)
  %86 = bitcast i8* %85 to %struct.blkif_x86_32_request*
  store %struct.blkif_x86_32_request* %86, %struct.blkif_x86_32_request** %15, align 8
  %87 = load %struct.blkif_x86_32_request*, %struct.blkif_x86_32_request** %15, align 8
  %88 = call i32 @blkif_get_x86_32_req(%struct.TYPE_10__* %12, %struct.blkif_x86_32_request* %87)
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %13, align 8
  br label %103

89:                                               ; preds = %63
  %90 = load %struct.xbb_softc*, %struct.xbb_softc** %5, align 8
  %91 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %90, i32 0, i32 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i8* @RING_GET_REQUEST(i32* %92, i64 %96)
  %98 = bitcast i8* %97 to %struct.blkif_x86_64_request*
  store %struct.blkif_x86_64_request* %98, %struct.blkif_x86_64_request** %16, align 8
  %99 = load %struct.blkif_x86_64_request*, %struct.blkif_x86_64_request** %16, align 8
  %100 = call i32 @blkif_get_x86_64_req(%struct.TYPE_10__* %12, %struct.blkif_x86_64_request* %99)
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %13, align 8
  br label %103

101:                                              ; preds = %63
  %102 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %89, %77, %67
  %104 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %10, align 8
  %105 = icmp ne %struct.xbb_xen_reqlist* %104, null
  br i1 %105, label %106, label %141

106:                                              ; preds = %103
  %107 = load %struct.xbb_softc*, %struct.xbb_softc** %5, align 8
  %108 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %140, label %111

111:                                              ; preds = %106
  %112 = load %struct.xbb_softc*, %struct.xbb_softc** %5, align 8
  %113 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %141

116:                                              ; preds = %111
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* %8, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %140, label %122

122:                                              ; preds = %116
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %140, label %128

128:                                              ; preds = %122
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %10, align 8
  %133 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %131, %134
  %136 = load %struct.xbb_softc*, %struct.xbb_softc** %5, align 8
  %137 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = icmp sgt i64 %135, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %128, %122, %116, %106
  store %struct.xbb_xen_reqlist* null, %struct.xbb_xen_reqlist** %10, align 8
  br label %141

141:                                              ; preds = %140, %128, %111, %103
  %142 = load %struct.xbb_softc*, %struct.xbb_softc** %5, align 8
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %144 = load %struct.xbb_softc*, %struct.xbb_softc** %5, align 8
  %145 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %144, i32 0, i32 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @xbb_get_resources(%struct.xbb_softc* %142, %struct.xbb_xen_reqlist** %10, %struct.TYPE_10__* %143, i64 %148)
  store i32 %149, i32* %11, align 4
  %150 = load i32, i32* %11, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %141
  br label %178

153:                                              ; preds = %141
  %154 = load %struct.xbb_softc*, %struct.xbb_softc** %5, align 8
  %155 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %154, i32 0, i32 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %158, 1
  store i64 %159, i64* %157, align 8
  %160 = load %struct.xbb_softc*, %struct.xbb_softc** %5, align 8
  %161 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %160, i32 0, i32 7
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %161, align 8
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %165 = call i32 @xbb_count_sects(%struct.TYPE_10__* %164)
  store i32 %165, i32* %14, align 4
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i32, i32* %14, align 4
  %170 = sext i32 %169 to i64
  %171 = add nsw i64 %168, %170
  store i64 %171, i64* %8, align 8
  %172 = load i64, i64* %8, align 8
  %173 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %10, align 8
  %174 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %173, i32 0, i32 0
  store i64 %172, i64* %174, align 8
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  store i32 %177, i32* %9, align 4
  br label %45

178:                                              ; preds = %152, %61
  %179 = load %struct.xbb_softc*, %struct.xbb_softc** %5, align 8
  %180 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %179, i32 0, i32 6
  %181 = call %struct.xbb_xen_reqlist* @STAILQ_FIRST(i32* %180)
  store %struct.xbb_xen_reqlist* %181, %struct.xbb_xen_reqlist** %10, align 8
  %182 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %10, align 8
  %183 = icmp eq %struct.xbb_xen_reqlist* %182, null
  br i1 %183, label %184, label %185

184:                                              ; preds = %178
  br label %223

185:                                              ; preds = %178
  %186 = load %struct.xbb_softc*, %struct.xbb_softc** %5, align 8
  %187 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %186, i32 0, i32 6
  %188 = load i32, i32* @links, align 4
  %189 = call i32 @STAILQ_REMOVE_HEAD(i32* %187, i32 %188)
  %190 = load %struct.xbb_softc*, %struct.xbb_softc** %5, align 8
  %191 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %10, align 8
  %192 = call i32 @xbb_dispatch_io(%struct.xbb_softc* %190, %struct.xbb_xen_reqlist* %191)
  store i32 %192, i32* %11, align 4
  %193 = load i32, i32* %11, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %185
  %196 = load %struct.xbb_softc*, %struct.xbb_softc** %5, align 8
  %197 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %196, i32 0, i32 6
  %198 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %10, align 8
  %199 = load i32, i32* @links, align 4
  %200 = call i32 @STAILQ_INSERT_HEAD(i32* %197, %struct.xbb_xen_reqlist* %198, i32 %199)
  br label %223

201:                                              ; preds = %185
  %202 = load %struct.xbb_softc*, %struct.xbb_softc** %5, align 8
  %203 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %202, i32 0, i32 6
  %204 = call %struct.xbb_xen_reqlist* @STAILQ_FIRST(i32* %203)
  store %struct.xbb_xen_reqlist* %204, %struct.xbb_xen_reqlist** %10, align 8
  %205 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %10, align 8
  %206 = icmp ne %struct.xbb_xen_reqlist* %205, null
  br i1 %206, label %207, label %212

207:                                              ; preds = %201
  %208 = load %struct.xbb_softc*, %struct.xbb_softc** %5, align 8
  %209 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 8
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %209, align 8
  br label %217

212:                                              ; preds = %201
  %213 = load %struct.xbb_softc*, %struct.xbb_softc** %5, align 8
  %214 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %214, align 4
  br label %217

217:                                              ; preds = %212, %207
  %218 = load %struct.xbb_softc*, %struct.xbb_softc** %5, align 8
  %219 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 8
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %219, align 8
  br label %222

222:                                              ; preds = %217
  br label %21

223:                                              ; preds = %195, %184
  ret void
}

declare dso_local %struct.xbb_xen_reqlist* @STAILQ_LAST(i32*, i32, i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i64 @RING_REQUEST_CONS_OVERFLOW(%struct.TYPE_12__*, i64) #1

declare dso_local i8* @RING_GET_REQUEST(i32*, i64) #1

declare dso_local i32 @blkif_get_x86_32_req(%struct.TYPE_10__*, %struct.blkif_x86_32_request*) #1

declare dso_local i32 @blkif_get_x86_64_req(%struct.TYPE_10__*, %struct.blkif_x86_64_request*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @xbb_get_resources(%struct.xbb_softc*, %struct.xbb_xen_reqlist**, %struct.TYPE_10__*, i64) #1

declare dso_local i32 @xbb_count_sects(%struct.TYPE_10__*) #1

declare dso_local %struct.xbb_xen_reqlist* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @xbb_dispatch_io(%struct.xbb_softc*, %struct.xbb_xen_reqlist*) #1

declare dso_local i32 @STAILQ_INSERT_HEAD(i32*, %struct.xbb_xen_reqlist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
