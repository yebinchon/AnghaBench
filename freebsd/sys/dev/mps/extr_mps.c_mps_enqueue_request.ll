; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps.c_mps_enqueue_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps.c_mps_enqueue_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_softc = type { i32, i64, i64, i32 }
%struct.mps_command = type { i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@MPS_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"SMID %u cm %p ccb %p\0A\00", align 1
@MPS_FLAGS_ATTACH_DONE = common dso_local global i32 0, align 4
@MPS_FLAGS_SHUTDOWN = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@MPS_CM_STATE_BUSY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"command not busy\0A\00", align 1
@MPS_CM_STATE_INQUEUE = common dso_local global i64 0, align 8
@MPI2_REQUEST_DESCRIPTOR_POST_LOW_OFFSET = common dso_local global i32 0, align 4
@MPI2_REQUEST_DESCRIPTOR_POST_HIGH_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mps_softc*, %struct.mps_command*)* @mps_enqueue_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mps_enqueue_request(%struct.mps_softc* %0, %struct.mps_command* %1) #0 {
  %3 = alloca %struct.mps_softc*, align 8
  %4 = alloca %struct.mps_command*, align 8
  %5 = alloca %struct.TYPE_10__, align 4
  store %struct.mps_softc* %0, %struct.mps_softc** %3, align 8
  store %struct.mps_command* %1, %struct.mps_command** %4, align 8
  %6 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %7 = call i32 @MPS_FUNCTRACE(%struct.mps_softc* %6)
  %8 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %9 = load i32, i32* @MPS_TRACE, align 4
  %10 = load %struct.mps_command*, %struct.mps_command** %4, align 8
  %11 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.mps_command*, %struct.mps_command** %4, align 8
  %16 = load %struct.mps_command*, %struct.mps_command** %4, align 8
  %17 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mps_dprint(%struct.mps_softc* %8, i32 %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %14, %struct.mps_command* %15, i32 %18)
  %20 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %21 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MPS_FLAGS_ATTACH_DONE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %2
  %27 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %28 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MPS_FLAGS_SHUTDOWN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %26
  %34 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %35 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %34, i32 0, i32 3
  %36 = load i32, i32* @MA_OWNED, align 4
  %37 = call i32 @mtx_assert(i32* %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %26, %2
  %39 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %40 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %40, align 8
  %43 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %44 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %49 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %49, align 8
  br label %52

52:                                               ; preds = %47, %38
  %53 = load %struct.mps_command*, %struct.mps_command** %4, align 8
  %54 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.mps_command*, %struct.mps_command** %4, align 8
  %61 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @htole64(i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  store i32 %69, i32* %70, align 4
  %71 = load %struct.mps_command*, %struct.mps_command** %4, align 8
  %72 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @MPS_CM_STATE_BUSY, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @KASSERT(i32 %76, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i64, i64* @MPS_CM_STATE_INQUEUE, align 8
  %79 = load %struct.mps_command*, %struct.mps_command** %4, align 8
  %80 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %82 = load i32, i32* @MPI2_REQUEST_DESCRIPTOR_POST_LOW_OFFSET, align 4
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @mps_regwrite(%struct.mps_softc* %81, i32 %82, i32 %85)
  %87 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %88 = load i32, i32* @MPI2_REQUEST_DESCRIPTOR_POST_HIGH_OFFSET, align 4
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @mps_regwrite(%struct.mps_softc* %87, i32 %88, i32 %91)
  ret void
}

declare dso_local i32 @MPS_FUNCTRACE(%struct.mps_softc*) #1

declare dso_local i32 @mps_dprint(%struct.mps_softc*, i32, i8*, i32, %struct.mps_command*, i32) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @htole64(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mps_regwrite(%struct.mps_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
