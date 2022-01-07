; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_issue_raid_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_issue_raid_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }
%struct.mpt_raid_volume = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.mpt_raid_disk = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i8*, i32, i32, i32, i32, i8*, i32 }
%struct.TYPE_15__ = type { i32, i8* }

@MPI_FUNCTION_RAID_ACTION = common dso_local global i32 0, align 4
@MPI_SGE_FLAGS_SIMPLE_ELEMENT = common dso_local global i32 0, align 4
@MPI_SGE_FLAGS_LAST_ELEMENT = common dso_local global i32 0, align 4
@MPI_SGE_FLAGS_END_OF_BUFFER = common dso_local global i32 0, align 4
@MPI_SGE_FLAGS_END_OF_LIST = common dso_local global i32 0, align 4
@MPI_SGE_FLAGS_HOST_TO_IOC = common dso_local global i32 0, align 4
@MPI_SGE_FLAGS_IOC_TO_HOST = common dso_local global i32 0, align 4
@raid_handler_id = common dso_local global i32 0, align 4
@REQ_STATE_DONE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*, %struct.mpt_raid_volume*, %struct.mpt_raid_disk*, %struct.TYPE_14__*, i32, i32, i32, i32, i32, i32)* @mpt_issue_raid_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_issue_raid_req(%struct.mpt_softc* %0, %struct.mpt_raid_volume* %1, %struct.mpt_raid_disk* %2, %struct.TYPE_14__* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.mpt_softc*, align 8
  %13 = alloca %struct.mpt_raid_volume*, align 8
  %14 = alloca %struct.mpt_raid_disk*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_16__*, align 8
  %23 = alloca %struct.TYPE_15__*, align 8
  store %struct.mpt_softc* %0, %struct.mpt_softc** %12, align 8
  store %struct.mpt_raid_volume* %1, %struct.mpt_raid_volume** %13, align 8
  store %struct.mpt_raid_disk* %2, %struct.mpt_raid_disk** %14, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  store %struct.TYPE_16__* %26, %struct.TYPE_16__** %22, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %28 = call i32 @memset(%struct.TYPE_16__* %27, i32 0, i32 48)
  %29 = load i32, i32* %16, align 4
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %17, align 4
  %33 = call i8* @htole32(i32 %32)
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 6
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* @MPI_FUNCTION_RAID_ACTION, align 4
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 4
  %39 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %13, align 8
  %40 = getelementptr inbounds %struct.mpt_raid_volume, %struct.mpt_raid_volume* %39, i32 0, i32 0
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %13, align 8
  %47 = getelementptr inbounds %struct.mpt_raid_volume, %struct.mpt_raid_volume* %46, i32 0, i32 0
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %14, align 8
  %54 = icmp ne %struct.mpt_raid_disk* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %10
  %56 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %14, align 8
  %57 = getelementptr inbounds %struct.mpt_raid_disk, %struct.mpt_raid_disk* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  br label %65

62:                                               ; preds = %10
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  store i32 255, i32* %64, align 8
  br label %65

65:                                               ; preds = %62, %55
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 2
  %68 = bitcast i32* %67 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %68, %struct.TYPE_15__** %23, align 8
  %69 = load i32, i32* %18, align 4
  %70 = call i8* @htole32(i32 %69)
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %74 = load i32, i32* %19, align 4
  %75 = call i32 @MPI_pSGE_SET_LENGTH(%struct.TYPE_15__* %73, i32 %74)
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %77 = load i32, i32* @MPI_SGE_FLAGS_SIMPLE_ELEMENT, align 4
  %78 = load i32, i32* @MPI_SGE_FLAGS_LAST_ELEMENT, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @MPI_SGE_FLAGS_END_OF_BUFFER, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @MPI_SGE_FLAGS_END_OF_LIST, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* %20, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %65
  %87 = load i32, i32* @MPI_SGE_FLAGS_HOST_TO_IOC, align 4
  br label %90

88:                                               ; preds = %65
  %89 = load i32, i32* @MPI_SGE_FLAGS_IOC_TO_HOST, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  %92 = or i32 %83, %91
  %93 = call i32 @MPI_pSGE_SET_FLAGS(%struct.TYPE_15__* %76, i32 %92)
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i8* @htole32(i32 %96)
  %98 = ptrtoint i8* %97 to i32
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @raid_handler_id, align 4
  %105 = or i32 %103, %104
  %106 = call i8* @htole32(i32 %105)
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  %109 = load %struct.mpt_softc*, %struct.mpt_softc** %12, align 8
  %110 = call i32 @mpt_check_doorbell(%struct.mpt_softc* %109)
  %111 = load %struct.mpt_softc*, %struct.mpt_softc** %12, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %113 = call i32 @mpt_send_cmd(%struct.mpt_softc* %111, %struct.TYPE_14__* %112)
  %114 = load i32, i32* %21, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %90
  %117 = load %struct.mpt_softc*, %struct.mpt_softc** %12, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %119 = load i32, i32* @REQ_STATE_DONE, align 4
  %120 = load i32, i32* @REQ_STATE_DONE, align 4
  %121 = load i32, i32* @FALSE, align 4
  %122 = call i32 @mpt_wait_req(%struct.mpt_softc* %117, %struct.TYPE_14__* %118, i32 %119, i32 %120, i32 %121, i32 2000)
  store i32 %122, i32* %11, align 4
  br label %124

123:                                              ; preds = %90
  store i32 0, i32* %11, align 4
  br label %124

124:                                              ; preds = %123, %116
  %125 = load i32, i32* %11, align 4
  ret i32 %125
}

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @MPI_pSGE_SET_LENGTH(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @MPI_pSGE_SET_FLAGS(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @mpt_check_doorbell(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_send_cmd(%struct.mpt_softc*, %struct.TYPE_14__*) #1

declare dso_local i32 @mpt_wait_req(%struct.mpt_softc*, %struct.TYPE_14__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
