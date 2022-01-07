; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_ifmedia_upd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_ifmedia_upd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, %struct.xl_softc* }
%struct.xl_softc = type { i32, %struct.ifmedia, i32* }
%struct.ifmedia = type { i32 }
%struct.mii_data = type { %struct.ifmedia }

@XL_MEDIAOPT_MII = common dso_local global i32 0, align 4
@XL_MEDIAOPT_BTX = common dso_local global i32 0, align 4
@XL_MEDIAOPT_BT4 = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @xl_ifmedia_upd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xl_ifmedia_upd(%struct.ifnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.xl_softc*, align 8
  %5 = alloca %struct.ifmedia*, align 8
  %6 = alloca %struct.mii_data*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 1
  %9 = load %struct.xl_softc*, %struct.xl_softc** %8, align 8
  store %struct.xl_softc* %9, %struct.xl_softc** %4, align 8
  store %struct.ifmedia* null, %struct.ifmedia** %5, align 8
  store %struct.mii_data* null, %struct.mii_data** %6, align 8
  %10 = load %struct.xl_softc*, %struct.xl_softc** %4, align 8
  %11 = call i32 @XL_LOCK(%struct.xl_softc* %10)
  %12 = load %struct.xl_softc*, %struct.xl_softc** %4, align 8
  %13 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.xl_softc*, %struct.xl_softc** %4, align 8
  %18 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = call %struct.mii_data* @device_get_softc(i32* %19)
  store %struct.mii_data* %20, %struct.mii_data** %6, align 8
  br label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %23 = icmp eq %struct.mii_data* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.xl_softc*, %struct.xl_softc** %4, align 8
  %26 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %25, i32 0, i32 1
  store %struct.ifmedia* %26, %struct.ifmedia** %5, align 8
  br label %30

27:                                               ; preds = %21
  %28 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %29 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %28, i32 0, i32 0
  store %struct.ifmedia* %29, %struct.ifmedia** %5, align 8
  br label %30

30:                                               ; preds = %27, %24
  %31 = load %struct.ifmedia*, %struct.ifmedia** %5, align 8
  %32 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @IFM_SUBTYPE(i32 %33)
  switch i32 %34, label %43 [
    i32 131, label %35
    i32 128, label %35
    i32 130, label %35
    i32 129, label %35
  ]

35:                                               ; preds = %30, %30, %30, %30
  %36 = load %struct.xl_softc*, %struct.xl_softc** %4, align 8
  %37 = load %struct.ifmedia*, %struct.ifmedia** %5, align 8
  %38 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @xl_setmode(%struct.xl_softc* %36, i32 %39)
  %41 = load %struct.xl_softc*, %struct.xl_softc** %4, align 8
  %42 = call i32 @XL_UNLOCK(%struct.xl_softc* %41)
  store i32 0, i32* %2, align 4
  br label %82

43:                                               ; preds = %30
  %44 = load %struct.xl_softc*, %struct.xl_softc** %4, align 8
  %45 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @XL_MEDIAOPT_MII, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %64, label %50

50:                                               ; preds = %43
  %51 = load %struct.xl_softc*, %struct.xl_softc** %4, align 8
  %52 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @XL_MEDIAOPT_BTX, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %50
  %58 = load %struct.xl_softc*, %struct.xl_softc** %4, align 8
  %59 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @XL_MEDIAOPT_BT4, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %57, %50, %43
  %65 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %68 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load %struct.xl_softc*, %struct.xl_softc** %4, align 8
  %72 = call i32 @xl_init_locked(%struct.xl_softc* %71)
  br label %79

73:                                               ; preds = %57
  %74 = load %struct.xl_softc*, %struct.xl_softc** %4, align 8
  %75 = load %struct.ifmedia*, %struct.ifmedia** %5, align 8
  %76 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @xl_setmode(%struct.xl_softc* %74, i32 %77)
  br label %79

79:                                               ; preds = %73, %64
  %80 = load %struct.xl_softc*, %struct.xl_softc** %4, align 8
  %81 = call i32 @XL_UNLOCK(%struct.xl_softc* %80)
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %79, %35
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @XL_LOCK(%struct.xl_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32*) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @xl_setmode(%struct.xl_softc*, i32) #1

declare dso_local i32 @XL_UNLOCK(%struct.xl_softc*) #1

declare dso_local i32 @xl_init_locked(%struct.xl_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
