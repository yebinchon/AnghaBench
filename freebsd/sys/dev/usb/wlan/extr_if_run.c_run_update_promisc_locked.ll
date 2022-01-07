; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_update_promisc_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_update_promisc_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@RT2860_RX_FILTR_CFG = common dso_local global i32 0, align 4
@RT2860_DROP_UC_NOME = common dso_local global i32 0, align 4
@RUN_DEBUG_RECV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s promiscuous mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"entering\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"leaving\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.run_softc*)* @run_update_promisc_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_update_promisc_locked(%struct.run_softc* %0) #0 {
  %2 = alloca %struct.run_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.run_softc* %0, %struct.run_softc** %2, align 8
  %4 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %5 = load i32, i32* @RT2860_RX_FILTR_CFG, align 4
  %6 = call i32 @run_read(%struct.run_softc* %4, i32 %5, i32* %3)
  %7 = load i32, i32* @RT2860_DROP_UC_NOME, align 4
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %11 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i32, i32* @RT2860_DROP_UC_NOME, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %22 = load i32, i32* @RT2860_RX_FILTR_CFG, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @run_write(%struct.run_softc* %21, i32 %22, i32 %23)
  %25 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %26 = load i32, i32* @RUN_DEBUG_RECV, align 4
  %27 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %28 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %34 = call i32 @RUN_DPRINTF(%struct.run_softc* %25, i32 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %33)
  ret void
}

declare dso_local i32 @run_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @run_write(%struct.run_softc*, i32, i32) #1

declare dso_local i32 @RUN_DPRINTF(%struct.run_softc*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
