; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_raid_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_raid_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i64, i64, i64, i32*, i32, i32 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PUSER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@TRUE = common dso_local global i32 0, align 4
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unable to rescan RAID Bus!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mpt_raid_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpt_raid_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mpt_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.ccb*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.mpt_softc*
  store %struct.mpt_softc* %8, %struct.mpt_softc** %3, align 8
  store i32 1, i32* %4, align 4
  %9 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %10 = call i32 @MPT_LOCK(%struct.mpt_softc* %9)
  br label %11

11:                                               ; preds = %80, %33, %21, %1
  %12 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %13 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %81

16:                                               ; preds = %11
  %17 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %18 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %23 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %24 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %23, i32 0, i32 5
  %25 = load i32, i32* @PUSER, align 4
  %26 = call i32 @mpt_sleep(%struct.mpt_softc* %22, i32* %24, i32 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %11

27:                                               ; preds = %16
  %28 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %29 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %31 = call i64 @mpt_refresh_raid_data(%struct.mpt_softc* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %35 = call i32 @mpt_schedule_raid_refresh(%struct.mpt_softc* %34)
  br label %11

36:                                               ; preds = %27
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  %40 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %41 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @TRUE, align 4
  %44 = call i32 @xpt_release_simq(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %39, %36
  %46 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %47 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %80

50:                                               ; preds = %45
  %51 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %52 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %54 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %53)
  %55 = call %union.ccb* (...) @xpt_alloc_ccb()
  store %union.ccb* %55, %union.ccb** %5, align 8
  %56 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %57 = call i32 @MPT_LOCK(%struct.mpt_softc* %56)
  %58 = load %union.ccb*, %union.ccb** %5, align 8
  %59 = bitcast %union.ccb* %58 to %struct.TYPE_2__*
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %62 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @cam_sim_path(i32 %63)
  %65 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %66 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %67 = call i32 @xpt_create_path(i32* %60, i32* null, i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @CAM_REQ_CMP, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %50
  %72 = load %union.ccb*, %union.ccb** %5, align 8
  %73 = call i32 @xpt_free_ccb(%union.ccb* %72)
  %74 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %75 = call i32 @mpt_prt(%struct.mpt_softc* %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %79

76:                                               ; preds = %50
  %77 = load %union.ccb*, %union.ccb** %5, align 8
  %78 = call i32 @xpt_rescan(%union.ccb* %77)
  br label %79

79:                                               ; preds = %76, %71
  br label %80

80:                                               ; preds = %79, %45
  br label %11

81:                                               ; preds = %11
  %82 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %83 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %82, i32 0, i32 3
  store i32* null, i32** %83, align 8
  %84 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %85 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %84, i32 0, i32 3
  %86 = call i32 @wakeup(i32** %85)
  %87 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %88 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %87)
  %89 = call i32 @kproc_exit(i32 0)
  ret void
}

declare dso_local i32 @MPT_LOCK(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_sleep(%struct.mpt_softc*, i32*, i32, i8*, i32) #1

declare dso_local i64 @mpt_refresh_raid_data(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_schedule_raid_refresh(%struct.mpt_softc*) #1

declare dso_local i32 @xpt_release_simq(i32, i32) #1

declare dso_local i32 @MPT_UNLOCK(%struct.mpt_softc*) #1

declare dso_local %union.ccb* @xpt_alloc_ccb(...) #1

declare dso_local i32 @xpt_create_path(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*) #1

declare dso_local i32 @xpt_rescan(%union.ccb*) #1

declare dso_local i32 @wakeup(i32**) #1

declare dso_local i32 @kproc_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
