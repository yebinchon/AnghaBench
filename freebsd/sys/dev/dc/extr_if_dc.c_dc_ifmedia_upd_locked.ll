; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_ifmedia_upd_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_ifmedia_upd_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { i32, i64 }
%struct.mii_data = type { %struct.ifmedia }
%struct.ifmedia = type { i32 }

@IFM_HPNA_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_softc*)* @dc_ifmedia_upd_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc_ifmedia_upd_locked(%struct.dc_softc* %0) #0 {
  %2 = alloca %struct.dc_softc*, align 8
  %3 = alloca %struct.mii_data*, align 8
  %4 = alloca %struct.ifmedia*, align 8
  %5 = alloca i32, align 4
  store %struct.dc_softc* %0, %struct.dc_softc** %2, align 8
  %6 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %7 = call i32 @DC_LOCK_ASSERT(%struct.dc_softc* %6)
  %8 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %9 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %8, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %11 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.mii_data* @device_get_softc(i32 %12)
  store %struct.mii_data* %13, %struct.mii_data** %3, align 8
  %14 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %15 = call i32 @mii_mediachg(%struct.mii_data* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %1
  %19 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %20 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %19, i32 0, i32 0
  store %struct.ifmedia* %20, %struct.ifmedia** %4, align 8
  %21 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %22 = call i64 @DC_IS_INTEL(%struct.dc_softc* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %26 = load %struct.ifmedia*, %struct.ifmedia** %4, align 8
  %27 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dc_setcfg(%struct.dc_softc* %25, i32 %28)
  br label %48

30:                                               ; preds = %18
  %31 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %32 = call i64 @DC_IS_DAVICOM(%struct.dc_softc* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load %struct.ifmedia*, %struct.ifmedia** %4, align 8
  %36 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @IFM_SUBTYPE(i32 %37)
  %39 = load i64, i64* @IFM_HPNA_1, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %43 = load %struct.ifmedia*, %struct.ifmedia** %4, align 8
  %44 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dc_setcfg(%struct.dc_softc* %42, i32 %45)
  br label %47

47:                                               ; preds = %41, %34, %30
  br label %48

48:                                               ; preds = %47, %24
  br label %49

49:                                               ; preds = %48, %1
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @DC_LOCK_ASSERT(%struct.dc_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @mii_mediachg(%struct.mii_data*) #1

declare dso_local i64 @DC_IS_INTEL(%struct.dc_softc*) #1

declare dso_local i32 @dc_setcfg(%struct.dc_softc*, i32) #1

declare dso_local i64 @DC_IS_DAVICOM(%struct.dc_softc*) #1

declare dso_local i64 @IFM_SUBTYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
