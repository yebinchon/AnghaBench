; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_cam.c_mpt_query_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_cam.c_mpt_query_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_query_disk = type { i32 }
%struct.periph_match_pattern = type { i32, i64, i32, i32 }
%struct.periph_match_result = type { i8*, i32 }
%union.ccb = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64, i32, i64, i64, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.periph_match_result }
%struct.TYPE_6__ = type { %struct.periph_match_pattern }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@XPT_DEV_MATCH = common dso_local global i32 0, align 4
@CAM_XPT_PATH_ID = common dso_local global i32 0, align 4
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@DEV_MATCH_PERIPH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"da\00", align 1
@PERIPH_MATCH_PATH = common dso_local global i32 0, align 4
@PERIPH_MATCH_NAME = common dso_local global i32 0, align 4
@PERIPH_MATCH_TARGET = common dso_local global i32 0, align 4
@xptfd = common dso_local global i32 0, align 4
@CAMIOCOMMAND = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_DEV_MATCH_LAST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"mpt_query_disk got CAM error %#x, CDM error %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"mpt_query_disk got %d matches, expected 1\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"mpt_query_disk got wrong CAM match\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt_query_disk(i64 %0, i64 %1, %struct.mpt_query_disk* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mpt_query_disk*, align 8
  %8 = alloca %struct.periph_match_pattern*, align 8
  %9 = alloca %struct.periph_match_result*, align 8
  %10 = alloca %union.ccb, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.mpt_query_disk* %2, %struct.mpt_query_disk** %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %4, align 4
  br label %201

18:                                               ; preds = %3
  %19 = call i64 (...) @xpt_open()
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %4, align 4
  br label %201

23:                                               ; preds = %18
  %24 = call i32 @fetch_path_id(i32* %11)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %4, align 4
  br label %201

29:                                               ; preds = %23
  %30 = call i32 @bzero(%union.ccb* %10, i32 56)
  %31 = load i32, i32* @XPT_DEV_MATCH, align 4
  %32 = bitcast %union.ccb* %10 to %struct.TYPE_7__*
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @CAM_XPT_PATH_ID, align 4
  %35 = bitcast %union.ccb* %10 to %struct.TYPE_7__*
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %38 = bitcast %union.ccb* %10 to %struct.TYPE_7__*
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %41 = bitcast %union.ccb* %10 to %struct.TYPE_7__*
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  store i64 20, i64* %12, align 8
  %43 = bitcast %union.ccb* %10 to %struct.TYPE_9__*
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load i64, i64* %12, align 8
  %46 = bitcast %union.ccb* %10 to %struct.TYPE_9__*
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load i64, i64* %12, align 8
  %49 = call i8* @calloc(i32 1, i64 %48)
  %50 = bitcast i8* %49 to %struct.TYPE_10__*
  %51 = bitcast %union.ccb* %10 to %struct.TYPE_9__*
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 5
  store %struct.TYPE_10__* %50, %struct.TYPE_10__** %52, align 8
  store i64 4, i64* %12, align 8
  %53 = bitcast %union.ccb* %10 to %struct.TYPE_9__*
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  store i32 1, i32* %54, align 8
  %55 = load i64, i64* %12, align 8
  %56 = bitcast %union.ccb* %10 to %struct.TYPE_9__*
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 3
  store i64 %55, i64* %57, align 8
  %58 = load i64, i64* %12, align 8
  %59 = call i8* @calloc(i32 1, i64 %58)
  %60 = bitcast i8* %59 to %struct.TYPE_10__*
  %61 = bitcast %union.ccb* %10 to %struct.TYPE_9__*
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 6
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %62, align 8
  %63 = load i64, i64* @DEV_MATCH_PERIPH, align 8
  %64 = bitcast %union.ccb* %10 to %struct.TYPE_9__*
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 6
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  store i64 %63, i64* %68, align 8
  %69 = bitcast %union.ccb* %10 to %struct.TYPE_9__*
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 6
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store %struct.periph_match_pattern* %74, %struct.periph_match_pattern** %8, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.periph_match_pattern*, %struct.periph_match_pattern** %8, align 8
  %77 = getelementptr inbounds %struct.periph_match_pattern, %struct.periph_match_pattern* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.periph_match_pattern*, %struct.periph_match_pattern** %8, align 8
  %79 = getelementptr inbounds %struct.periph_match_pattern, %struct.periph_match_pattern* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %80, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %82 = load i64, i64* %6, align 8
  %83 = load %struct.periph_match_pattern*, %struct.periph_match_pattern** %8, align 8
  %84 = getelementptr inbounds %struct.periph_match_pattern, %struct.periph_match_pattern* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  %85 = load i32, i32* @PERIPH_MATCH_PATH, align 4
  %86 = load i32, i32* @PERIPH_MATCH_NAME, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @PERIPH_MATCH_TARGET, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.periph_match_pattern*, %struct.periph_match_pattern** %8, align 8
  %91 = getelementptr inbounds %struct.periph_match_pattern, %struct.periph_match_pattern* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* @xptfd, align 4
  %93 = load i32, i32* @CAMIOCOMMAND, align 4
  %94 = call i64 @ioctl(i32 %92, i32 %93, %union.ccb* %10)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %29
  %97 = load i32, i32* @errno, align 4
  store i32 %97, i32* %13, align 4
  %98 = bitcast %union.ccb* %10 to %struct.TYPE_9__*
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 5
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = call i32 @free(%struct.TYPE_10__* %100)
  %102 = bitcast %union.ccb* %10 to %struct.TYPE_9__*
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 6
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = call i32 @free(%struct.TYPE_10__* %104)
  %106 = load i32, i32* %13, align 4
  store i32 %106, i32* %4, align 4
  br label %201

