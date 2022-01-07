; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ure.c_ure_miibus_statchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ure.c_ure_miibus_statchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ure_softc = type { i32, i32, i32 }
%struct.mii_data = type { i32, i32 }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@URE_FLAG_LINK = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@URE_FLAG_8152 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ure_miibus_statchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ure_miibus_statchg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ure_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.ure_softc* @device_get_softc(i32 %7)
  store %struct.ure_softc* %8, %struct.ure_softc** %3, align 8
  %9 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %10 = call %struct.mii_data* @GET_MII(%struct.ure_softc* %9)
  store %struct.mii_data* %10, %struct.mii_data** %4, align 8
  %11 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %11, i32 0, i32 2
  %13 = call i32 @mtx_owned(i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %18 = call i32 @URE_LOCK(%struct.ure_softc* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %21 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %20, i32 0, i32 1
  %22 = call %struct.ifnet* @uether_getifp(i32* %21)
  store %struct.ifnet* %22, %struct.ifnet** %5, align 8
  %23 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %24 = icmp eq %struct.mii_data* %23, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %19
  %26 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %27 = icmp eq %struct.ifnet* %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28, %25, %19
  br label %90

36:                                               ; preds = %28
  %37 = load i32, i32* @URE_FLAG_LINK, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %40 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %44 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IFM_ACTIVE, align 4
  %47 = load i32, i32* @IFM_AVALID, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = load i32, i32* @IFM_ACTIVE, align 4
  %51 = load i32, i32* @IFM_AVALID, align 4
  %52 = or i32 %50, %51
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %81

54:                                               ; preds = %36
  %55 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %56 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @IFM_SUBTYPE(i32 %57)
  switch i32 %58, label %79 [
    i32 128, label %59
    i32 129, label %59
    i32 130, label %65
  ]

59:                                               ; preds = %54, %54
  %60 = load i32, i32* @URE_FLAG_LINK, align 4
  %61 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %62 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %80

65:                                               ; preds = %54
  %66 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %67 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @URE_FLAG_8152, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %80

73:                                               ; preds = %65
  %74 = load i32, i32* @URE_FLAG_LINK, align 4
  %75 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %76 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %80

79:                                               ; preds = %54
  br label %80

80:                                               ; preds = %79, %73, %72, %59
  br label %81

81:                                               ; preds = %80, %36
  %82 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %83 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @URE_FLAG_LINK, align 4
  %86 = and i32 %84, %85
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %90

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %88, %35
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %95 = call i32 @URE_UNLOCK(%struct.ure_softc* %94)
  br label %96

96:                                               ; preds = %93, %90
  ret void
}

declare dso_local %struct.ure_softc* @device_get_softc(i32) #1

declare dso_local %struct.mii_data* @GET_MII(%struct.ure_softc*) #1

declare dso_local i32 @mtx_owned(i32*) #1

declare dso_local i32 @URE_LOCK(%struct.ure_softc*) #1

declare dso_local %struct.ifnet* @uether_getifp(i32*) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @URE_UNLOCK(%struct.ure_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
