; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_user.c_mpt_user_raid_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_user.c_mpt_user_raid_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }
%struct.mpt_raid_action = type { i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.mpt_page_memory = type { i32, i32, i32, i32* }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.mpt_user_raid_action_result = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i8* }

@TRUE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MPI_FUNCTION_RAID_ACTION = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@MPI_SGE_FLAGS_SIMPLE_ELEMENT = common dso_local global i32 0, align 4
@MPI_SGE_FLAGS_LAST_ELEMENT = common dso_local global i32 0, align 4
@MPI_SGE_FLAGS_END_OF_BUFFER = common dso_local global i32 0, align 4
@MPI_SGE_FLAGS_END_OF_LIST = common dso_local global i32 0, align 4
@MPI_SGE_FLAGS_HOST_TO_IOC = common dso_local global i32 0, align 4
@MPI_SGE_FLAGS_IOC_TO_HOST = common dso_local global i32 0, align 4
@user_handler_id = common dso_local global i32 0, align 4
@REQ_STATE_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"mpt_user_raid_action timed out\0A\00", align 1
@MPI_IOCSTATUS_MASK = common dso_local global i32 0, align 4
@MPI_IOCSTATUS_SUCCESS = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*, %struct.mpt_raid_action*, %struct.mpt_page_memory*)* @mpt_user_raid_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_user_raid_action(%struct.mpt_softc* %0, %struct.mpt_raid_action* %1, %struct.mpt_page_memory* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpt_softc*, align 8
  %6 = alloca %struct.mpt_raid_action*, align 8
  %7 = alloca %struct.mpt_page_memory*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.mpt_user_raid_action_result*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %5, align 8
  store %struct.mpt_raid_action* %1, %struct.mpt_raid_action** %6, align 8
  store %struct.mpt_page_memory* %2, %struct.mpt_page_memory** %7, align 8
  %13 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %14 = load i32, i32* @TRUE, align 4
  %15 = call %struct.TYPE_11__* @mpt_get_request(%struct.mpt_softc* %13, i32 %14)
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %8, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %17 = icmp eq %struct.TYPE_11__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  store i32 %19, i32* %4, align 4
  br label %206

20:                                               ; preds = %3
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %10, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %25 = call i32 @memset(%struct.TYPE_13__* %24, i32 0, i32 40)
  %26 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %6, align 8
  %27 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %26, i32 0, i32 10
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 8
  %31 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %6, align 8
  %32 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %31, i32 0, i32 9
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @MPI_FUNCTION_RAID_ACTION, align 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %6, align 8
  %40 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  %44 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %6, align 8
  %45 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %6, align 8
  %50 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = bitcast i32* %55 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %56, %struct.TYPE_12__** %11, align 8
  %57 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %7, align 8
  %58 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %109

61:                                               ; preds = %20
  %62 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %6, align 8
  %63 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %109

66:                                               ; preds = %61
  %67 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %7, align 8
  %68 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %7, align 8
  %71 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %74 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @bus_dmamap_sync(i32 %69, i32 %72, i32 %75)
  %77 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %7, align 8
  %78 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i8* @htole32(i32 %79)
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %84 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %6, align 8
  %85 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @le32toh(i64 %86)
  %88 = call i32 @MPI_pSGE_SET_LENGTH(%struct.TYPE_12__* %83, i32 %87)
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %90 = load i32, i32* @MPI_SGE_FLAGS_SIMPLE_ELEMENT, align 4
  %91 = load i32, i32* @MPI_SGE_FLAGS_LAST_ELEMENT, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @MPI_SGE_FLAGS_END_OF_BUFFER, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @MPI_SGE_FLAGS_END_OF_LIST, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %6, align 8
  %98 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %97, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %66
  %102 = load i32, i32* @MPI_SGE_FLAGS_HOST_TO_IOC, align 4
  br label %105

103:                                              ; preds = %66
  %104 = load i32, i32* @MPI_SGE_FLAGS_IOC_TO_HOST, align 4
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i32 [ %102, %101 ], [ %104, %103 ]
  %107 = or i32 %96, %106
  %108 = call i32 @MPI_pSGE_SET_FLAGS(%struct.TYPE_12__* %89, i32 %107)
  br label %109

109:                                              ; preds = %105, %61, %20
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i8* @htole32(i32 %112)
  %114 = ptrtoint i8* %113 to i32
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @user_handler_id, align 4
  %121 = or i32 %119, %120
  %122 = call i8* @htole32(i32 %121)
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  store i8* %122, i8** %124, align 8
  %125 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %126 = call i32 @mpt_check_doorbell(%struct.mpt_softc* %125)
  %127 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %129 = call i32 @mpt_send_cmd(%struct.mpt_softc* %127, %struct.TYPE_11__* %128)
  %130 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %132 = load i32, i32* @REQ_STATE_DONE, align 4
  %133 = load i32, i32* @REQ_STATE_DONE, align 4
  %134 = load i32, i32* @TRUE, align 4
  %135 = call i32 @mpt_wait_req(%struct.mpt_softc* %130, %struct.TYPE_11__* %131, i32 %132, i32 %133, i32 %134, i32 2000)
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %109
  %139 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %140 = call i32 @mpt_prt(%struct.mpt_softc* %139, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %141 = load i32, i32* %12, align 4
  store i32 %141, i32* %4, align 4
  br label %206

142:                                              ; preds = %109
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @htole16(i32 %145)
  %147 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %6, align 8
  %148 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 4
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @MPI_IOCSTATUS_MASK, align 4
  %153 = and i32 %151, %152
  %154 = load i32, i32* @MPI_IOCSTATUS_SUCCESS, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %142
  %157 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %159 = call i32 @mpt_free_request(%struct.mpt_softc* %157, %struct.TYPE_11__* %158)
  store i32 0, i32* %4, align 4
  br label %206

160:                                              ; preds = %142
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %162, align 8
  %164 = bitcast %struct.TYPE_13__* %163 to i32*
  %165 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %166 = call i32 @MPT_RQSL(%struct.mpt_softc* %165)
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %164, i64 %167
  %169 = bitcast i32* %168 to %struct.mpt_user_raid_action_result*
  store %struct.mpt_user_raid_action_result* %169, %struct.mpt_user_raid_action_result** %9, align 8
  %170 = load %struct.mpt_user_raid_action_result*, %struct.mpt_user_raid_action_result** %9, align 8
  %171 = getelementptr inbounds %struct.mpt_user_raid_action_result, %struct.mpt_user_raid_action_result* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %6, align 8
  %174 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %173, i32 0, i32 3
  store i32 %172, i32* %174, align 8
  %175 = load %struct.mpt_user_raid_action_result*, %struct.mpt_user_raid_action_result** %9, align 8
  %176 = getelementptr inbounds %struct.mpt_user_raid_action_result, %struct.mpt_user_raid_action_result* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %6, align 8
  %179 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 4
  %180 = load %struct.mpt_user_raid_action_result*, %struct.mpt_user_raid_action_result** %9, align 8
  %181 = getelementptr inbounds %struct.mpt_user_raid_action_result, %struct.mpt_user_raid_action_result* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.mpt_raid_action*, %struct.mpt_raid_action** %6, align 8
  %184 = getelementptr inbounds %struct.mpt_raid_action, %struct.mpt_raid_action* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @bcopy(i32 %182, i32 %185, i32 4)
  %187 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %7, align 8
  %188 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %187, i32 0, i32 3
  %189 = load i32*, i32** %188, align 8
  %190 = icmp ne i32* %189, null
  br i1 %190, label %191, label %202

191:                                              ; preds = %160
  %192 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %7, align 8
  %193 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %7, align 8
  %196 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %199 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %200 = or i32 %198, %199
  %201 = call i32 @bus_dmamap_sync(i32 %194, i32 %197, i32 %200)
  br label %202

202:                                              ; preds = %191, %160
  %203 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %205 = call i32 @mpt_free_request(%struct.mpt_softc* %203, %struct.TYPE_11__* %204)
  store i32 0, i32* %4, align 4
  br label %206

206:                                              ; preds = %202, %156, %138, %18
  %207 = load i32, i32* %4, align 4
  ret i32 %207
}

declare dso_local %struct.TYPE_11__* @mpt_get_request(%struct.mpt_softc*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @MPI_pSGE_SET_LENGTH(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @le32toh(i64) #1

declare dso_local i32 @MPI_pSGE_SET_FLAGS(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @mpt_check_doorbell(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_send_cmd(%struct.mpt_softc*, %struct.TYPE_11__*) #1

declare dso_local i32 @mpt_wait_req(%struct.mpt_softc*, %struct.TYPE_11__*, i32, i32, i32, i32) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @mpt_free_request(%struct.mpt_softc*, %struct.TYPE_11__*) #1

declare dso_local i32 @MPT_RQSL(%struct.mpt_softc*) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