107:                                              ; preds = %29
  %108 = bitcast %union.ccb* %10 to %struct.TYPE_9__*
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 6
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = call i32 @free(%struct.TYPE_10__* %110)
  %112 = bitcast %union.ccb* %10 to %struct.TYPE_7__*
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @CAM_STATUS_MASK, align 4
  %116 = and i32 %114, %115
  %117 = load i32, i32* @CAM_REQ_CMP, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %125, label %119

119:                                              ; preds = %107
  %120 = bitcast %union.ccb* %10 to %struct.TYPE_9__*
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @CAM_DEV_MATCH_LAST, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %138

125:                                              ; preds = %119, %107
  %126 = bitcast %union.ccb* %10 to %struct.TYPE_7__*
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = bitcast %union.ccb* %10 to %struct.TYPE_9__*
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %128, i64 %131)
  %133 = bitcast %union.ccb* %10 to %struct.TYPE_9__*
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 5
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = call i32 @free(%struct.TYPE_10__* %135)
  %137 = load i32, i32* @EIO, align 4
  store i32 %137, i32* %4, align 4
  br label %201

138:                                              ; preds = %119
  %139 = bitcast %union.ccb* %10 to %struct.TYPE_9__*
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %138
  %144 = bitcast %union.ccb* %10 to %struct.TYPE_9__*
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 5
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = call i32 @free(%struct.TYPE_10__* %146)
  %148 = load i32, i32* @ENOENT, align 4
  store i32 %148, i32* %4, align 4
  br label %201

149:                                              ; preds = %138
  %150 = bitcast %union.ccb* %10 to %struct.TYPE_9__*
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 1
  br i1 %153, label %154, label %164

154:                                              ; preds = %149
  %155 = bitcast %union.ccb* %10 to %struct.TYPE_9__*
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %157)
  %159 = bitcast %union.ccb* %10 to %struct.TYPE_9__*
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 5
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %160, align 8
  %162 = call i32 @free(%struct.TYPE_10__* %161)
  %163 = load i32, i32* @EIO, align 4
  store i32 %163, i32* %4, align 4
  br label %201

164:                                              ; preds = %149
  %165 = bitcast %union.ccb* %10 to %struct.TYPE_9__*
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 5
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i64 0
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @DEV_MATCH_PERIPH, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %180

173:                                              ; preds = %164
  %174 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %175 = bitcast %union.ccb* %10 to %struct.TYPE_9__*
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 5
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %176, align 8
  %178 = call i32 @free(%struct.TYPE_10__* %177)
  %179 = load i32, i32* @EIO, align 4
  store i32 %179, i32* %4, align 4
  br label %201

180:                                              ; preds = %164
  %181 = bitcast %union.ccb* %10 to %struct.TYPE_9__*
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 5
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i64 1
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  store %struct.periph_match_result* %186, %struct.periph_match_result** %9, align 8
  %187 = load %struct.mpt_query_disk*, %struct.mpt_query_disk** %7, align 8
  %188 = getelementptr inbounds %struct.mpt_query_disk, %struct.mpt_query_disk* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.periph_match_result*, %struct.periph_match_result** %9, align 8
  %191 = getelementptr inbounds %struct.periph_match_result, %struct.periph_match_result* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = load %struct.periph_match_result*, %struct.periph_match_result** %9, align 8
  %194 = getelementptr inbounds %struct.periph_match_result, %struct.periph_match_result* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %189, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %192, i32 %195)
  %197 = bitcast %union.ccb* %10 to %struct.TYPE_9__*
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 5
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %198, align 8
  %200 = call i32 @free(%struct.TYPE_10__* %199)
  store i32 0, i32* %4, align 4
  br label %201

201:                                              ; preds = %180, %173, %154, %143, %125, %96, %27, %21, %16
  %202 = load i32, i32* %4, align 4
  ret i32 %202
}

declare dso_local i64 @xpt_open(...) #1

declare dso_local i32 @fetch_path_id(i32*) #1

declare dso_local i32 @bzero(%union.ccb*, i32) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

declare dso_local i64 @ioctl(i32, i32, %union.ccb*) #1

declare dso_local i32 @free(%struct.TYPE_10__*) #1

declare dso_local i32 @warnx(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
