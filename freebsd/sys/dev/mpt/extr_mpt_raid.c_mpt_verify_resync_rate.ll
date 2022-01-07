; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_verify_resync_rate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_verify_resync_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }
%struct.mpt_raid_volume = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.mpt_raid_action_result = type { i64 }

@MPT_RAID_RESYNC_RATE_NC = common dso_local global i32 0, align 4
@MPI_RAIDVOL0_SETTING_PRIORITY_RESYNC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"mpt_verify_resync_rate: Get request failed!\0A\00", align 1
@MPI_RAID_ACTION_SET_RESYNC_RATE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"mpt_refresh_raid_data: Resync Rate Setting Timed-out\0A\00", align 1
@MPI_IOCSTATUS_SUCCESS = common dso_local global i64 0, align 8
@MPI_RAID_ACTION_ASTATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Resync Rate Setting Failed: %d:%x:%x\0A\00", align 1
@MPI_RAID_ACTION_CHANGE_VOLUME_SETTINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpt_softc*, %struct.mpt_raid_volume*)* @mpt_verify_resync_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpt_verify_resync_rate(%struct.mpt_softc* %0, %struct.mpt_raid_volume* %1) #0 {
  %3 = alloca %struct.mpt_softc*, align 8
  %4 = alloca %struct.mpt_raid_volume*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.mpt_raid_action_result*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %3, align 8
  store %struct.mpt_raid_volume* %1, %struct.mpt_raid_volume** %4, align 8
  %11 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %4, align 8
  %12 = getelementptr inbounds %struct.mpt_raid_volume, %struct.mpt_raid_volume* %11, i32 0, i32 0
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %7, align 8
  %14 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %15 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MPT_RAID_RESYNC_RATE_NC, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %202

20:                                               ; preds = %2
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MPI_RAIDVOL0_SETTING_PRIORITY_RESYNC, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %106

31:                                               ; preds = %20
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %36 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp ne i64 %34, %38
  br i1 %39, label %40, label %106

