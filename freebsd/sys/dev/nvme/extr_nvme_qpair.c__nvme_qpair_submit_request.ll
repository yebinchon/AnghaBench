; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_qpair.c__nvme_qpair_submit_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_qpair.c__nvme_qpair_submit_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_qpair = type { i32, %struct.TYPE_8__*, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.nvme_request = type { i32, %struct.TYPE_6__, i32, %struct.nvme_qpair* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.nvme_tracker = type { i32, %struct.TYPE_7__*, %struct.nvme_request* }
%struct.TYPE_7__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@stailq = common dso_local global i32 0, align 4
@tailq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"payload_size (%d) exceeds max_xfer_size (%d)\0A\00", align 1
@nvme_payload_map = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"bus_dmamap_load returned 0x%x!\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"bio->bio_bcount (%jd) exceeds max_xfer_size (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"bus_dmamap_load_bio returned 0x%x!\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"bus_dmamap_load_ccb returned 0x%x!\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"unknown nvme request type 0x%x\0A\00", align 1
@NVME_SCT_GENERIC = common dso_local global i32 0, align 4
@NVME_SC_DATA_TRANSFER_ERROR = common dso_local global i32 0, align 4
@DO_NOT_RETRY = common dso_local global i32 0, align 4
@ERROR_PRINT_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_qpair*, %struct.nvme_request*)* @_nvme_qpair_submit_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_nvme_qpair_submit_request(%struct.nvme_qpair* %0, %struct.nvme_request* %1) #0 {
  %3 = alloca %struct.nvme_qpair*, align 8
  %4 = alloca %struct.nvme_request*, align 8
  %5 = alloca %struct.nvme_tracker*, align 8
  %6 = alloca i32, align 4
  store %struct.nvme_qpair* %0, %struct.nvme_qpair** %3, align 8
  store %struct.nvme_request* %1, %struct.nvme_request** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %8 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %7, i32 0, i32 0
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @mtx_assert(i32* %8, i32 %9)
  %11 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %12 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %11, i32 0, i32 3
  %13 = call %struct.nvme_tracker* @TAILQ_FIRST(i32* %12)
  store %struct.nvme_tracker* %13, %struct.nvme_tracker** %5, align 8
  %14 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %15 = load %struct.nvme_request*, %struct.nvme_request** %4, align 8
  %16 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %15, i32 0, i32 3
  store %struct.nvme_qpair* %14, %struct.nvme_qpair** %16, align 8
  %17 = load %struct.nvme_tracker*, %struct.nvme_tracker** %5, align 8
  %18 = icmp eq %struct.nvme_tracker* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %21 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %19, %2
  %25 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %26 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %25, i32 0, i32 1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %33 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = load %struct.nvme_request*, %struct.nvme_request** %4, align 8
  %36 = call i32 @nvme_ctrlr_post_failed_request(%struct.TYPE_8__* %34, %struct.nvme_request* %35)
  br label %43

37:                                               ; preds = %24
  %38 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %39 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %38, i32 0, i32 4
  %40 = load %struct.nvme_request*, %struct.nvme_request** %4, align 8
  %41 = load i32, i32* @stailq, align 4
  %42 = call i32 @STAILQ_INSERT_TAIL(i32* %39, %struct.nvme_request* %40, i32 %41)
  br label %43

43:                                               ; preds = %37, %31
  br label %215

44:                                               ; preds = %19
  %45 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %46 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %45, i32 0, i32 3
  %47 = load %struct.nvme_tracker*, %struct.nvme_tracker** %5, align 8
  %48 = load i32, i32* @tailq, align 4
  %49 = call i32 @TAILQ_REMOVE(i32* %46, %struct.nvme_tracker* %47, i32 %48)
  %50 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %51 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %50, i32 0, i32 2
  %52 = load %struct.nvme_tracker*, %struct.nvme_tracker** %5, align 8
  %53 = load i32, i32* @tailq, align 4
  %54 = call i32 @TAILQ_INSERT_TAIL(i32* %51, %struct.nvme_tracker* %52, i32 %53)
  %55 = load %struct.nvme_request*, %struct.nvme_request** %4, align 8
  %56 = load %struct.nvme_tracker*, %struct.nvme_tracker** %5, align 8
  %57 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %56, i32 0, i32 2
  store %struct.nvme_request* %55, %struct.nvme_request** %57, align 8
  %58 = load %struct.nvme_request*, %struct.nvme_request** %4, align 8
  %59 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %193 [
    i32 128, label %61
    i32 129, label %110
    i32 131, label %116
    i32 130, label %168
  ]

61:                                               ; preds = %44
  %62 = load %struct.nvme_request*, %struct.nvme_request** %4, align 8
  %63 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %66 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %65, i32 0, i32 1
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sle i32 %64, %69
  %71 = zext i1 %70 to i32
  %72 = load %struct.nvme_request*, %struct.nvme_request** %4, align 8
  %73 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %76 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %75, i32 0, i32 1
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i8*
  %82 = call i32 @KASSERT(i32 %71, i8* %81)
  %83 = load %struct.nvme_tracker*, %struct.nvme_tracker** %5, align 8
  %84 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %83, i32 0, i32 1
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.nvme_tracker*, %struct.nvme_tracker** %5, align 8
  %89 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.nvme_request*, %struct.nvme_request** %4, align 8
  %92 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.nvme_request*, %struct.nvme_request** %4, align 8
  %96 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @nvme_payload_map, align 4
  %99 = load %struct.nvme_tracker*, %struct.nvme_tracker** %5, align 8
  %100 = call i32 @bus_dmamap_load(i32 %87, i32 %90, i32 %94, i32 %97, i32 %98, %struct.nvme_tracker* %99, i32 0)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %61
  %104 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %105 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %104, i32 0, i32 1
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @nvme_printf(%struct.TYPE_8__* %106, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %103, %61
  br label %198

110:                                              ; preds = %44
  %111 = load %struct.nvme_tracker*, %struct.nvme_tracker** %5, align 8
  %112 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %111, i32 0, i32 1
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = load %struct.nvme_tracker*, %struct.nvme_tracker** %5, align 8
  %115 = call i32 @nvme_qpair_submit_tracker(%struct.TYPE_7__* %113, %struct.nvme_tracker* %114)
  br label %198

116:                                              ; preds = %44
  %117 = load %struct.nvme_request*, %struct.nvme_request** %4, align 8
  %118 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %124 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %123, i32 0, i32 1
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp sle i32 %122, %127
  %129 = zext i1 %128 to i32
  %130 = load %struct.nvme_request*, %struct.nvme_request** %4, align 8
  %131 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %137 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %136, i32 0, i32 1
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = inttoptr i64 %141 to i8*
  %143 = call i32 @KASSERT(i32 %129, i8* %142)
  %144 = load %struct.nvme_tracker*, %struct.nvme_tracker** %5, align 8
  %145 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %144, i32 0, i32 1
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.nvme_tracker*, %struct.nvme_tracker** %5, align 8
  %150 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.nvme_request*, %struct.nvme_request** %4, align 8
  %153 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %154, align 8
  %156 = load i32, i32* @nvme_payload_map, align 4
  %157 = load %struct.nvme_tracker*, %struct.nvme_tracker** %5, align 8
  %158 = call i32 @bus_dmamap_load_bio(i32 %148, i32 %151, %struct.TYPE_9__* %155, i32 %156, %struct.nvme_tracker* %157, i32 0)
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* %6, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %116
  %162 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %163 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %162, i32 0, i32 1
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = load i32, i32* %6, align 4
  %166 = call i32 @nvme_printf(%struct.TYPE_8__* %164, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %165)
  br label %167

167:                                              ; preds = %161, %116
  br label %198

168:                                              ; preds = %44
  %169 = load %struct.nvme_tracker*, %struct.nvme_tracker** %5, align 8
  %170 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %169, i32 0, i32 1
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.nvme_tracker*, %struct.nvme_tracker** %5, align 8
  %175 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.nvme_request*, %struct.nvme_request** %4, align 8
  %178 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @nvme_payload_map, align 4
  %182 = load %struct.nvme_tracker*, %struct.nvme_tracker** %5, align 8
  %183 = call i32 @bus_dmamap_load_ccb(i32 %173, i32 %176, i32 %180, i32 %181, %struct.nvme_tracker* %182, i32 0)
  store i32 %183, i32* %6, align 4
  %184 = load i32, i32* %6, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %168
  %187 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %188 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %187, i32 0, i32 1
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %188, align 8
  %190 = load i32, i32* %6, align 4
  %191 = call i32 @nvme_printf(%struct.TYPE_8__* %189, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %190)
  br label %192

192:                                              ; preds = %186, %168
  br label %198

193:                                              ; preds = %44
  %194 = load %struct.nvme_request*, %struct.nvme_request** %4, align 8
  %195 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %196)
  br label %198

198:                                              ; preds = %193, %192, %167, %110, %109
  %199 = load i32, i32* %6, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %215

201:                                              ; preds = %198
  %202 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %203 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %202, i32 0, i32 0
  %204 = call i32 @mtx_unlock(i32* %203)
  %205 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %206 = load %struct.nvme_tracker*, %struct.nvme_tracker** %5, align 8
  %207 = load i32, i32* @NVME_SCT_GENERIC, align 4
  %208 = load i32, i32* @NVME_SC_DATA_TRANSFER_ERROR, align 4
  %209 = load i32, i32* @DO_NOT_RETRY, align 4
  %210 = load i32, i32* @ERROR_PRINT_ALL, align 4
  %211 = call i32 @nvme_qpair_manual_complete_tracker(%struct.nvme_qpair* %205, %struct.nvme_tracker* %206, i32 %207, i32 %208, i32 %209, i32 %210)
  %212 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %213 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %212, i32 0, i32 0
  %214 = call i32 @mtx_lock(i32* %213)
  br label %215

215:                                              ; preds = %43, %201, %198
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.nvme_tracker* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @nvme_ctrlr_post_failed_request(%struct.TYPE_8__*, %struct.nvme_request*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.nvme_request*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.nvme_tracker*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.nvme_tracker*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.nvme_tracker*, i32) #1

declare dso_local i32 @nvme_printf(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @nvme_qpair_submit_tracker(%struct.TYPE_7__*, %struct.nvme_tracker*) #1

declare dso_local i32 @bus_dmamap_load_bio(i32, i32, %struct.TYPE_9__*, i32, %struct.nvme_tracker*, i32) #1

declare dso_local i32 @bus_dmamap_load_ccb(i32, i32, i32, i32, %struct.nvme_tracker*, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @nvme_qpair_manual_complete_tracker(%struct.nvme_qpair*, %struct.nvme_tracker*, i32, i32, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
