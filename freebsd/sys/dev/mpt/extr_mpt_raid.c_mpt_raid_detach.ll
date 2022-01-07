; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_raid_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_raid_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32, i32 }
%struct.ccb_setasync = type { %struct.mpt_softc*, i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%union.ccb = type { i32 }

@mpt_raid_reply_handler = common dso_local global i32 0, align 4
@MPT_HANDLER_REPLY = common dso_local global i32 0, align 4
@raid_handler_id = common dso_local global i32 0, align 4
@XPT_SASYNC_CB = common dso_local global i32 0, align 4
@mpt_raid_async = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpt_softc*)* @mpt_raid_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpt_raid_detach(%struct.mpt_softc* %0) #0 {
  %2 = alloca %struct.mpt_softc*, align 8
  %3 = alloca %struct.ccb_setasync, align 8
  %4 = alloca %struct.TYPE_4__, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %2, align 8
  %5 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %6 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %7 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %6, i32 0, i32 1
  %8 = call i32 @mpt_callout_drain(%struct.mpt_softc* %5, i32* %7)
  %9 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %10 = call i32 @MPT_LOCK(%struct.mpt_softc* %9)
  %11 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %12 = call i32 @mpt_terminate_raid_thread(%struct.mpt_softc* %11)
  %13 = load i32, i32* @mpt_raid_reply_handler, align 4
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %16 = load i32, i32* @MPT_HANDLER_REPLY, align 4
  %17 = load i32, i32* @raid_handler_id, align 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @mpt_deregister_handler(%struct.mpt_softc* %15, i32 %16, i32 %19, i32 %17)
  %21 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %3, i32 0, i32 3
  %22 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %23 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @xpt_setup_ccb(%struct.TYPE_5__* %21, i32 %24, i32 5)
  %26 = load i32, i32* @XPT_SASYNC_CB, align 4
  %27 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %3, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %3, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* @mpt_raid_async, align 4
  %31 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %3, i32 0, i32 1
  store i32 %30, i32* %31, align 8
  %32 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %33 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %3, i32 0, i32 0
  store %struct.mpt_softc* %32, %struct.mpt_softc** %33, align 8
  %34 = bitcast %struct.ccb_setasync* %3 to %union.ccb*
  %35 = call i32 @xpt_action(%union.ccb* %34)
  %36 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %37 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %36)
  ret void
}

declare dso_local i32 @mpt_callout_drain(%struct.mpt_softc*, i32*) #1

declare dso_local i32 @MPT_LOCK(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_terminate_raid_thread(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_deregister_handler(%struct.mpt_softc*, i32, i32, i32) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @MPT_UNLOCK(%struct.mpt_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
