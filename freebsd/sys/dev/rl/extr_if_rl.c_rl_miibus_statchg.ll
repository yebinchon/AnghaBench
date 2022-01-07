; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_miibus_statchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_miibus_statchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { i32, %struct.ifnet*, i32 }
%struct.ifnet = type { i32 }
%struct.mii_data = type { i32, i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@RL_FLAG_LINK = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @rl_miibus_statchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rl_miibus_statchg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rl_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.mii_data*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i8* @device_get_softc(i32 %6)
  %8 = bitcast i8* %7 to %struct.rl_softc*
  store %struct.rl_softc* %8, %struct.rl_softc** %3, align 8
  %9 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %10 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i8* @device_get_softc(i32 %11)
  %13 = bitcast i8* %12 to %struct.mii_data*
  store %struct.mii_data* %13, %struct.mii_data** %5, align 8
  %14 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %15 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %14, i32 0, i32 1
  %16 = load %struct.ifnet*, %struct.ifnet** %15, align 8
  store %struct.ifnet* %16, %struct.ifnet** %4, align 8
  %17 = load %struct.mii_data*, %struct.mii_data** %5, align 8
  %18 = icmp eq %struct.mii_data* %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %1
  %20 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %21 = icmp eq %struct.ifnet* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  %23 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %24 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22, %19, %1
  br label %61

30:                                               ; preds = %22
  %31 = load i32, i32* @RL_FLAG_LINK, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %34 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.mii_data*, %struct.mii_data** %5, align 8
  %38 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IFM_ACTIVE, align 4
  %41 = load i32, i32* @IFM_AVALID, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = load i32, i32* @IFM_ACTIVE, align 4
  %45 = load i32, i32* @IFM_AVALID, align 4
  %46 = or i32 %44, %45
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %30
  %49 = load %struct.mii_data*, %struct.mii_data** %5, align 8
  %50 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @IFM_SUBTYPE(i32 %51)
  switch i32 %52, label %59 [
    i32 128, label %53
    i32 129, label %53
  ]

53:                                               ; preds = %48, %48
  %54 = load i32, i32* @RL_FLAG_LINK, align 4
  %55 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %56 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %60

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59, %53
  br label %61

61:                                               ; preds = %29, %60, %30
  ret void
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
