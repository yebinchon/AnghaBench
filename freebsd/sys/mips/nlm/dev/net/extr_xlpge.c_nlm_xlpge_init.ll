; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_xlpge_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_xlpge_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_xlpge_softc = type { i32, i64, %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.mii_data = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@nlm_mii_pollstat = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nlm_xlpge_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_xlpge_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nlm_xlpge_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.mii_data*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.mii_data* null, %struct.mii_data** %5, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.nlm_xlpge_softc*
  store %struct.nlm_xlpge_softc* %7, %struct.nlm_xlpge_softc** %3, align 8
  %8 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %9 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %8, i32 0, i32 2
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %4, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %52

18:                                               ; preds = %1
  %19 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %20 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %25 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call %struct.mii_data* @device_get_softc(i64 %26)
  store %struct.mii_data* %27, %struct.mii_data** %5, align 8
  %28 = load %struct.mii_data*, %struct.mii_data** %5, align 8
  %29 = call i32 @mii_mediachg(%struct.mii_data* %28)
  br label %30

30:                                               ; preds = %23, %18
  %31 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %32 = call i32 @nlm_xlpge_gmac_config_speed(%struct.nlm_xlpge_softc* %31)
  %33 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %34 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %35 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %41 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %45 = call i32 @nlm_xlpge_port_enable(%struct.nlm_xlpge_softc* %44)
  %46 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %47 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %46, i32 0, i32 0
  %48 = load i32, i32* @hz, align 4
  %49 = load i32, i32* @nlm_mii_pollstat, align 4
  %50 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %51 = call i32 @callout_reset(i32* %47, i32 %48, i32 %49, %struct.nlm_xlpge_softc* %50)
  br label %52

52:                                               ; preds = %30, %17
  ret void
}

declare dso_local %struct.mii_data* @device_get_softc(i64) #1

declare dso_local i32 @mii_mediachg(%struct.mii_data*) #1

declare dso_local i32 @nlm_xlpge_gmac_config_speed(%struct.nlm_xlpge_softc*) #1

declare dso_local i32 @nlm_xlpge_port_enable(%struct.nlm_xlpge_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.nlm_xlpge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
