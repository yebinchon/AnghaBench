; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_bulk_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_bulk_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfsync_softc = type { i32, i64, i64, i32 }
%struct.TYPE_2__ = type { i64 }

@V_pfsyncif = common dso_local global %struct.pfsync_softc* null, align 8
@V_pf_status = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PF_DEBUG_MISC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"pfsync: received bulk update request\0A\00", align 1
@time_uptime = common dso_local global i32 0, align 4
@PFSYNC_BUS_START = common dso_local global i32 0, align 4
@pfsync_bulk_update = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pfsync_bulk_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfsync_bulk_start() #0 {
  %1 = alloca %struct.pfsync_softc*, align 8
  %2 = load %struct.pfsync_softc*, %struct.pfsync_softc** @V_pfsyncif, align 8
  store %struct.pfsync_softc* %2, %struct.pfsync_softc** %1, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_pf_status, i32 0, i32 0), align 8
  %4 = load i64, i64* @PF_DEBUG_MISC, align 8
  %5 = icmp sge i64 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %0
  %9 = load %struct.pfsync_softc*, %struct.pfsync_softc** %1, align 8
  %10 = call i32 @PFSYNC_BLOCK(%struct.pfsync_softc* %9)
  %11 = load i32, i32* @time_uptime, align 4
  %12 = load %struct.pfsync_softc*, %struct.pfsync_softc** %1, align 8
  %13 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 8
  %14 = load %struct.pfsync_softc*, %struct.pfsync_softc** %1, align 8
  %15 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.pfsync_softc*, %struct.pfsync_softc** %1, align 8
  %17 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @PFSYNC_BUS_START, align 4
  %19 = call i32 @pfsync_bulk_status(i32 %18)
  %20 = load %struct.pfsync_softc*, %struct.pfsync_softc** %1, align 8
  %21 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %20, i32 0, i32 0
  %22 = load i32, i32* @pfsync_bulk_update, align 4
  %23 = load %struct.pfsync_softc*, %struct.pfsync_softc** %1, align 8
  %24 = call i32 @callout_reset(i32* %21, i32 1, i32 %22, %struct.pfsync_softc* %23)
  %25 = load %struct.pfsync_softc*, %struct.pfsync_softc** %1, align 8
  %26 = call i32 @PFSYNC_BUNLOCK(%struct.pfsync_softc* %25)
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @PFSYNC_BLOCK(%struct.pfsync_softc*) #1

declare dso_local i32 @pfsync_bulk_status(i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.pfsync_softc*) #1

declare dso_local i32 @PFSYNC_BUNLOCK(%struct.pfsync_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
