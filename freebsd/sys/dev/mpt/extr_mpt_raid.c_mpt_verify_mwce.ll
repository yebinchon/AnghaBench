; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_verify_mwce.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_verify_mwce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }
%struct.mpt_raid_volume = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_13__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.mpt_raid_action_result = type { i64 }

@MPI_RAIDVOL0_STATUS_FLAG_RESYNC_IN_PROGRESS = common dso_local global i32 0, align 4
@MPI_RAIDVOL0_SETTING_WRITE_CACHING_ENABLE = common dso_local global i32 0, align 4
@MPT_RVF_WCE_CHANGED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"mpt_verify_mwce: Get request failed!\0A\00", align 1
@MPI_RAID_ACTION_CHANGE_VOLUME_SETTINGS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"mpt_verify_mwce: Write Cache Enable Timed-out\0A\00", align 1
@MPI_IOCSTATUS_SUCCESS = common dso_local global i64 0, align 8
@MPI_RAID_ACTION_ASTATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"Write Cache Enable Failed: %d:%x:%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpt_softc*, %struct.mpt_raid_volume*)* @mpt_verify_mwce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpt_verify_mwce(%struct.mpt_softc* %0, %struct.mpt_raid_volume* %1) #0 {
  %3 = alloca %struct.mpt_softc*, align 8
  %4 = alloca %struct.mpt_raid_volume*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.mpt_raid_action_result*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %3, align 8
  store %struct.mpt_raid_volume* %1, %struct.mpt_raid_volume** %4, align 8
  %12 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %4, align 8
  %13 = getelementptr inbounds %struct.mpt_raid_volume, %struct.mpt_raid_volume* %12, i32 0, i32 1
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %7, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MPI_RAIDVOL0_STATUS_FLAG_RESYNC_IN_PROGRESS, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MPI_RAIDVOL0_SETTING_WRITE_CACHING_ENABLE, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %11, align 4
  %27 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %28 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %68 [
    i32 128, label %30
    i32 129, label %57
    i32 130, label %62
    i32 131, label %67
  ]

30:                                               ; preds = %2
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39, %33
  br label %147

43:                                               ; preds = %39, %36
  %44 = load i32, i32* @MPT_RVF_WCE_CHANGED, align 4
  %45 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %4, align 8
  %46 = getelementptr inbounds %struct.mpt_raid_volume, %struct.mpt_raid_volume* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = xor i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %4, align 8
  %50 = getelementptr inbounds %struct.mpt_raid_volume, %struct.mpt_raid_volume* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @MPT_RVF_WCE_CHANGED, align 4
  %53 = and i32 %51, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  br label %147

56:                                               ; preds = %43
  br label %68

57:                                               ; preds = %2
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %147

61:                                               ; preds = %57
  br label %68

62:                                               ; preds = %2
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  br label %147

66:                                               ; preds = %62
  br label %68

67:                                               ; preds = %2
  br label %147

68:                                               ; preds = %2, %66, %61, %56
  %69 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %70 = load i32, i32* @TRUE, align 4
  %71 = call %struct.TYPE_11__* @mpt_get_request(%struct.mpt_softc* %69, i32 %70)
  store %struct.TYPE_11__* %71, %struct.TYPE_11__** %5, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %73 = icmp eq %struct.TYPE_11__* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %76 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %4, align 8
  %77 = call i32 (%struct.mpt_softc*, %struct.mpt_raid_volume*, i8*, ...) @mpt_vol_prt(%struct.mpt_softc* %75, %struct.mpt_raid_volume* %76, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %147

78:                                               ; preds = %68
  %79 = load i32, i32* @MPI_RAIDVOL0_SETTING_WRITE_CACHING_ENABLE, align 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = xor i32 %83, %79
  store i32 %84, i32* %82, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = call i32 @memcpy(i32* %8, %struct.TYPE_13__* %86, i32 4)
  %88 = load i32, i32* @MPI_RAIDVOL0_SETTING_WRITE_CACHING_ENABLE, align 4
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = xor i32 %92, %88
  store i32 %93, i32* %91, align 4
  %94 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %95 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %4, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %97 = load i32, i32* @MPI_RAID_ACTION_CHANGE_VOLUME_SETTINGS, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @FALSE, align 4
  %100 = load i32, i32* @TRUE, align 4
  %101 = call i32 @mpt_issue_raid_req(%struct.mpt_softc* %94, %struct.mpt_raid_volume* %95, i32* null, %struct.TYPE_11__* %96, i32 %97, i32 %98, i32 0, i32 0, i32 %99, i32 %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @ETIMEDOUT, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %78
  %106 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %107 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %4, align 8
  %108 = call i32 (%struct.mpt_softc*, %struct.mpt_raid_volume*, i8*, ...) @mpt_vol_prt(%struct.mpt_softc* %106, %struct.mpt_raid_volume* %107, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %147

109:                                              ; preds = %78
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %111 = call %struct.mpt_raid_action_result* @REQ_TO_RAID_ACTION_RESULT(%struct.TYPE_11__* %110)
  store %struct.mpt_raid_action_result* %111, %struct.mpt_raid_action_result** %6, align 8
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %125, label %114

114:                                              ; preds = %109
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %116 = call i64 @REQ_IOCSTATUS(%struct.TYPE_11__* %115)
  %117 = load i64, i64* @MPI_IOCSTATUS_SUCCESS, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %125, label %119

119:                                              ; preds = %114
  %120 = load %struct.mpt_raid_action_result*, %struct.mpt_raid_action_result** %6, align 8
  %121 = getelementptr inbounds %struct.mpt_raid_action_result, %struct.mpt_raid_action_result* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @MPI_RAID_ACTION_ASTATUS_SUCCESS, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %136

125:                                              ; preds = %119, %114, %109
  %126 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %127 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %4, align 8
  %128 = load i32, i32* %9, align 4
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.mpt_raid_action_result*, %struct.mpt_raid_action_result** %6, align 8
  %133 = getelementptr inbounds %struct.mpt_raid_action_result, %struct.mpt_raid_action_result* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i32 (%struct.mpt_softc*, %struct.mpt_raid_volume*, i8*, ...) @mpt_vol_prt(%struct.mpt_softc* %126, %struct.mpt_raid_volume* %127, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %128, i32 %131, i64 %134)
  br label %143

136:                                              ; preds = %119
  %137 = load i32, i32* @MPI_RAIDVOL0_SETTING_WRITE_CACHING_ENABLE, align 4
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = xor i32 %141, %137
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %136, %125
  %144 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %146 = call i32 @mpt_free_request(%struct.mpt_softc* %144, %struct.TYPE_11__* %145)
  br label %147

147:                                              ; preds = %143, %105, %74, %67, %65, %60, %55, %42
  ret void
}

declare dso_local %struct.TYPE_11__* @mpt_get_request(%struct.mpt_softc*, i32) #1

declare dso_local i32 @mpt_vol_prt(%struct.mpt_softc*, %struct.mpt_raid_volume*, i8*, ...) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @mpt_issue_raid_req(%struct.mpt_softc*, %struct.mpt_raid_volume*, i32*, %struct.TYPE_11__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.mpt_raid_action_result* @REQ_TO_RAID_ACTION_RESULT(%struct.TYPE_11__*) #1

declare dso_local i64 @REQ_IOCSTATUS(%struct.TYPE_11__*) #1

declare dso_local i32 @mpt_free_request(%struct.mpt_softc*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
