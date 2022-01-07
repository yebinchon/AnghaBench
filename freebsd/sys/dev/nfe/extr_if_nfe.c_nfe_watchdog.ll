; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfe_softc = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [55 x i8] c"watchdog timeout (missed Tx interrupts) -- recovering\0A\00", align 1
@NFE_RXTX_CTL = common dso_local global i32 0, align 4
@NFE_RXTX_KICKTX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"watchdog timeout\0A\00", align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @nfe_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfe_watchdog(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfe_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.nfe_softc* @if_getsoftc(i32 %4)
  store %struct.nfe_softc* %5, %struct.nfe_softc** %3, align 8
  %6 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %7 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %12 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, -1
  store i64 %14, i64* %12, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %1
  br label %66

17:                                               ; preds = %10
  %18 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %19 = call i32 @nfe_txeof(%struct.nfe_softc* %18)
  %20 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %21 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %17
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @if_printf(i32 %26, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @if_sendq_empty(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @nfe_start_locked(i32 %32)
  br label %34

34:                                               ; preds = %31, %25
  br label %66

35:                                               ; preds = %17
  %36 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %37 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %41 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp sle i32 %42, 3
  br i1 %43, label %44, label %53

44:                                               ; preds = %35
  %45 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %46 = load i32, i32* @NFE_RXTX_CTL, align 4
  %47 = load i32, i32* @NFE_RXTX_KICKTX, align 4
  %48 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %49 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %47, %50
  %52 = call i32 @NFE_WRITE(%struct.nfe_softc* %45, i32 %46, i32 %51)
  br label %66

53:                                               ; preds = %35
  %54 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %55 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %54, i32 0, i32 1
  store i32 0, i32* %55, align 8
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @if_printf(i32 %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %60 = call i32 @if_setdrvflagbits(i32 %58, i32 0, i32 %59)
  %61 = load i32, i32* %2, align 4
  %62 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %63 = call i32 @if_inc_counter(i32 %61, i32 %62, i32 1)
  %64 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %65 = call i32 @nfe_init_locked(%struct.nfe_softc* %64)
  br label %66

66:                                               ; preds = %53, %44, %34, %16
  ret void
}

declare dso_local %struct.nfe_softc* @if_getsoftc(i32) #1

declare dso_local i32 @nfe_txeof(%struct.nfe_softc*) #1

declare dso_local i32 @if_printf(i32, i8*) #1

declare dso_local i32 @if_sendq_empty(i32) #1

declare dso_local i32 @nfe_start_locked(i32) #1

declare dso_local i32 @NFE_WRITE(%struct.nfe_softc*, i32, i32) #1

declare dso_local i32 @if_setdrvflagbits(i32, i32, i32) #1

declare dso_local i32 @if_inc_counter(i32, i32, i32) #1

declare dso_local i32 @nfe_init_locked(%struct.nfe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
