; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_process_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_process_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_softc = type { i32, i32 }
%struct.pvscsi_ring_msg_desc = type { i32 }
%struct.pvscsi_ring_msg_dev_status_changed = type { i32, i32*, i32, i32 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"MSG: device %s at scsi%u:%u:%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"addition\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"removal\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Error allocating CCB for dev change.\0A\00", align 1
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Error creating path for dev change.\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Unknown msg type 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvscsi_softc*, %struct.pvscsi_ring_msg_desc*)* @pvscsi_process_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvscsi_process_msg(%struct.pvscsi_softc* %0, %struct.pvscsi_ring_msg_desc* %1) #0 {
  %3 = alloca %struct.pvscsi_softc*, align 8
  %4 = alloca %struct.pvscsi_ring_msg_desc*, align 8
  %5 = alloca %struct.pvscsi_ring_msg_dev_status_changed*, align 8
  %6 = alloca %union.ccb*, align 8
  store %struct.pvscsi_softc* %0, %struct.pvscsi_softc** %3, align 8
  store %struct.pvscsi_ring_msg_desc* %1, %struct.pvscsi_ring_msg_desc** %4, align 8
  %7 = load %struct.pvscsi_ring_msg_desc*, %struct.pvscsi_ring_msg_desc** %4, align 8
  %8 = getelementptr inbounds %struct.pvscsi_ring_msg_desc, %struct.pvscsi_ring_msg_desc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %71 [
    i32 129, label %10
    i32 128, label %10
  ]

10:                                               ; preds = %2, %2
  %11 = load %struct.pvscsi_ring_msg_desc*, %struct.pvscsi_ring_msg_desc** %4, align 8
  %12 = bitcast %struct.pvscsi_ring_msg_desc* %11 to %struct.pvscsi_ring_msg_dev_status_changed*
  store %struct.pvscsi_ring_msg_dev_status_changed* %12, %struct.pvscsi_ring_msg_dev_status_changed** %5, align 8
  %13 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %14 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.pvscsi_ring_msg_dev_status_changed*, %struct.pvscsi_ring_msg_dev_status_changed** %5, align 8
  %17 = getelementptr inbounds %struct.pvscsi_ring_msg_dev_status_changed, %struct.pvscsi_ring_msg_dev_status_changed* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 129
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %22 = load %struct.pvscsi_ring_msg_dev_status_changed*, %struct.pvscsi_ring_msg_dev_status_changed** %5, align 8
  %23 = getelementptr inbounds %struct.pvscsi_ring_msg_dev_status_changed, %struct.pvscsi_ring_msg_dev_status_changed* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.pvscsi_ring_msg_dev_status_changed*, %struct.pvscsi_ring_msg_dev_status_changed** %5, align 8
  %26 = getelementptr inbounds %struct.pvscsi_ring_msg_dev_status_changed, %struct.pvscsi_ring_msg_dev_status_changed* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.pvscsi_ring_msg_dev_status_changed*, %struct.pvscsi_ring_msg_dev_status_changed** %5, align 8
  %29 = getelementptr inbounds %struct.pvscsi_ring_msg_dev_status_changed, %struct.pvscsi_ring_msg_dev_status_changed* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i8*, ...) @device_printf(i32 %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %21, i32 %24, i32 %27, i32 %32)
  %34 = call %union.ccb* (...) @xpt_alloc_ccb_nowait()
  store %union.ccb* %34, %union.ccb** %6, align 8
  %35 = load %union.ccb*, %union.ccb** %6, align 8
  %36 = icmp eq %union.ccb* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %10
  %38 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %39 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32, i8*, ...) @device_printf(i32 %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %79

42:                                               ; preds = %10
  %43 = load %union.ccb*, %union.ccb** %6, align 8
  %44 = bitcast %union.ccb* %43 to %struct.TYPE_2__*
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %47 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cam_sim_path(i32 %48)
  %50 = load %struct.pvscsi_ring_msg_dev_status_changed*, %struct.pvscsi_ring_msg_dev_status_changed** %5, align 8
  %51 = getelementptr inbounds %struct.pvscsi_ring_msg_dev_status_changed, %struct.pvscsi_ring_msg_dev_status_changed* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.pvscsi_ring_msg_dev_status_changed*, %struct.pvscsi_ring_msg_dev_status_changed** %5, align 8
  %54 = getelementptr inbounds %struct.pvscsi_ring_msg_dev_status_changed, %struct.pvscsi_ring_msg_dev_status_changed* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @xpt_create_path(i32* %45, i32* null, i32 %49, i32 %52, i32 %57)
  %59 = load i32, i32* @CAM_REQ_CMP, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %42
  %62 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %63 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32, i8*, ...) @device_printf(i32 %64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %66 = load %union.ccb*, %union.ccb** %6, align 8
  %67 = call i32 @xpt_free_ccb(%union.ccb* %66)
  br label %79

68:                                               ; preds = %42
  %69 = load %union.ccb*, %union.ccb** %6, align 8
  %70 = call i32 @xpt_rescan(%union.ccb* %69)
  br label %79

71:                                               ; preds = %2
  %72 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %73 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.pvscsi_ring_msg_desc*, %struct.pvscsi_ring_msg_desc** %4, align 8
  %76 = getelementptr inbounds %struct.pvscsi_ring_msg_desc, %struct.pvscsi_ring_msg_desc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32, i8*, ...) @device_printf(i32 %74, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %71, %68, %61, %37
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local %union.ccb* @xpt_alloc_ccb_nowait(...) #1

declare dso_local i32 @xpt_create_path(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i32 @xpt_rescan(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
