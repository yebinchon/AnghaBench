; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_fc_post_els.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_fc_post_els.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i8*, i32 }
%struct.TYPE_10__ = type { i32, i32*, i8**, i64 }
%struct.TYPE_11__ = type { i8*, i8* }

@MPT_REQUEST_AREA = common dso_local global i32 0, align 4
@MPI_FUNCTION_FC_LINK_SRVC_BUF_POST = common dso_local global i32 0, align 4
@fc_els_handler_id = common dso_local global i32 0, align 4
@MPI_SGE_FLAGS_HOST_TO_IOC = common dso_local global i32 0, align 4
@MPI_SGE_FLAGS_SIMPLE_ELEMENT = common dso_local global i32 0, align 4
@MPI_SGE_FLAGS_LAST_ELEMENT = common dso_local global i32 0, align 4
@MPI_SGE_FLAGS_END_OF_LIST = common dso_local global i32 0, align 4
@MPI_SGE_FLAGS_END_OF_BUFFER = common dso_local global i32 0, align 4
@MPI_SGE_FLAGS_SHIFT = common dso_local global i32 0, align 4
@MPT_PRT_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"add ELS index %d ioindex %d for %p:%u\0A\00", align 1
@REQ_STATE_LOCKED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"mpt_fc_post_els: request not locked\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpt_softc*, %struct.TYPE_9__*, i32)* @mpt_fc_post_els to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpt_fc_post_els(%struct.mpt_softc* %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca %struct.mpt_softc*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %10, align 4
  %15 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %16 = call i32 @MPT_RQSL(%struct.mpt_softc* %15)
  %17 = load i32, i32* %10, align 4
  %18 = add nsw i32 %17, %16
  store i32 %18, i32* %10, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %7, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %23 = load i32, i32* @MPT_REQUEST_AREA, align 4
  %24 = call i32 @memset(%struct.TYPE_12__* %22, i32 0, i32 %23)
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load i32, i32* @MPI_FUNCTION_FC_LINK_SRVC_BUF_POST, align 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @fc_els_handler_id, align 4
  %34 = or i32 %32, %33
  %35 = call i8* @htole32(i32 %34)
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = bitcast i32* %39 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %8, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  store i32 4, i32* %42, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i8* @htole32(i32 %45)
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  %49 = load i8**, i8*** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  store i8* %46, i8** %50, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = bitcast i32* %54 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %55, %struct.TYPE_11__** %9, align 8
  %56 = load i32, i32* @MPI_SGE_FLAGS_HOST_TO_IOC, align 4
  %57 = load i32, i32* @MPI_SGE_FLAGS_SIMPLE_ELEMENT, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @MPI_SGE_FLAGS_LAST_ELEMENT, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @MPI_SGE_FLAGS_END_OF_LIST, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @MPI_SGE_FLAGS_END_OF_BUFFER, align 4
  %64 = or i32 %62, %63
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* @MPI_SGE_FLAGS_SHIFT, align 4
  %66 = load i32, i32* %11, align 4
  %67 = shl i32 %66, %65
  store i32 %67, i32* %11, align 4
  %68 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %69 = call i32 @MPT_NRFM(%struct.mpt_softc* %68)
  %70 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %71 = call i32 @MPT_RQSL(%struct.mpt_softc* %70)
  %72 = sub nsw i32 %69, %71
  %73 = load i32, i32* %11, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i8* @htole32(i32 %75)
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i8* @htole32(i32 %79)
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  %83 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %84 = load i32, i32* @MPT_PRT_DEBUG, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @mpt_lprt(%struct.mpt_softc* %83, i32 %84, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %88, %struct.TYPE_9__* %89, i32 %92)
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @REQ_STATE_LOCKED, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i32 @KASSERT(i32 %100, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %102 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %104 = call i32 @mpt_send_cmd(%struct.mpt_softc* %102, %struct.TYPE_9__* %103)
  ret void
}

declare dso_local i32 @MPT_RQSL(%struct.mpt_softc*) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @MPT_NRFM(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_lprt(%struct.mpt_softc*, i32, i8*, i32, i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mpt_send_cmd(%struct.mpt_softc*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
