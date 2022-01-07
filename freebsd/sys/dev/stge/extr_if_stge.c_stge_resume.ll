; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stge_softc = type { i64, %struct.ifnet* }
%struct.ifnet = type { i32 }

@STGE_WakeEvent = common dso_local global i32 0, align 4
@WE_WakePktEnable = common dso_local global i32 0, align 4
@WE_MagicPktEnable = common dso_local global i32 0, align 4
@WE_LinkEventEnable = common dso_local global i32 0, align 4
@WE_WakeOnLanEnable = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @stge_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stge_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stge_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.stge_softc* @device_get_softc(i32 %6)
  store %struct.stge_softc* %7, %struct.stge_softc** %3, align 8
  %8 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %9 = call i32 @STGE_LOCK(%struct.stge_softc* %8)
  %10 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %11 = load i32, i32* @STGE_WakeEvent, align 4
  %12 = call i32 @CSR_READ_1(%struct.stge_softc* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @WE_WakePktEnable, align 4
  %14 = load i32, i32* @WE_MagicPktEnable, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @WE_LinkEventEnable, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @WE_WakeOnLanEnable, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %24 = load i32, i32* @STGE_WakeEvent, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @CSR_WRITE_1(%struct.stge_softc* %23, i32 %24, i32 %25)
  %27 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %28 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %27, i32 0, i32 1
  %29 = load %struct.ifnet*, %struct.ifnet** %28, align 8
  store %struct.ifnet* %29, %struct.ifnet** %4, align 8
  %30 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %31 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IFF_UP, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %1
  %37 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %38 = call i32 @stge_init_locked(%struct.stge_softc* %37)
  br label %39

39:                                               ; preds = %36, %1
  %40 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %41 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %43 = call i32 @STGE_UNLOCK(%struct.stge_softc* %42)
  ret i32 0
}

declare dso_local %struct.stge_softc* @device_get_softc(i32) #1

declare dso_local i32 @STGE_LOCK(%struct.stge_softc*) #1

declare dso_local i32 @CSR_READ_1(%struct.stge_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_1(%struct.stge_softc*, i32, i32) #1

declare dso_local i32 @stge_init_locked(%struct.stge_softc*) #1

declare dso_local i32 @STGE_UNLOCK(%struct.stge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
