; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-all.c_ata_conn_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-all.c_ata_conn_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_channel = type { i32, i32* }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ata_conn_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_conn_event(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ata_channel*, align 8
  %7 = alloca %union.ccb*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = ptrtoint i8* %8 to i32
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.ata_channel* @device_get_softc(i32 %10)
  store %struct.ata_channel* %11, %struct.ata_channel** %6, align 8
  %12 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %13 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %12, i32 0, i32 0
  %14 = call i32 @mtx_lock(i32* %13)
  %15 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %16 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %21 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %20, i32 0, i32 0
  %22 = call i32 @mtx_unlock(i32* %21)
  br label %51

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @ata_reinit(i32 %24)
  %26 = call %union.ccb* (...) @xpt_alloc_ccb_nowait()
  store %union.ccb* %26, %union.ccb** %7, align 8
  %27 = icmp eq %union.ccb* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %51

29:                                               ; preds = %23
  %30 = load %union.ccb*, %union.ccb** %7, align 8
  %31 = bitcast %union.ccb* %30 to %struct.TYPE_2__*
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %34 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @cam_sim_path(i32* %35)
  %37 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %38 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %39 = call i64 @xpt_create_path(i32* %32, i32* null, i32 %36, i32 %37, i32 %38)
  %40 = load i64, i64* @CAM_REQ_CMP, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %29
  %43 = load %union.ccb*, %union.ccb** %7, align 8
  %44 = call i32 @xpt_free_ccb(%union.ccb* %43)
  br label %51

45:                                               ; preds = %29
  %46 = load %union.ccb*, %union.ccb** %7, align 8
  %47 = call i32 @xpt_rescan(%union.ccb* %46)
  %48 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %49 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %48, i32 0, i32 0
  %50 = call i32 @mtx_unlock(i32* %49)
  br label %51

51:                                               ; preds = %45, %42, %28, %19
  ret void
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ata_reinit(i32) #1

declare dso_local %union.ccb* @xpt_alloc_ccb_nowait(...) #1

declare dso_local i64 @xpt_create_path(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(i32*) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i32 @xpt_rescan(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
