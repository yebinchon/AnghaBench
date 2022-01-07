; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_miibus_statchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_miibus_statchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ste_softc = type { i32, %struct.ifnet*, i32 }
%struct.ifnet = type { i32 }
%struct.mii_data = type { i32, i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@STE_FLAG_LINK = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@STE_MACCTL0 = common dso_local global i32 0, align 4
@STE_MACCTL0_FLOWCTL_ENABLE = common dso_local global i32 0, align 4
@STE_MACCTL0_FULLDUPLEX = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ste_miibus_statchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ste_miibus_statchg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ste_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i8* @device_get_softc(i32 %7)
  %9 = bitcast i8* %8 to %struct.ste_softc*
  store %struct.ste_softc* %9, %struct.ste_softc** %3, align 8
  %10 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i8* @device_get_softc(i32 %12)
  %14 = bitcast i8* %13 to %struct.mii_data*
  store %struct.mii_data* %14, %struct.mii_data** %4, align 8
  %15 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %15, i32 0, i32 1
  %17 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  store %struct.ifnet* %17, %struct.ifnet** %5, align 8
  %18 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %19 = icmp eq %struct.mii_data* %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %1
  %21 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %22 = icmp eq %struct.ifnet* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %25 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23, %20, %1
  br label %95

31:                                               ; preds = %23
  %32 = load i32, i32* @STE_FLAG_LINK, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %35 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %39 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IFM_ACTIVE, align 4
  %42 = load i32, i32* @IFM_AVALID, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = load i32, i32* @IFM_ACTIVE, align 4
  %46 = load i32, i32* @IFM_AVALID, align 4
  %47 = or i32 %45, %46
  %48 = icmp eq i32 %44, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %31
  %50 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %51 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @IFM_SUBTYPE(i32 %52)
  switch i32 %53, label %60 [
    i32 128, label %54
    i32 129, label %54
    i32 131, label %54
    i32 130, label %54
  ]

54:                                               ; preds = %49, %49, %49, %49
  %55 = load i32, i32* @STE_FLAG_LINK, align 4
  %56 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %57 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %49, %54
  br label %61

61:                                               ; preds = %60
  br label %62

62:                                               ; preds = %61, %31
  %63 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %64 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @STE_FLAG_LINK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %95

69:                                               ; preds = %62
  %70 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %71 = load i32, i32* @STE_MACCTL0, align 4
  %72 = call i32 @CSR_READ_2(%struct.ste_softc* %70, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* @STE_MACCTL0_FLOWCTL_ENABLE, align 4
  %74 = load i32, i32* @STE_MACCTL0_FULLDUPLEX, align 4
  %75 = or i32 %73, %74
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %6, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %6, align 4
  %79 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %80 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @IFM_OPTIONS(i32 %81)
  %83 = load i32, i32* @IFM_FDX, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %69
  %87 = load i32, i32* @STE_MACCTL0_FULLDUPLEX, align 4
  %88 = load i32, i32* %6, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %86, %69
  %91 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %92 = load i32, i32* @STE_MACCTL0, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @CSR_WRITE_2(%struct.ste_softc* %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %30, %90, %62
  ret void
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @CSR_READ_2(%struct.ste_softc*, i32) #1

declare dso_local i32 @IFM_OPTIONS(i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.ste_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
