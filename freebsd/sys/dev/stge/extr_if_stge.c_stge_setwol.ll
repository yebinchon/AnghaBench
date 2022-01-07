; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_setwol.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_setwol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stge_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@STGE_WakeEvent = common dso_local global i32 0, align 4
@WE_WakePktEnable = common dso_local global i32 0, align 4
@WE_MagicPktEnable = common dso_local global i32 0, align 4
@WE_LinkEventEnable = common dso_local global i32 0, align 4
@WE_WakeOnLanEnable = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@STGE_AsicCtrl = common dso_local global i32 0, align 4
@AC_TxReset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stge_softc*)* @stge_setwol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stge_setwol(%struct.stge_softc* %0) #0 {
  %2 = alloca %struct.stge_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  store %struct.stge_softc* %0, %struct.stge_softc** %2, align 8
  %5 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %6 = call i32 @STGE_LOCK_ASSERT(%struct.stge_softc* %5)
  %7 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %8 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %7, i32 0, i32 0
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %3, align 8
  %10 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %11 = load i32, i32* @STGE_WakeEvent, align 4
  %12 = call i32 @CSR_READ_1(%struct.stge_softc* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @WE_WakePktEnable, align 4
  %14 = load i32, i32* @WE_MagicPktEnable, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @WE_LinkEventEnable, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @WE_WakeOnLanEnable, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %24 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load i32, i32* @WE_MagicPktEnable, align 4
  %31 = load i32, i32* @WE_WakeOnLanEnable, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %29, %1
  %36 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %37 = load i32, i32* @STGE_WakeEvent, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @CSR_WRITE_1(%struct.stge_softc* %36, i32 %37, i32 %38)
  %40 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %41 = load i32, i32* @STGE_AsicCtrl, align 4
  %42 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %43 = load i32, i32* @STGE_AsicCtrl, align 4
  %44 = call i32 @CSR_READ_4(%struct.stge_softc* %42, i32 %43)
  %45 = load i32, i32* @AC_TxReset, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @CSR_WRITE_4(%struct.stge_softc* %40, i32 %41, i32 %46)
  ret void
}

declare dso_local i32 @STGE_LOCK_ASSERT(%struct.stge_softc*) #1

declare dso_local i32 @CSR_READ_1(%struct.stge_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_1(%struct.stge_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.stge_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.stge_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
