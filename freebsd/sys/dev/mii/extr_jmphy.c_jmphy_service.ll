; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_jmphy.c_jmphy_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_jmphy.c_jmphy_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32, i32 }
%struct.mii_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ifmedia_entry* }
%struct.ifmedia_entry = type { i32 }

@EJUSTRETURN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4
@JMPHY_SSR = common dso_local global i32 0, align 4
@JMPHY_SSR_LINK_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_softc*, %struct.mii_data*, i32)* @jmphy_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jmphy_service(%struct.mii_softc* %0, %struct.mii_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_softc*, align 8
  %6 = alloca %struct.mii_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifmedia_entry*, align 8
  store %struct.mii_softc* %0, %struct.mii_softc** %5, align 8
  store %struct.mii_data* %1, %struct.mii_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %10 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %11, align 8
  store %struct.ifmedia_entry* %12, %struct.ifmedia_entry** %8, align 8
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %66 [
    i32 129, label %14
    i32 130, label %15
    i32 128, label %24
  ]

14:                                               ; preds = %3
  br label %66

15:                                               ; preds = %3
  %16 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %17 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %18 = call i32 @jmphy_setmedia(%struct.mii_softc* %16, %struct.ifmedia_entry* %17)
  %19 = load i32, i32* @EJUSTRETURN, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %72

23:                                               ; preds = %15
  br label %66

24:                                               ; preds = %3
  %25 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %26 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @IFM_SUBTYPE(i32 %27)
  %29 = load i32, i32* @IFM_AUTO, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %33 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  br label %66

34:                                               ; preds = %24
  %35 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %36 = load i32, i32* @JMPHY_SSR, align 4
  %37 = call i32 @PHY_READ(%struct.mii_softc* %35, i32 %36)
  %38 = load i32, i32* @JMPHY_SSR_LINK_UP, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %43 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  br label %66

44:                                               ; preds = %34
  %45 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %46 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = icmp eq i32 %47, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %66

51:                                               ; preds = %44
  %52 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %53 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %56 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp sle i32 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %72

60:                                               ; preds = %51
  %61 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %62 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %61, i32 0, i32 0
  store i32 0, i32* %62, align 4
  %63 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %64 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %65 = call i32 @jmphy_setmedia(%struct.mii_softc* %63, %struct.ifmedia_entry* %64)
  br label %66

66:                                               ; preds = %3, %60, %50, %41, %31, %23, %14
  %67 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %68 = call i32 @PHY_STATUS(%struct.mii_softc* %67)
  %69 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @mii_phy_update(%struct.mii_softc* %69, i32 %70)
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %66, %59, %21
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @jmphy_setmedia(%struct.mii_softc*, %struct.ifmedia_entry*) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

declare dso_local i32 @PHY_STATUS(%struct.mii_softc*) #1

declare dso_local i32 @mii_phy_update(%struct.mii_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
