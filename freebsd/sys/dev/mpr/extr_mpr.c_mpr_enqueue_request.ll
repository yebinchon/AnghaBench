; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr.c_mpr_enqueue_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr.c_mpr_enqueue_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { i32, i64, i64, i64, i32 }
%struct.mpr_command = type { i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@MPR_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"SMID %u cm %p ccb %p\0A\00", align 1
@MPR_FLAGS_ATTACH_DONE = common dso_local global i32 0, align 4
@MPR_FLAGS_SHUTDOWN = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@MPR_CM_STATE_BUSY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"command not busy\0A\00", align 1
@MPR_CM_STATE_INQUEUE = common dso_local global i64 0, align 8
@MPI26_ATOMIC_REQUEST_DESCRIPTOR_POST_OFFSET = common dso_local global i32 0, align 4
@MPI2_REQUEST_DESCRIPTOR_POST_LOW_OFFSET = common dso_local global i32 0, align 4
@MPI2_REQUEST_DESCRIPTOR_POST_HIGH_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpr_softc*, %struct.mpr_command*)* @mpr_enqueue_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpr_enqueue_request(%struct.mpr_softc* %0, %struct.mpr_command* %1) #0 {
  %3 = alloca %struct.mpr_softc*, align 8
  %4 = alloca %struct.mpr_command*, align 8
  %5 = alloca %struct.TYPE_10__, align 4
  store %struct.mpr_softc* %0, %struct.mpr_softc** %3, align 8
  store %struct.mpr_command* %1, %struct.mpr_command** %4, align 8
  %6 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %7 = call i32 @MPR_FUNCTRACE(%struct.mpr_softc* %6)
  %8 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %9 = load i32, i32* @MPR_TRACE, align 4
  %10 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %11 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %16 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %17 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mpr_dprint(%struct.mpr_softc* %8, i32 %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %14, %struct.mpr_command* %15, i32 %18)
  %20 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %21 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MPR_FLAGS_ATTACH_DONE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %2
  %27 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %28 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MPR_FLAGS_SHUTDOWN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %26
  %34 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %35 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %34, i32 0, i32 4
  %36 = load i32, i32* @MA_OWNED, align 4
  %37 = call i32 @mtx_assert(i32* %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %26, %2
  %39 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %40 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %40, align 8
  %43 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %44 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %49 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %49, align 8
  br label %52

52:                                               ; preds = %47, %38
  %53 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %54 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MPR_CM_STATE_BUSY, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @KASSERT(i32 %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i64, i64* @MPR_CM_STATE_INQUEUE, align 8
  %61 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %62 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %64 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %52
  %68 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %69 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %76 = load i32, i32* @MPI26_ATOMIC_REQUEST_DESCRIPTOR_POST_OFFSET, align 4
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @mpr_regwrite(%struct.mpr_softc* %75, i32 %76, i32 %79)
  br label %112

81:                                               ; preds = %52
  %82 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %83 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %90 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @htole64(i32 %97)
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  store i32 %98, i32* %99, align 4
  %100 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %101 = load i32, i32* @MPI2_REQUEST_DESCRIPTOR_POST_LOW_OFFSET, align 4
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @mpr_regwrite(%struct.mpr_softc* %100, i32 %101, i32 %104)
  %106 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %107 = load i32, i32* @MPI2_REQUEST_DESCRIPTOR_POST_HIGH_OFFSET, align 4
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @mpr_regwrite(%struct.mpr_softc* %106, i32 %107, i32 %110)
  br label %112

112:                                              ; preds = %81, %67
  ret void
}

declare dso_local i32 @MPR_FUNCTRACE(%struct.mpr_softc*) #1

declare dso_local i32 @mpr_dprint(%struct.mpr_softc*, i32, i8*, i32, %struct.mpr_command*, i32) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mpr_regwrite(%struct.mpr_softc*, i32, i32) #1

declare dso_local i32 @htole64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
