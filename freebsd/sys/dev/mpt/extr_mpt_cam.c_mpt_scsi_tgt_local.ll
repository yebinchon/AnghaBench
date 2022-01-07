; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_scsi_tgt_local.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_scsi_tgt_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32, i64, i64 }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i32, i32, i32*, i64, i32, i8*, i8*, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i64, i32, i32, i64, i32, %struct.TYPE_21__*, i32* }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"out of resources- dropping local response\0A\00", align 1
@MPI_FUNCTION_TARGET_ASSIST = common dso_local global i32 0, align 4
@MPI_SGE_FLAGS_SIMPLE_ELEMENT = common dso_local global i32 0, align 4
@TARGET_ASSIST_FLAGS_DATA_DIRECTION = common dso_local global i32 0, align 4
@MPI_SGE_FLAGS_HOST_TO_IOC = common dso_local global i32 0, align 4
@MPI_SGE_FLAGS_LAST_ELEMENT = common dso_local global i32 0, align 4
@MPI_SGE_FLAGS_END_OF_LIST = common dso_local global i32 0, align 4
@MPI_SGE_FLAGS_END_OF_BUFFER = common dso_local global i32 0, align 4
@TGT_STATE_MOVING_DATA = common dso_local global i32 0, align 4
@TGT_STATE_MOVING_DATA_AND_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpt_softc*, %struct.TYPE_21__*, i32, i32, %struct.TYPE_20__*, i64)* @mpt_scsi_tgt_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpt_scsi_tgt_local(%struct.mpt_softc* %0, %struct.TYPE_21__* %1, i32 %2, i32 %3, %struct.TYPE_20__* %4, i64 %5) #0 {
  %7 = alloca %struct.mpt_softc*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_20__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_21__*, align 8
  %20 = alloca %struct.TYPE_20__*, align 8
  %21 = alloca %struct.TYPE_20__*, align 8
  store %struct.mpt_softc* %0, %struct.mpt_softc** %7, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_20__* %4, %struct.TYPE_20__** %11, align 8
  store i64 %5, i64* %12, align 8
  %22 = load %struct.mpt_softc*, %struct.mpt_softc** %7, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %24 = call %struct.TYPE_22__* @MPT_TGT_STATE(%struct.mpt_softc* %22, %struct.TYPE_21__* %23)
  store %struct.TYPE_22__* %24, %struct.TYPE_22__** %13, align 8
  %25 = load i64, i64* %12, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %6
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27, %6
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.mpt_softc*, %struct.mpt_softc** %7, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %37 = call i32 @mpt_scsi_tgt_status(%struct.mpt_softc* %35, i32* null, %struct.TYPE_21__* %36, i32 0, i32* null, i32 0)
  br label %195

