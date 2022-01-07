; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_issue_cfg_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_issue_cfg_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i8*, i32, %struct.TYPE_13__, i32, i32, i8*, i32 }
%struct.TYPE_13__ = type { i32, i64, i32, i32 }
%struct.TYPE_15__ = type { i64, i32, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i8* }

@MPI_FUNCTION_CONFIG = common dso_local global i32 0, align 4
@MPI_CONFIG_PAGETYPE_MASK = common dso_local global i32 0, align 4
@MPI_CONFIG_PAGETYPE_EXTENDED = common dso_local global i32 0, align 4
@MPI_SGE_FLAGS_SIMPLE_ELEMENT = common dso_local global i32 0, align 4
@MPI_SGE_FLAGS_LAST_ELEMENT = common dso_local global i32 0, align 4
@MPI_SGE_FLAGS_END_OF_BUFFER = common dso_local global i32 0, align 4
@MPI_SGE_FLAGS_END_OF_LIST = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_WRITE_CURRENT = common dso_local global i64 0, align 8
@MPI_CONFIG_ACTION_PAGE_WRITE_NVRAM = common dso_local global i64 0, align 8
@MPI_SGE_FLAGS_HOST_TO_IOC = common dso_local global i32 0, align 4
@MPI_SGE_FLAGS_IOC_TO_HOST = common dso_local global i32 0, align 4
@MPT_REPLY_HANDLER_CONFIG = common dso_local global i32 0, align 4
@REQ_STATE_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt_issue_cfg_req(%struct.mpt_softc* %0, %struct.TYPE_14__* %1, %struct.TYPE_15__* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.mpt_softc*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  store %struct.mpt_softc* %0, %struct.mpt_softc** %8, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %15, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %21 = call i32 @memset(%struct.TYPE_17__* %20, i32 0, i32 72)
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i32, i32* @MPI_FUNCTION_CONFIG, align 4
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 3
  store i32 %32, i32* %35, align 4
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @htole32(i32 %44)
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 6
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MPI_CONFIG_PAGETYPE_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @MPI_CONFIG_PAGETYPE_EXTENDED, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %74

55:                                               ; preds = %7
  %56 = load i32, i32* @MPI_CONFIG_PAGETYPE_EXTENDED, align 4
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @htole16(i32 %65)
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  br label %87

74:                                               ; preds = %7
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  store i64 %83, i64* %86, align 8
  br label %87

87:                                               ; preds = %74, %55
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 2
  %90 = bitcast i32* %89 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %90, %struct.TYPE_16__** %16, align 8
  %91 = load i32, i32* %11, align 4
  %92 = call i8* @htole32(i32 %91)
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @MPI_pSGE_SET_LENGTH(%struct.TYPE_16__* %95, i32 %96)
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %99 = load i32, i32* @MPI_SGE_FLAGS_SIMPLE_ELEMENT, align 4
  %100 = load i32, i32* @MPI_SGE_FLAGS_LAST_ELEMENT, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @MPI_SGE_FLAGS_END_OF_BUFFER, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @MPI_SGE_FLAGS_END_OF_LIST, align 4
  %105 = or i32 %103, %104
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @MPI_CONFIG_ACTION_PAGE_WRITE_CURRENT, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %117, label %111

111:                                              ; preds = %87
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @MPI_CONFIG_ACTION_PAGE_WRITE_NVRAM, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %111, %87
  %118 = load i32, i32* @MPI_SGE_FLAGS_HOST_TO_IOC, align 4
  br label %121

119:                                              ; preds = %111
  %120 = load i32, i32* @MPI_SGE_FLAGS_IOC_TO_HOST, align 4
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i32 [ %118, %117 ], [ %120, %119 ]
  %123 = or i32 %105, %122
  %124 = call i32 @MPI_pSGE_SET_FLAGS(%struct.TYPE_16__* %98, i32 %123)
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i8* @htole32(i32 %127)
  %129 = ptrtoint i8* %128 to i32
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @MPT_REPLY_HANDLER_CONFIG, align 4
  %136 = or i32 %134, %135
  %137 = call i8* @htole32(i32 %136)
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  %140 = load %struct.mpt_softc*, %struct.mpt_softc** %8, align 8
  %141 = call i32 @mpt_check_doorbell(%struct.mpt_softc* %140)
  %142 = load %struct.mpt_softc*, %struct.mpt_softc** %8, align 8
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %144 = call i32 @mpt_send_cmd(%struct.mpt_softc* %142, %struct.TYPE_14__* %143)
  %145 = load %struct.mpt_softc*, %struct.mpt_softc** %8, align 8
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %147 = load i32, i32* @REQ_STATE_DONE, align 4
  %148 = load i32, i32* @REQ_STATE_DONE, align 4
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* %14, align 4
  %151 = call i32 @mpt_wait_req(%struct.mpt_softc* %145, %struct.TYPE_14__* %146, i32 %147, i32 %148, i32 %149, i32 %150)
  ret i32 %151
}

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @MPI_pSGE_SET_LENGTH(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @MPI_pSGE_SET_FLAGS(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @mpt_check_doorbell(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_send_cmd(%struct.mpt_softc*, %struct.TYPE_14__*) #1

declare dso_local i32 @mpt_wait_req(%struct.mpt_softc*, %struct.TYPE_14__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
