; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_raid_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_raid_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32, i32 }
%struct.ccb_setasync = type { %struct.TYPE_5__, %struct.mpt_softc*, i32, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }
%union.ccb = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Unable to spawn RAID thread!\0A\00", align 1
@mpt_raid_reply_handler = common dso_local global i32 0, align 4
@MPT_HANDLER_REPLY = common dso_local global i32 0, align 4
@raid_handler_id = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Unable to register RAID haandler!\0A\00", align 1
@XPT_SASYNC_CB = common dso_local global i32 0, align 4
@AC_FOUND_DEVICE = common dso_local global i32 0, align 4
@mpt_raid_async = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [56 x i8] c"mpt_raid_attach: Unable to register CAM async handler.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*)* @mpt_raid_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_raid_attach(%struct.mpt_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpt_softc*, align 8
  %4 = alloca %struct.ccb_setasync, align 8
  %5 = alloca %struct.TYPE_4__, align 4
  %6 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %3, align 8
  %7 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %8 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %9 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %8, i32 0, i32 1
  %10 = call i32 @mpt_callout_init(%struct.mpt_softc* %7, i32* %9)
  %11 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %12 = call i32 @mpt_spawn_raid_thread(%struct.mpt_softc* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %17 = call i32 @mpt_prt(%struct.mpt_softc* %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %63

18:                                               ; preds = %1
  %19 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %20 = call i32 @MPT_LOCK(%struct.mpt_softc* %19)
  %21 = load i32, i32* @mpt_raid_reply_handler, align 4
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %24 = load i32, i32* @MPT_HANDLER_REPLY, align 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @mpt_register_handler(%struct.mpt_softc* %23, i32 %24, i32 %26, i32* @raid_handler_id)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %18
  %31 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %32 = call i32 @mpt_prt(%struct.mpt_softc* %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %63

33:                                               ; preds = %18
  %34 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %4, i32 0, i32 0
  %35 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %36 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @xpt_setup_ccb(%struct.TYPE_5__* %34, i32 %37, i32 5)
  %39 = load i32, i32* @XPT_SASYNC_CB, align 4
  %40 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %4, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @AC_FOUND_DEVICE, align 4
  %43 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %4, i32 0, i32 3
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @mpt_raid_async, align 4
  %45 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %4, i32 0, i32 2
  store i32 %44, i32* %45, align 8
  %46 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %47 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %4, i32 0, i32 1
  store %struct.mpt_softc* %46, %struct.mpt_softc** %47, align 8
  %48 = bitcast %struct.ccb_setasync* %4 to %union.ccb*
  %49 = call i32 @xpt_action(%union.ccb* %48)
  %50 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %4, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CAM_REQ_CMP, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %33
  %56 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %57 = call i32 @mpt_prt(%struct.mpt_softc* %56, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %33
  %59 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %60 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %59)
  %61 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %62 = call i32 @mpt_raid_sysctl_attach(%struct.mpt_softc* %61)
  store i32 0, i32* %2, align 4
  br label %69

63:                                               ; preds = %30, %15
  %64 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %65 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %64)
  %66 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %67 = call i32 @mpt_raid_detach(%struct.mpt_softc* %66)
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %63, %58
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @mpt_callout_init(%struct.mpt_softc*, i32*) #1

declare dso_local i32 @mpt_spawn_raid_thread(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*) #1

declare dso_local i32 @MPT_LOCK(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_register_handler(%struct.mpt_softc*, i32, i32, i32*) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @MPT_UNLOCK(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_raid_sysctl_attach(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_raid_detach(%struct.mpt_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
