; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_sas_lsi.c_mprsas_stop_unit_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_sas_lsi.c_mprsas_stop_unit_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.mprsas_softc = type { i32 }

@MPR_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Completing stop unit for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*, %union.ccb*)* @mprsas_stop_unit_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mprsas_stop_unit_done(%struct.cam_periph* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.mprsas_softc*, align 8
  %6 = alloca [64 x i8], align 16
  store %struct.cam_periph* %0, %struct.cam_periph** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %7 = load %union.ccb*, %union.ccb** %4, align 8
  %8 = icmp eq %union.ccb* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %35

10:                                               ; preds = %2
  %11 = load %union.ccb*, %union.ccb** %4, align 8
  %12 = bitcast %union.ccb* %11 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.mprsas_softc*
  store %struct.mprsas_softc* %15, %struct.mprsas_softc** %5, align 8
  %16 = load %union.ccb*, %union.ccb** %4, align 8
  %17 = bitcast %union.ccb* %16 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %21 = call i32 @xpt_path_string(i32 %19, i8* %20, i32 64)
  %22 = load %struct.mprsas_softc*, %struct.mprsas_softc** %5, align 8
  %23 = getelementptr inbounds %struct.mprsas_softc, %struct.mprsas_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MPR_INFO, align 4
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %27 = call i32 @mpr_dprint(i32 %24, i32 %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load %union.ccb*, %union.ccb** %4, align 8
  %29 = bitcast %union.ccb* %28 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @xpt_free_path(i32 %31)
  %33 = load %union.ccb*, %union.ccb** %4, align 8
  %34 = call i32 @xpt_free_ccb(%union.ccb* %33)
  br label %35

35:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @xpt_path_string(i32, i8*, i32) #1

declare dso_local i32 @mpr_dprint(i32, i32, i8*, i8*) #1

declare dso_local i32 @xpt_free_path(i32) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
