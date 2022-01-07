; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_tx_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_tx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { %struct.bxe_fastpath*, %struct.TYPE_3__ }
%struct.bxe_fastpath = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Interface not running, ignoring transmit request\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Interface link is down, ignoring transmit request\0A\00", align 1
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @bxe_tx_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_tx_start(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca %struct.bxe_fastpath*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.bxe_softc* @if_getsoftc(i32 %5)
  store %struct.bxe_softc* %6, %struct.bxe_softc** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @if_getdrvflags(i32 %7)
  %9 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %14 = call i32 @BLOGW(%struct.bxe_softc* %13, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %49

15:                                               ; preds = %1
  %16 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %17 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %23 = call i32 @BLOGW(%struct.bxe_softc* %22, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %49

24:                                               ; preds = %15
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %26 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %25, i32 0, i32 0
  %27 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %26, align 8
  %28 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %27, i64 0
  store %struct.bxe_fastpath* %28, %struct.bxe_fastpath** %4, align 8
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @if_getdrvflags(i32 %29)
  %31 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %36 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %49

40:                                               ; preds = %24
  %41 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %42 = call i32 @BXE_FP_TX_LOCK(%struct.bxe_fastpath* %41)
  %43 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %44 = load i32, i32* %2, align 4
  %45 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %46 = call i32 @bxe_tx_start_locked(%struct.bxe_softc* %43, i32 %44, %struct.bxe_fastpath* %45)
  %47 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %48 = call i32 @BXE_FP_TX_UNLOCK(%struct.bxe_fastpath* %47)
  br label %49

49:                                               ; preds = %40, %34, %21, %12
  ret void
}

declare dso_local %struct.bxe_softc* @if_getsoftc(i32) #1

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local i32 @BLOGW(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @BXE_FP_TX_LOCK(%struct.bxe_fastpath*) #1

declare dso_local i32 @bxe_tx_start_locked(%struct.bxe_softc*, i32, %struct.bxe_fastpath*) #1

declare dso_local i32 @BXE_FP_TX_UNLOCK(%struct.bxe_fastpath*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
