; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_cam.c_pqi_request_map_helper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_cam.c_pqi_request_map_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i32, i64, i32, %struct.TYPE_14__*, i32, i32, i32, %struct.TYPE_15__*, %struct.TYPE_20__* }
%struct.TYPE_14__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_15__ = type { i64, i32, i32 }
%union.ccb = type { i32 }

@CAM_RESRC_UNAVAIL = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [46 x i8] c"map failed err = %d or nseg(%d) > sgelem(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"os_mem_alloc() failed; nseg = %d\0A\00", align 1
@SOP_DATA_DIR_FROM_DEVICE = common dso_local global i64 0, align 8
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@SOP_DATA_DIR_TO_DEVICE = common dso_local global i64 0, align 8
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@REQUEST_PENDING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Build IO failed, error = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_21__*, i32, i32)* @pqi_request_map_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_request_map_helper(i8* %0, %struct.TYPE_21__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %13, %struct.TYPE_19__** %10, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  store %struct.TYPE_20__* %16, %struct.TYPE_20__** %9, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %20, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %19, %4
  %27 = load i8*, i8** @CAM_RESRC_UNAVAIL, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  store i8* %27, i8** %32, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %36 = call i32 @pqi_freeze_ccb(%struct.TYPE_14__* %35)
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, i32, ...) @DBG_ERR_BTL(i32 %39, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41, i32 %45)
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %48 = call i32 @pqi_unmap_request(%struct.TYPE_19__* %47)
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  %52 = bitcast %struct.TYPE_14__* %51 to %union.ccb*
  %53 = call i32 @xpt_done(%union.ccb* %52)
  br label %201

54:                                               ; preds = %19
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 64
  %59 = trunc i64 %58 to i32
  %60 = call %struct.TYPE_15__* @os_mem_alloc(%struct.TYPE_20__* %55, i32 %59)
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 7
  store %struct.TYPE_15__* %60, %struct.TYPE_15__** %62, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 7
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %64, align 8
  %66 = icmp eq %struct.TYPE_15__* %65, null
  br i1 %66, label %67, label %90

67:                                               ; preds = %54
  %68 = load i8*, i8** @CAM_RESRC_UNAVAIL, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  store i8* %68, i8** %73, align 8
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = call i32 @pqi_freeze_ccb(%struct.TYPE_14__* %76)
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 (i32, i8*, i32, ...) @DBG_ERR_BTL(i32 %80, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %84 = call i32 @pqi_unmap_request(%struct.TYPE_19__* %83)
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = bitcast %struct.TYPE_14__* %87 to %union.ccb*
  %89 = call i32 @xpt_done(%union.ccb* %88)
  br label %201

90:                                               ; preds = %54
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  store i32 0, i32* %11, align 4
  br label %94

94:                                               ; preds = %132, %90
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %135

98:                                               ; preds = %94
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 7
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %106, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 2
  store i32 %104, i32* %111, align 4
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 7
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %119, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  store i32 %117, i32* %124, align 8
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 7
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  store i64 0, i64* %131, align 8
  br label %132

132:                                              ; preds = %98
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %11, align 4
  br label %94

135:                                              ; preds = %94
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @SOP_DATA_DIR_FROM_DEVICE, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %151

141:                                              ; preds = %135
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %150 = call i32 @bus_dmamap_sync(i32 %145, i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %141, %135
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @SOP_DATA_DIR_TO_DEVICE, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %167

157:                                              ; preds = %151
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %166 = call i32 @bus_dmamap_sync(i32 %161, i32 %164, i32 %165)
  br label %167

167:                                              ; preds = %157, %151
  %168 = load i32, i32* @REQUEST_PENDING, align 4
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 5
  store i32 %168, i32* %170, align 4
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %173 = call i32 @pqisrc_build_send_io(%struct.TYPE_20__* %171, %struct.TYPE_19__* %172)
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %8, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %201

176:                                              ; preds = %167
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 2
  store i32 0, i32* %178, align 8
  %179 = load i8*, i8** @CAM_RESRC_UNAVAIL, align 8
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 3
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 0
  store i8* %179, i8** %184, align 8
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 3
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %186, align 8
  %188 = call i32 @pqi_freeze_ccb(%struct.TYPE_14__* %187)
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* %8, align 4
  %193 = call i32 (i32, i8*, i32, ...) @DBG_ERR_BTL(i32 %191, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %192)
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %195 = call i32 @pqi_unmap_request(%struct.TYPE_19__* %194)
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 3
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %197, align 8
  %199 = bitcast %struct.TYPE_14__* %198 to %union.ccb*
  %200 = call i32 @xpt_done(%union.ccb* %199)
  br label %201

201:                                              ; preds = %26, %67, %176, %167
  ret void
}

declare dso_local i32 @pqi_freeze_ccb(%struct.TYPE_14__*) #1

declare dso_local i32 @DBG_ERR_BTL(i32, i8*, i32, ...) #1

declare dso_local i32 @pqi_unmap_request(%struct.TYPE_19__*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local %struct.TYPE_15__* @os_mem_alloc(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @pqisrc_build_send_io(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
