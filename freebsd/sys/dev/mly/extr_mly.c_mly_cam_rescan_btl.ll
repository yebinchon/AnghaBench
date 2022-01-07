; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_cam_rescan_btl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_cam_rescan_btl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mly_softc = type { i32* }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"rescan failed (can't allocate CCB)\0A\00", align 1
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"rescan failed (can't create path)\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"rescan target %d:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mly_softc*, i32, i32)* @mly_cam_rescan_btl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mly_cam_rescan_btl(%struct.mly_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mly_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.ccb*, align 8
  store %struct.mly_softc* %0, %struct.mly_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call i32 @debug_called(i32 1)
  %9 = call %union.ccb* (...) @xpt_alloc_ccb()
  store %union.ccb* %9, %union.ccb** %7, align 8
  %10 = icmp eq %union.ccb* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %13 = call i32 @mly_printf(%struct.mly_softc* %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %41

14:                                               ; preds = %3
  %15 = load %union.ccb*, %union.ccb** %7, align 8
  %16 = bitcast %union.ccb* %15 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %19 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @cam_sim_path(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @xpt_create_path(i32* %17, i32* null, i32 %25, i32 %26, i32 0)
  %28 = load i64, i64* @CAM_REQ_CMP, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %14
  %31 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %32 = call i32 @mly_printf(%struct.mly_softc* %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %union.ccb*, %union.ccb** %7, align 8
  %34 = call i32 @xpt_free_ccb(%union.ccb* %33)
  br label %41

35:                                               ; preds = %14
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @debug(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load %union.ccb*, %union.ccb** %7, align 8
  %40 = call i32 @xpt_rescan(%union.ccb* %39)
  br label %41

41:                                               ; preds = %35, %30, %11
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local %union.ccb* @xpt_alloc_ccb(...) #1

declare dso_local i32 @mly_printf(%struct.mly_softc*, i8*) #1

declare dso_local i64 @xpt_create_path(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i32 @debug(i32, i8*, i32, i32) #1

declare dso_local i32 @xpt_rescan(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