40:                                               ; preds = %31
  %41 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %42 = load i32, i32* @TRUE, align 4
  %43 = call %struct.TYPE_9__* @mpt_get_request(%struct.mpt_softc* %41, i32 %42)
  store %struct.TYPE_9__* %43, %struct.TYPE_9__** %5, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = icmp eq %struct.TYPE_9__* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %48 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %4, align 8
  %49 = call i32 (%struct.mpt_softc*, %struct.mpt_raid_volume*, i8*, ...) @mpt_vol_prt(%struct.mpt_softc* %47, %struct.mpt_raid_volume* %48, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %202

50:                                               ; preds = %40
  %51 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %52 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %4, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = load i32, i32* @MPI_RAID_ACTION_SET_RESYNC_RATE, align 4
  %55 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %56 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @FALSE, align 4
  %59 = load i32, i32* @TRUE, align 4
  %60 = call i32 @mpt_issue_raid_req(%struct.mpt_softc* %51, %struct.mpt_raid_volume* %52, i32* null, %struct.TYPE_9__* %53, i32 %54, i32 %57, i32 0, i32 0, i32 %58, i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @ETIMEDOUT, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %50
  %65 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %66 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %4, align 8
  %67 = call i32 (%struct.mpt_softc*, %struct.mpt_raid_volume*, i8*, ...) @mpt_vol_prt(%struct.mpt_softc* %65, %struct.mpt_raid_volume* %66, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  br label %202

68:                                               ; preds = %50
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %70 = call %struct.mpt_raid_action_result* @REQ_TO_RAID_ACTION_RESULT(%struct.TYPE_9__* %69)
  store %struct.mpt_raid_action_result* %70, %struct.mpt_raid_action_result** %6, align 8
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %68
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %75 = call i64 @REQ_IOCSTATUS(%struct.TYPE_9__* %74)
  %76 = load i64, i64* @MPI_IOCSTATUS_SUCCESS, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %84, label %78

78:                                               ; preds = %73
  %79 = load %struct.mpt_raid_action_result*, %struct.mpt_raid_action_result** %6, align 8
  %80 = getelementptr inbounds %struct.mpt_raid_action_result, %struct.mpt_raid_action_result* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @MPI_RAID_ACTION_ASTATUS_SUCCESS, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %78, %73, %68
  %85 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %86 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %4, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.mpt_raid_action_result*, %struct.mpt_raid_action_result** %6, align 8
  %92 = getelementptr inbounds %struct.mpt_raid_action_result, %struct.mpt_raid_action_result* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 (%struct.mpt_softc*, %struct.mpt_raid_volume*, i8*, ...) @mpt_vol_prt(%struct.mpt_softc* %85, %struct.mpt_raid_volume* %86, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %90, i64 %93)
  br label %102

95:                                               ; preds = %78
  %96 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %97 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %95, %84
  %103 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %105 = call i32 @mpt_free_request(%struct.mpt_softc* %103, %struct.TYPE_9__* %104)
  br label %202

106:                                              ; preds = %31, %20
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %111 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %112, 128
  br i1 %113, label %122, label %114

114:                                              ; preds = %109, %106
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %201, label %117

117:                                              ; preds = %114
  %118 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %119 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp sge i32 %120, 128
  br i1 %121, label %122, label %201

122:                                              ; preds = %117, %109
  %123 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %124 = load i32, i32* @TRUE, align 4
  %125 = call %struct.TYPE_9__* @mpt_get_request(%struct.mpt_softc* %123, i32 %124)
  store %struct.TYPE_9__* %125, %struct.TYPE_9__** %5, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %127 = icmp eq %struct.TYPE_9__* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %130 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %4, align 8
  %131 = call i32 (%struct.mpt_softc*, %struct.mpt_raid_volume*, i8*, ...) @mpt_vol_prt(%struct.mpt_softc* %129, %struct.mpt_raid_volume* %130, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %202

132:                                              ; preds = %122
  %133 = load i32, i32* @MPI_RAIDVOL0_SETTING_PRIORITY_RESYNC, align 4
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = xor i32 %137, %133
  store i32 %138, i32* %136, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = call i32 @memcpy(i32* %10, %struct.TYPE_11__* %140, i32 4)
  %142 = load i32, i32* @MPI_RAIDVOL0_SETTING_PRIORITY_RESYNC, align 4
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = xor i32 %146, %142
  store i32 %147, i32* %145, align 8
  %148 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %149 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %4, align 8
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %151 = load i32, i32* @MPI_RAID_ACTION_CHANGE_VOLUME_SETTINGS, align 4
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* @FALSE, align 4
  %154 = load i32, i32* @TRUE, align 4
  %155 = call i32 @mpt_issue_raid_req(%struct.mpt_softc* %148, %struct.mpt_raid_volume* %149, i32* null, %struct.TYPE_9__* %150, i32 %151, i32 %152, i32 0, i32 0, i32 %153, i32 %154)
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* @ETIMEDOUT, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %132
  %160 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %161 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %4, align 8
  %162 = call i32 (%struct.mpt_softc*, %struct.mpt_raid_volume*, i8*, ...) @mpt_vol_prt(%struct.mpt_softc* %160, %struct.mpt_raid_volume* %161, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  br label %202

163:                                              ; preds = %132
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %165 = call %struct.mpt_raid_action_result* @REQ_TO_RAID_ACTION_RESULT(%struct.TYPE_9__* %164)
  store %struct.mpt_raid_action_result* %165, %struct.mpt_raid_action_result** %6, align 8
  %166 = load i32, i32* %9, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %179, label %168

168:                                              ; preds = %163
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %170 = call i64 @REQ_IOCSTATUS(%struct.TYPE_9__* %169)
  %171 = load i64, i64* @MPI_IOCSTATUS_SUCCESS, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %179, label %173

173:                                              ; preds = %168
  %174 = load %struct.mpt_raid_action_result*, %struct.mpt_raid_action_result** %6, align 8
  %175 = getelementptr inbounds %struct.mpt_raid_action_result, %struct.mpt_raid_action_result* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @MPI_RAID_ACTION_ASTATUS_SUCCESS, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %190

179:                                              ; preds = %173, %168, %163
  %180 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %181 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %4, align 8
  %182 = load i32, i32* %9, align 4
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.mpt_raid_action_result*, %struct.mpt_raid_action_result** %6, align 8
  %187 = getelementptr inbounds %struct.mpt_raid_action_result, %struct.mpt_raid_action_result* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = call i32 (%struct.mpt_softc*, %struct.mpt_raid_volume*, i8*, ...) @mpt_vol_prt(%struct.mpt_softc* %180, %struct.mpt_raid_volume* %181, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %182, i32 %185, i64 %188)
  br label %197

190:                                              ; preds = %173
  %191 = load i32, i32* @MPI_RAIDVOL0_SETTING_PRIORITY_RESYNC, align 4
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = xor i32 %195, %191
  store i32 %196, i32* %194, align 8
  br label %197

197:                                              ; preds = %190, %179
  %198 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %200 = call i32 @mpt_free_request(%struct.mpt_softc* %198, %struct.TYPE_9__* %199)
  br label %201

201:                                              ; preds = %197, %117, %114
  br label %202

202:                                              ; preds = %19, %46, %64, %128, %159, %201, %102
  ret void
}

declare dso_local %struct.TYPE_9__* @mpt_get_request(%struct.mpt_softc*, i32) #1

declare dso_local i32 @mpt_vol_prt(%struct.mpt_softc*, %struct.mpt_raid_volume*, i8*, ...) #1

declare dso_local i32 @mpt_issue_raid_req(%struct.mpt_softc*, %struct.mpt_raid_volume*, i32*, %struct.TYPE_9__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.mpt_raid_action_result* @REQ_TO_RAID_ACTION_RESULT(%struct.TYPE_9__*) #1

declare dso_local i64 @REQ_IOCSTATUS(%struct.TYPE_9__*) #1

declare dso_local i32 @mpt_free_request(%struct.mpt_softc*, %struct.TYPE_9__*) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
