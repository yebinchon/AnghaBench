; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_sas.c_mprsas_prepare_for_tm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_sas.c_mprsas_prepare_for_tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mpr_command = type { %struct.mprsas_target*, %union.ccb* }
%union.ccb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mprsas_target = type { i32, i32 }

@xpt_periph = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@MPRSAS_TARGET_INRESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mprsas_prepare_for_tm(%struct.mpr_softc* %0, %struct.mpr_command* %1, %struct.mprsas_target* %2, i32 %3) #0 {
  %5 = alloca %struct.mpr_softc*, align 8
  %6 = alloca %struct.mpr_command*, align 8
  %7 = alloca %struct.mprsas_target*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.ccb*, align 8
  %10 = alloca i32, align 4
  store %struct.mpr_softc* %0, %struct.mpr_softc** %5, align 8
  store %struct.mpr_command* %1, %struct.mpr_command** %6, align 8
  store %struct.mprsas_target* %2, %struct.mprsas_target** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = call %union.ccb* (...) @xpt_alloc_ccb_nowait()
  store %union.ccb* %11, %union.ccb** %9, align 8
  %12 = load %union.ccb*, %union.ccb** %9, align 8
  %13 = icmp ne %union.ccb* %12, null
  br i1 %13, label %14, label %49

14:                                               ; preds = %4
  %15 = load %struct.mpr_softc*, %struct.mpr_softc** %5, align 8
  %16 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cam_sim_path(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %union.ccb*, %union.ccb** %9, align 8
  %22 = bitcast %union.ccb* %21 to %struct.TYPE_4__*
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* @xpt_periph, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.mprsas_target*, %struct.mprsas_target** %7, align 8
  %27 = getelementptr inbounds %struct.mprsas_target, %struct.mprsas_target* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @xpt_create_path(i32* %23, i32 %24, i32 %25, i32 %28, i32 %29)
  %31 = load i64, i64* @CAM_REQ_CMP, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %14
  %34 = load %union.ccb*, %union.ccb** %9, align 8
  %35 = call i32 @xpt_free_ccb(%union.ccb* %34)
  br label %48

36:                                               ; preds = %14
  %37 = load %union.ccb*, %union.ccb** %9, align 8
  %38 = load %struct.mpr_command*, %struct.mpr_command** %6, align 8
  %39 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %38, i32 0, i32 1
  store %union.ccb* %37, %union.ccb** %39, align 8
  %40 = load %struct.mprsas_target*, %struct.mprsas_target** %7, align 8
  %41 = load %struct.mpr_command*, %struct.mpr_command** %6, align 8
  %42 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %41, i32 0, i32 0
  store %struct.mprsas_target* %40, %struct.mprsas_target** %42, align 8
  %43 = load i32, i32* @MPRSAS_TARGET_INRESET, align 4
  %44 = load %struct.mprsas_target*, %struct.mprsas_target** %7, align 8
  %45 = getelementptr inbounds %struct.mprsas_target, %struct.mprsas_target* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %36, %33
  br label %49

49:                                               ; preds = %48, %4
  ret void
}

declare dso_local %union.ccb* @xpt_alloc_ccb_nowait(...) #1

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local i64 @xpt_create_path(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
