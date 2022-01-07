; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_cam.c_fetch_path_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_cam.c_fetch_path_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_match_pattern = type { i32, i64, i32, i32 }
%union.ccb = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64, i32, i64, i64, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { %struct.bus_match_pattern }
%struct.TYPE_8__ = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@XPT_DEV_MATCH = common dso_local global i32 0, align 4
@DEV_MATCH_BUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"mpt\00", align 1
@mpt_unit = common dso_local global i32 0, align 4
@BUS_MATCH_NAME = common dso_local global i32 0, align 4
@BUS_MATCH_UNIT = common dso_local global i32 0, align 4
@BUS_MATCH_BUS_ID = common dso_local global i32 0, align 4
@xptfd = common dso_local global i32 0, align 4
@CAMIOCOMMAND = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_DEV_MATCH_LAST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"fetch_path_id got CAM error %#x, CDM error %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @fetch_path_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_path_id(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.bus_match_pattern*, align 8
  %5 = alloca %union.ccb, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = call i64 (...) @xpt_open()
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @ENXIO, align 4
  store i32 %11, i32* %2, align 4
  br label %145

12:                                               ; preds = %1
  %13 = call i32 @bzero(%union.ccb* %5, i32 56)
  %14 = load i32, i32* @XPT_DEV_MATCH, align 4
  %15 = bitcast %union.ccb* %5 to %struct.TYPE_8__*
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  store i64 4, i64* %6, align 8
  %17 = bitcast %union.ccb* %5 to %struct.TYPE_11__*
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load i64, i64* %6, align 8
  %20 = bitcast %union.ccb* %5 to %struct.TYPE_11__*
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i8* @calloc(i32 1, i64 %22)
  %24 = bitcast i8* %23 to %struct.TYPE_12__*
  %25 = bitcast %union.ccb* %5 to %struct.TYPE_11__*
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 5
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %26, align 8
  store i64 4, i64* %6, align 8
  %27 = bitcast %union.ccb* %5 to %struct.TYPE_11__*
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  store i32 1, i32* %28, align 8
  %29 = load i64, i64* %6, align 8
  %30 = bitcast %union.ccb* %5 to %struct.TYPE_11__*
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 3
  store i64 %29, i64* %31, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i8* @calloc(i32 1, i64 %32)
  %34 = bitcast i8* %33 to %struct.TYPE_12__*
  %35 = bitcast %union.ccb* %5 to %struct.TYPE_11__*
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 6
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %36, align 8
  %37 = load i64, i64* @DEV_MATCH_BUS, align 8
  %38 = bitcast %union.ccb* %5 to %struct.TYPE_11__*
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 6
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  store i64 %37, i64* %42, align 8
  %43 = bitcast %union.ccb* %5 to %struct.TYPE_11__*
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 6
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store %struct.bus_match_pattern* %48, %struct.bus_match_pattern** %4, align 8
  %49 = load %struct.bus_match_pattern*, %struct.bus_match_pattern** %4, align 8
  %50 = getelementptr inbounds %struct.bus_match_pattern, %struct.bus_match_pattern* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @snprintf(i32 %51, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @mpt_unit, align 4
  %54 = load %struct.bus_match_pattern*, %struct.bus_match_pattern** %4, align 8
  %55 = getelementptr inbounds %struct.bus_match_pattern, %struct.bus_match_pattern* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.bus_match_pattern*, %struct.bus_match_pattern** %4, align 8
  %57 = getelementptr inbounds %struct.bus_match_pattern, %struct.bus_match_pattern* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* @BUS_MATCH_NAME, align 4
  %59 = load i32, i32* @BUS_MATCH_UNIT, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @BUS_MATCH_BUS_ID, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.bus_match_pattern*, %struct.bus_match_pattern** %4, align 8
  %64 = getelementptr inbounds %struct.bus_match_pattern, %struct.bus_match_pattern* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @xptfd, align 4
  %66 = load i32, i32* @CAMIOCOMMAND, align 4
  %67 = call i64 @ioctl(i32 %65, i32 %66, %union.ccb* %5)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %12
  %70 = load i32, i32* @errno, align 4
  store i32 %70, i32* %7, align 4
  %71 = bitcast %union.ccb* %5 to %struct.TYPE_11__*
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 5
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = call i32 @free(%struct.TYPE_12__* %73)
  %75 = bitcast %union.ccb* %5 to %struct.TYPE_11__*
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 6
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = call i32 @free(%struct.TYPE_12__* %77)
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %2, align 4
  br label %145

80:                                               ; preds = %12
  %81 = bitcast %union.ccb* %5 to %struct.TYPE_11__*
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 6
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = call i32 @free(%struct.TYPE_12__* %83)
  %85 = bitcast %union.ccb* %5 to %struct.TYPE_8__*
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @CAM_STATUS_MASK, align 4
  %89 = and i32 %87, %88
  %90 = load i32, i32* @CAM_REQ_CMP, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %98, label %92

92:                                               ; preds = %80
  %93 = bitcast %union.ccb* %5 to %struct.TYPE_11__*
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @CAM_DEV_MATCH_LAST, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %92, %80
  %99 = bitcast %union.ccb* %5 to %struct.TYPE_8__*
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = bitcast %union.ccb* %5 to %struct.TYPE_11__*
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @warnx(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %101, i64 %104)
  %106 = bitcast %union.ccb* %5 to %struct.TYPE_11__*
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 5
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  %109 = call i32 @free(%struct.TYPE_12__* %108)
  %110 = load i32, i32* @EIO, align 4
  store i32 %110, i32* %2, align 4
  br label %145

111:                                              ; preds = %92
  %112 = bitcast %union.ccb* %5 to %struct.TYPE_11__*
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 1
  br i1 %115, label %125, label %116

116:                                              ; preds = %111
  %117 = bitcast %union.ccb* %5 to %struct.TYPE_11__*
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 5
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i64 0
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @DEV_MATCH_BUS, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %116, %111
  %126 = bitcast %union.ccb* %5 to %struct.TYPE_11__*
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 5
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = call i32 @free(%struct.TYPE_12__* %128)
  %130 = load i32, i32* @ENOENT, align 4
  store i32 %130, i32* %2, align 4
  br label %145

131:                                              ; preds = %116
  %132 = bitcast %union.ccb* %5 to %struct.TYPE_11__*
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 5
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i64 0
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32*, i32** %3, align 8
  store i32 %139, i32* %140, align 4
  %141 = bitcast %union.ccb* %5 to %struct.TYPE_11__*
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 5
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %142, align 8
  %144 = call i32 @free(%struct.TYPE_12__* %143)
  store i32 0, i32* %2, align 4
  br label %145

145:                                              ; preds = %131, %125, %98, %69, %10
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i64 @xpt_open(...) #1

declare dso_local i32 @bzero(%union.ccb*, i32) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i64 @ioctl(i32, i32, %union.ccb*) #1

declare dso_local i32 @free(%struct.TYPE_12__*) #1

declare dso_local i32 @warnx(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
