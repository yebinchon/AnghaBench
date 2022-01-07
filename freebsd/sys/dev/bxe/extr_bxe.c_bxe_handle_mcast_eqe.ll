; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_handle_mcast_eqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_handle_mcast_eqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.TYPE_3__*)*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*)* }
%struct.ecore_mcast_ramrod_params = type { %struct.TYPE_3__* }

@ECORE_MCAST_CMD_CONT = common dso_local global i32 0, align 4
@DBG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"ERROR: Failed to send pending mcast commands (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_handle_mcast_eqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_handle_mcast_eqe(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca %struct.ecore_mcast_ramrod_params, align 8
  %4 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %5 = call i32 @memset(%struct.ecore_mcast_ramrod_params* %3, i32 0, i32 8)
  %6 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %7 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.ecore_mcast_ramrod_params, %struct.ecore_mcast_ramrod_params* %3, i32 0, i32 0
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %8, align 8
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %10 = call i32 @BXE_MCAST_LOCK(%struct.bxe_softc* %9)
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %12 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %14, align 8
  %16 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %17 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = call i32 %15(%struct.TYPE_4__* %18)
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %21 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64 (%struct.TYPE_3__*)*, i64 (%struct.TYPE_3__*)** %22, align 8
  %24 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %25 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %24, i32 0, i32 0
  %26 = call i64 %23(%struct.TYPE_3__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %1
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %30 = load i32, i32* @ECORE_MCAST_CMD_CONT, align 4
  %31 = call i32 @ecore_config_mcast(%struct.bxe_softc* %29, %struct.ecore_mcast_ramrod_params* %3, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %36 = load i32, i32* @DBG_SP, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @BLOGD(%struct.bxe_softc* %35, i32 %36, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %34, %28
  br label %40

40:                                               ; preds = %39, %1
  %41 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %42 = call i32 @BXE_MCAST_UNLOCK(%struct.bxe_softc* %41)
  ret void
}

declare dso_local i32 @memset(%struct.ecore_mcast_ramrod_params*, i32, i32) #1

declare dso_local i32 @BXE_MCAST_LOCK(%struct.bxe_softc*) #1

declare dso_local i32 @ecore_config_mcast(%struct.bxe_softc*, %struct.ecore_mcast_ramrod_params*, i32) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32) #1

declare dso_local i32 @BXE_MCAST_UNLOCK(%struct.bxe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
