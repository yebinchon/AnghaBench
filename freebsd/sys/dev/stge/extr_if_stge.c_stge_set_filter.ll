; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_set_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_set_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stge_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@STGE_ReceiveMode = common dso_local global i32 0, align 4
@RM_ReceiveUnicast = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@RM_ReceiveBroadcast = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@RM_ReceiveAllFrames = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stge_softc*)* @stge_set_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stge_set_filter(%struct.stge_softc* %0) #0 {
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
  %11 = load i32, i32* @STGE_ReceiveMode, align 4
  %12 = call i32 @CSR_READ_2(%struct.stge_softc* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @RM_ReceiveUnicast, align 4
  %14 = load i32, i32* %4, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %17 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IFF_BROADCAST, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* @RM_ReceiveBroadcast, align 4
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  br label %31

26:                                               ; preds = %1
  %27 = load i32, i32* @RM_ReceiveBroadcast, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %26, %22
  %32 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %33 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IFF_PROMISC, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32, i32* @RM_ReceiveAllFrames, align 4
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  br label %47

42:                                               ; preds = %31
  %43 = load i32, i32* @RM_ReceiveAllFrames, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %42, %38
  %48 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %49 = load i32, i32* @STGE_ReceiveMode, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @CSR_WRITE_2(%struct.stge_softc* %48, i32 %49, i32 %50)
  ret void
}

declare dso_local i32 @STGE_LOCK_ASSERT(%struct.stge_softc*) #1

declare dso_local i32 @CSR_READ_2(%struct.stge_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.stge_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
