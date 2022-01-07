; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_refresh_raid_vol.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_refresh_raid_vol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { %struct.mpt_raid_disk*, i32 }
%struct.mpt_raid_disk = type { i32, %struct.mpt_raid_volume* }
%struct.mpt_raid_volume = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i64, %struct.TYPE_9__, %struct.TYPE_8__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.mpt_raid_action_result = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@MPT_RVF_UP2DATE = common dso_local global i32 0, align 4
@MPI_CONFIG_PAGETYPE_RAID_VOLUME = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"mpt_refresh_raid_vol: Failed to read RAID Vol Hdr(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"mpt_refresh_raid_vol: Failed to read RAID Vol Page(%d)\0A\00", align 1
@MPT_RVF_ACTIVE = common dso_local global i32 0, align 4
@MPI_RAID_VOL_TYPE_IM = common dso_local global i64 0, align 8
@MPI_RAIDVOL0_STATUS_FLAG_RESYNC_IN_PROGRESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"mpt_refresh_raid_vol: Get request failed!\0A\00", align 1
@MPI_RAID_ACTION_INDICATOR_STRUCT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"mpt_refresh_raid_vol: Progress Indicator fetch timeout\0A\00", align 1
@MPI_RAID_ACTION_ASTATUS_SUCCESS = common dso_local global i64 0, align 8
@MPI_IOCSTATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [56 x i8] c"mpt_refresh_raid_vol: Progress indicator fetch failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpt_softc*, %struct.mpt_raid_volume*, %struct.TYPE_12__*)* @mpt_refresh_raid_vol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpt_refresh_raid_vol(%struct.mpt_softc* %0, %struct.mpt_raid_volume* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca %struct.mpt_softc*, align 8
  %5 = alloca %struct.mpt_raid_volume*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.mpt_raid_action_result*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mpt_raid_disk*, align 8
  store %struct.mpt_softc* %0, %struct.mpt_softc** %4, align 8
  store %struct.mpt_raid_volume* %1, %struct.mpt_raid_volume** %5, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %6, align 8
  %13 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %5, align 8
  %14 = getelementptr inbounds %struct.mpt_raid_volume, %struct.mpt_raid_volume* %13, i32 0, i32 2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %7, align 8
  %16 = load i32, i32* @MPT_RVF_UP2DATE, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %5, align 8
  %19 = getelementptr inbounds %struct.mpt_raid_volume, %struct.mpt_raid_volume* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %23 = load i32, i32* @MPI_CONFIG_PAGETYPE_RAID_VOLUME, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 4
  %29 = load i32, i32* @TRUE, align 4
  %30 = call i32 @mpt_read_cfg_header(%struct.mpt_softc* %22, i32 %23, i32 0, i32 %26, i32* %28, i32 %29, i32 5000)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %3
  %34 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %35 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %5, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (%struct.mpt_softc*, %struct.mpt_raid_volume*, i8*, ...) @mpt_vol_prt(%struct.mpt_softc* %34, %struct.mpt_raid_volume* %35, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %187

40:                                               ; preds = %3
  %41 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 4
  %47 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %48 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @TRUE, align 4
  %51 = call i32 @mpt_read_cur_cfg_page(%struct.mpt_softc* %41, i32 %44, i32* %46, i32 %49, i32 %50, i32 5000)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %40
  %55 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %56 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %5, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (%struct.mpt_softc*, %struct.mpt_raid_volume*, i8*, ...) @mpt_vol_prt(%struct.mpt_softc* %55, %struct.mpt_raid_volume* %56, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %187

61:                                               ; preds = %40
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %63 = call i32 @mpt2host_config_page_raid_vol_0(%struct.TYPE_11__* %62)
  %64 = load i32, i32* @MPT_RVF_ACTIVE, align 4
  %65 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %5, align 8
  %66 = getelementptr inbounds %struct.mpt_raid_volume, %struct.mpt_raid_volume* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %113, %61
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %116

75:                                               ; preds = %69
  %76 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %77 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %76, i32 0, i32 0
  %78 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %77, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.mpt_raid_disk, %struct.mpt_raid_disk* %78, i64 %87
  store %struct.mpt_raid_disk* %88, %struct.mpt_raid_disk** %12, align 8
  %89 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %5, align 8
  %90 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %12, align 8
  %91 = getelementptr inbounds %struct.mpt_raid_disk, %struct.mpt_raid_disk* %90, i32 0, i32 1
  store %struct.mpt_raid_volume* %89, %struct.mpt_raid_volume** %91, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %12, align 8
  %101 = getelementptr inbounds %struct.mpt_raid_disk, %struct.mpt_raid_disk* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @MPI_RAID_VOL_TYPE_IM, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %75
  %108 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %12, align 8
  %109 = getelementptr inbounds %struct.mpt_raid_disk, %struct.mpt_raid_disk* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %107, %75
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %11, align 4
  br label %69

116:                                              ; preds = %69
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @MPI_RAIDVOL0_STATUS_FLAG_RESYNC_IN_PROGRESS, align 4
  %122 = and i32 %120, %121
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  br label %187

125:                                              ; preds = %116
  %126 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %127 = load i32, i32* @TRUE, align 4
  %128 = call i32* @mpt_get_request(%struct.mpt_softc* %126, i32 %127)
  store i32* %128, i32** %9, align 8
  %129 = load i32*, i32** %9, align 8
  %130 = icmp eq i32* %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %133 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %5, align 8
  %134 = call i32 (%struct.mpt_softc*, %struct.mpt_raid_volume*, i8*, ...) @mpt_vol_prt(%struct.mpt_softc* %132, %struct.mpt_raid_volume* %133, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %187

135:                                              ; preds = %125
  %136 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %137 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %5, align 8
  %138 = load i32*, i32** %9, align 8
  %139 = load i32, i32* @MPI_RAID_ACTION_INDICATOR_STRUCT, align 4
  %140 = load i32, i32* @FALSE, align 4
  %141 = load i32, i32* @TRUE, align 4
  %142 = call i32 @mpt_issue_raid_req(%struct.mpt_softc* %136, %struct.mpt_raid_volume* %137, i32* null, i32* %138, i32 %139, i32 0, i32 0, i32 0, i32 %140, i32 %141)
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* @ETIMEDOUT, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %135
  %147 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %148 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %5, align 8
  %149 = call i32 (%struct.mpt_softc*, %struct.mpt_raid_volume*, i8*, ...) @mpt_vol_prt(%struct.mpt_softc* %147, %struct.mpt_raid_volume* %148, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %150 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %151 = load i32*, i32** %9, align 8
  %152 = call i32 @mpt_free_request(%struct.mpt_softc* %150, i32* %151)
  br label %187

153:                                              ; preds = %135
  %154 = load i32*, i32** %9, align 8
  %155 = call %struct.mpt_raid_action_result* @REQ_TO_RAID_ACTION_RESULT(i32* %154)
  store %struct.mpt_raid_action_result* %155, %struct.mpt_raid_action_result** %8, align 8
  %156 = load i32, i32* %10, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %179

158:                                              ; preds = %153
  %159 = load %struct.mpt_raid_action_result*, %struct.mpt_raid_action_result** %8, align 8
  %160 = getelementptr inbounds %struct.mpt_raid_action_result, %struct.mpt_raid_action_result* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @MPI_RAID_ACTION_ASTATUS_SUCCESS, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %179

164:                                              ; preds = %158
  %165 = load i32*, i32** %9, align 8
  %166 = call i64 @REQ_IOCSTATUS(i32* %165)
  %167 = load i64, i64* @MPI_IOCSTATUS_SUCCESS, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %179

169:                                              ; preds = %164
  %170 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %5, align 8
  %171 = getelementptr inbounds %struct.mpt_raid_volume, %struct.mpt_raid_volume* %170, i32 0, i32 0
  %172 = load %struct.mpt_raid_action_result*, %struct.mpt_raid_action_result** %8, align 8
  %173 = getelementptr inbounds %struct.mpt_raid_action_result, %struct.mpt_raid_action_result* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = call i32 @memcpy(i32* %171, i32* %174, i32 4)
  %176 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %5, align 8
  %177 = getelementptr inbounds %struct.mpt_raid_volume, %struct.mpt_raid_volume* %176, i32 0, i32 0
  %178 = call i32 @mpt2host_mpi_raid_vol_indicator(i32* %177)
  br label %183

179:                                              ; preds = %164, %158, %153
  %180 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %181 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %5, align 8
  %182 = call i32 (%struct.mpt_softc*, %struct.mpt_raid_volume*, i8*, ...) @mpt_vol_prt(%struct.mpt_softc* %180, %struct.mpt_raid_volume* %181, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  br label %183

183:                                              ; preds = %179, %169
  %184 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %185 = load i32*, i32** %9, align 8
  %186 = call i32 @mpt_free_request(%struct.mpt_softc* %184, i32* %185)
  br label %187

187:                                              ; preds = %183, %146, %131, %124, %54, %33
  ret void
}

declare dso_local i32 @mpt_read_cfg_header(%struct.mpt_softc*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @mpt_vol_prt(%struct.mpt_softc*, %struct.mpt_raid_volume*, i8*, ...) #1

declare dso_local i32 @mpt_read_cur_cfg_page(%struct.mpt_softc*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @mpt2host_config_page_raid_vol_0(%struct.TYPE_11__*) #1

declare dso_local i32* @mpt_get_request(%struct.mpt_softc*, i32) #1

declare dso_local i32 @mpt_issue_raid_req(%struct.mpt_softc*, %struct.mpt_raid_volume*, i32*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mpt_free_request(%struct.mpt_softc*, i32*) #1

declare dso_local %struct.mpt_raid_action_result* @REQ_TO_RAID_ACTION_RESULT(i32*) #1

declare dso_local i64 @REQ_IOCSTATUS(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mpt2host_mpi_raid_vol_indicator(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
