; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_sas.c_mpssas_action_resetdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_sas.c_mpssas_action_resetdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpssas_softc = type { i64, %struct.mpssas_target*, %struct.mps_softc* }
%struct.mpssas_target = type { i32 }
%struct.mps_softc = type { i32 }
%union.ccb = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.mps_command = type { %struct.mpssas_target*, %union.ccb*, i32, i32*, i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Target %d out of bounds in XPT_RESET_DEV\0A\00", align 1
@MPS_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"command alloc failure in mpssas_action_resetdev\0A\00", align 1
@CAM_RESRC_UNAVAIL = common dso_local global i32 0, align 4
@MPI2_SCSITASKMGMT_TASKTYPE_TARGET_RESET = common dso_local global i32 0, align 4
@MPI2_SCSITASKMGMT_MSGFLAGS_LINK_RESET = common dso_local global i32 0, align 4
@mpssas_resetdev_complete = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpssas_softc*, %union.ccb*)* @mpssas_action_resetdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpssas_action_resetdev(%struct.mpssas_softc* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.mpssas_softc*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.mps_softc*, align 8
  %7 = alloca %struct.mps_command*, align 8
  %8 = alloca %struct.mpssas_target*, align 8
  store %struct.mpssas_softc* %0, %struct.mpssas_softc** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %9 = load %struct.mpssas_softc*, %struct.mpssas_softc** %3, align 8
  %10 = getelementptr inbounds %struct.mpssas_softc, %struct.mpssas_softc* %9, i32 0, i32 2
  %11 = load %struct.mps_softc*, %struct.mps_softc** %10, align 8
  %12 = call i32 @MPS_FUNCTRACE(%struct.mps_softc* %11)
  %13 = load %struct.mpssas_softc*, %struct.mpssas_softc** %3, align 8
  %14 = getelementptr inbounds %struct.mpssas_softc, %struct.mpssas_softc* %13, i32 0, i32 2
  %15 = load %struct.mps_softc*, %struct.mps_softc** %14, align 8
  %16 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %15, i32 0, i32 0
  %17 = load i32, i32* @MA_OWNED, align 4
  %18 = call i32 @mtx_assert(i32* %16, i32 %17)
  %19 = load %union.ccb*, %union.ccb** %4, align 8
  %20 = bitcast %union.ccb* %19 to %struct.TYPE_3__*
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.mpssas_softc*, %struct.mpssas_softc** %3, align 8
  %24 = getelementptr inbounds %struct.mpssas_softc, %struct.mpssas_softc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  %27 = zext i1 %26 to i32
  %28 = load %union.ccb*, %union.ccb** %4, align 8
  %29 = bitcast %union.ccb* %28 to %struct.TYPE_3__*
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @KASSERT(i32 %27, i8* %32)
  %34 = load %struct.mpssas_softc*, %struct.mpssas_softc** %3, align 8
  %35 = getelementptr inbounds %struct.mpssas_softc, %struct.mpssas_softc* %34, i32 0, i32 2
  %36 = load %struct.mps_softc*, %struct.mps_softc** %35, align 8
  store %struct.mps_softc* %36, %struct.mps_softc** %6, align 8
  %37 = load %struct.mps_softc*, %struct.mps_softc** %6, align 8
  %38 = call %struct.mps_command* @mpssas_alloc_tm(%struct.mps_softc* %37)
  store %struct.mps_command* %38, %struct.mps_command** %7, align 8
  %39 = load %struct.mps_command*, %struct.mps_command** %7, align 8
  %40 = icmp eq %struct.mps_command* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %2
  %42 = load %struct.mps_softc*, %struct.mps_softc** %6, align 8
  %43 = load i32, i32* @MPS_ERROR, align 4
  %44 = call i32 @mps_dprint(%struct.mps_softc* %42, i32 %43, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %union.ccb*, %union.ccb** %4, align 8
  %46 = load i32, i32* @CAM_RESRC_UNAVAIL, align 4
  %47 = call i32 @mpssas_set_ccbstatus(%union.ccb* %45, i32 %46)
  %48 = load %union.ccb*, %union.ccb** %4, align 8
  %49 = call i32 @xpt_done(%union.ccb* %48)
  br label %94

50:                                               ; preds = %2
  %51 = load %struct.mpssas_softc*, %struct.mpssas_softc** %3, align 8
  %52 = getelementptr inbounds %struct.mpssas_softc, %struct.mpssas_softc* %51, i32 0, i32 1
  %53 = load %struct.mpssas_target*, %struct.mpssas_target** %52, align 8
  %54 = load %union.ccb*, %union.ccb** %4, align 8
  %55 = bitcast %union.ccb* %54 to %struct.TYPE_3__*
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.mpssas_target, %struct.mpssas_target* %53, i64 %57
  store %struct.mpssas_target* %58, %struct.mpssas_target** %8, align 8
  %59 = load %struct.mps_command*, %struct.mps_command** %7, align 8
  %60 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %62, %struct.TYPE_4__** %5, align 8
  %63 = load %struct.mpssas_target*, %struct.mpssas_target** %8, align 8
  %64 = getelementptr inbounds %struct.mpssas_target, %struct.mpssas_target* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @htole16(i32 %65)
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @MPI2_SCSITASKMGMT_TASKTYPE_TARGET_RESET, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @MPI2_SCSITASKMGMT_MSGFLAGS_LINK_RESET, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.mps_command*, %struct.mps_command** %7, align 8
  %76 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %75, i32 0, i32 3
  store i32* null, i32** %76, align 8
  %77 = load i32, i32* @mpssas_resetdev_complete, align 4
  %78 = load %struct.mps_command*, %struct.mps_command** %7, align 8
  %79 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %union.ccb*, %union.ccb** %4, align 8
  %81 = load %struct.mps_command*, %struct.mps_command** %7, align 8
  %82 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %81, i32 0, i32 1
  store %union.ccb* %80, %union.ccb** %82, align 8
  %83 = load %struct.mpssas_target*, %struct.mpssas_target** %8, align 8
  %84 = load %struct.mps_command*, %struct.mps_command** %7, align 8
  %85 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %84, i32 0, i32 0
  store %struct.mpssas_target* %83, %struct.mpssas_target** %85, align 8
  %86 = load %struct.mps_softc*, %struct.mps_softc** %6, align 8
  %87 = load %struct.mps_command*, %struct.mps_command** %7, align 8
  %88 = load %struct.mpssas_target*, %struct.mpssas_target** %8, align 8
  %89 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %90 = call i32 @mpssas_prepare_for_tm(%struct.mps_softc* %86, %struct.mps_command* %87, %struct.mpssas_target* %88, i32 %89)
  %91 = load %struct.mps_softc*, %struct.mps_softc** %6, align 8
  %92 = load %struct.mps_command*, %struct.mps_command** %7, align 8
  %93 = call i32 @mps_map_command(%struct.mps_softc* %91, %struct.mps_command* %92)
  br label %94

94:                                               ; preds = %50, %41
  ret void
}

declare dso_local i32 @MPS_FUNCTRACE(%struct.mps_softc*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.mps_command* @mpssas_alloc_tm(%struct.mps_softc*) #1

declare dso_local i32 @mps_dprint(%struct.mps_softc*, i32, i8*) #1

declare dso_local i32 @mpssas_set_ccbstatus(%union.ccb*, i32) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @mpssas_prepare_for_tm(%struct.mps_softc*, %struct.mps_command*, %struct.mpssas_target*, i32) #1

declare dso_local i32 @mps_map_command(%struct.mps_softc*, %struct.mps_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