38:                                               ; preds = %27
  %39 = load %struct.mpt_softc*, %struct.mpt_softc** %7, align 8
  %40 = load i32, i32* @FALSE, align 4
  %41 = call %struct.TYPE_21__* @mpt_get_request(%struct.mpt_softc* %39, i32 %40)
  store %struct.TYPE_21__* %41, %struct.TYPE_21__** %19, align 8
  %42 = icmp eq %struct.TYPE_21__* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.mpt_softc*, %struct.mpt_softc** %7, align 8
  %45 = call i32 @mpt_prt(%struct.mpt_softc* %44, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %195

46:                                               ; preds = %38
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 1
  store i32 1, i32* %48, align 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %50, align 8
  %52 = load %struct.mpt_softc*, %struct.mpt_softc** %7, align 8
  %53 = call i32 @MPT_RQSL(%struct.mpt_softc* %52)
  %54 = call i32 @memset(%struct.TYPE_20__* %51, i32 0, i32 %53)
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %56, align 8
  store %struct.TYPE_20__* %57, %struct.TYPE_20__** %14, align 8
  %58 = load %struct.mpt_softc*, %struct.mpt_softc** %7, align 8
  %59 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %46
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %64, align 8
  store %struct.TYPE_20__* %65, %struct.TYPE_20__** %20, align 8
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 11
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 10
  store i32 %68, i32* %70, align 8
  br label %86

71:                                               ; preds = %46
  %72 = load %struct.mpt_softc*, %struct.mpt_softc** %7, align 8
  %73 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %78, align 8
  store %struct.TYPE_20__* %79, %struct.TYPE_20__** %21, align 8
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 9
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 10
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %76, %71
  br label %86

86:                                               ; preds = %85, %62
  %87 = load i32, i32* @MPI_FUNCTION_TARGET_ASSIST, align 4
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 8
  store i32 %87, i32* %89, align 8
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.mpt_softc*, %struct.mpt_softc** %7, align 8
  %94 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %92, %95
  %97 = call i8* @htole32(i32 %96)
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 7
  store i8* %97, i8** %99, align 8
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i8* @htole32(i32 %102)
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 6
  store i8* %103, i8** %105, align 8
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @CAM_EXTLUN_BYTE_SWIZZLE(i32 %109)
  %111 = call i32 @be64enc(i32 %108, i32 %110)
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 4
  store i64 0, i64* %113, align 8
  %114 = load i64, i64* %12, align 8
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %118, align 8
  store %struct.TYPE_20__* %119, %struct.TYPE_20__** %17, align 8
  %120 = load %struct.mpt_softc*, %struct.mpt_softc** %7, align 8
  %121 = call i32 @MPT_RQSL(%struct.mpt_softc* %120)
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i64 %123
  store %struct.TYPE_20__* %124, %struct.TYPE_20__** %17, align 8
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %18, align 4
  %128 = load %struct.mpt_softc*, %struct.mpt_softc** %7, align 8
  %129 = call i32 @MPT_RQSL(%struct.mpt_softc* %128)
  %130 = load i32, i32* %18, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %18, align 4
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %134 = load i64, i64* %12, align 8
  %135 = load %struct.mpt_softc*, %struct.mpt_softc** %7, align 8
  %136 = call i32 @MPT_RQSL(%struct.mpt_softc* %135)
  %137 = call i32 @min(i64 %134, i32 %136)
  %138 = call i32 @memcpy(%struct.TYPE_20__* %132, %struct.TYPE_20__* %133, i32 %137)
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = bitcast i32* %142 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %143, %struct.TYPE_20__** %15, align 8
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %145 = call i32 @memset(%struct.TYPE_20__* %144, i32 0, i32 72)
  %146 = load i32, i32* @MPI_SGE_FLAGS_SIMPLE_ELEMENT, align 4
  store i32 %146, i32* %16, align 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %86
  %150 = load i32, i32* @TARGET_ASSIST_FLAGS_DATA_DIRECTION, align 4
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  %155 = load i32, i32* @MPI_SGE_FLAGS_HOST_TO_IOC, align 4
  %156 = load i32, i32* %16, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %16, align 4
  br label %158

158:                                              ; preds = %149, %86
  %159 = load i32, i32* %18, align 4
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 8
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %163 = load i64, i64* %12, align 8
  %164 = call i32 @MPI_pSGE_SET_LENGTH(%struct.TYPE_20__* %162, i64 %163)
  %165 = load i32, i32* @MPI_SGE_FLAGS_LAST_ELEMENT, align 4
  %166 = load i32, i32* %16, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %16, align 4
  %168 = load i32, i32* @MPI_SGE_FLAGS_END_OF_LIST, align 4
  %169 = load i32, i32* @MPI_SGE_FLAGS_END_OF_BUFFER, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* %16, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %16, align 4
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %174 = load i32, i32* %16, align 4
  %175 = call i32 @MPI_pSGE_SET_FLAGS(%struct.TYPE_20__* %173, i32 %174)
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 6
  store i32* null, i32** %177, align 8
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 5
  store %struct.TYPE_21__* %178, %struct.TYPE_21__** %180, align 8
  %181 = load i64, i64* %12, align 8
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = sub i64 %184, %181
  store i64 %185, i64* %183, align 8
  %186 = load i64, i64* %12, align 8
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 3
  store i64 %186, i64* %188, align 8
  %189 = load i32, i32* @TGT_STATE_MOVING_DATA, align 4
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 4
  store i32 %189, i32* %191, align 8
  %192 = load %struct.mpt_softc*, %struct.mpt_softc** %7, align 8
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %194 = call i32 @mpt_send_cmd(%struct.mpt_softc* %192, %struct.TYPE_21__* %193)
  br label %195

195:                                              ; preds = %158, %43, %32
  ret void
}

declare dso_local %struct.TYPE_22__* @MPT_TGT_STATE(%struct.mpt_softc*, %struct.TYPE_21__*) #1

declare dso_local i32 @mpt_scsi_tgt_status(%struct.mpt_softc*, i32*, %struct.TYPE_21__*, i32, i32*, i32) #1

declare dso_local %struct.TYPE_21__* @mpt_get_request(%struct.mpt_softc*, i32) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @MPT_RQSL(%struct.mpt_softc*) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @be64enc(i32, i32) #1

declare dso_local i32 @CAM_EXTLUN_BYTE_SWIZZLE(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_20__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @MPI_pSGE_SET_LENGTH(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @MPI_pSGE_SET_FLAGS(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @mpt_send_cmd(%struct.mpt_softc*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
