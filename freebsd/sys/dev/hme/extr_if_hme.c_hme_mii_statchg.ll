; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_mii_statchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_mii_statchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hme_softc = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_NONE = common dso_local global i64 0, align 8
@HME_LINK = common dso_local global i32 0, align 4
@HME_MACI_TXCFG = common dso_local global i32 0, align 4
@HME_MAC_TXCFG_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cannot disable TX MAC\0A\00", align 1
@HME_MACI_RXCFG = common dso_local global i32 0, align 4
@HME_MAC_RXCFG_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"cannot disable RX MAC\0A\00", align 1
@IFM_FDX = common dso_local global i32 0, align 4
@HME_MAC_TXCFG_FULLDPLX = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"cannot enable TX MAC\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"cannot enable RX MAC\0A\00", align 1
@IFF_DEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hme_mii_statchg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hme_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.hme_softc* @device_get_softc(i32 %6)
  store %struct.hme_softc* %7, %struct.hme_softc** %3, align 8
  %8 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %9 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %8, i32 0, i32 3
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IFM_ACTIVE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %1
  %17 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %18 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %17, i32 0, i32 3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @IFM_SUBTYPE(i32 %21)
  %23 = load i64, i64* @IFM_NONE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %16
  %26 = load i32, i32* @HME_LINK, align 4
  %27 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %28 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  br label %38

31:                                               ; preds = %16, %1
  %32 = load i32, i32* @HME_LINK, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %35 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %31, %25
  %39 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %40 = load i32, i32* @HME_MACI_TXCFG, align 4
  %41 = call i32 @HME_MAC_READ_4(%struct.hme_softc* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %43 = load i32, i32* @HME_MACI_TXCFG, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @HME_MAC_TXCFG_ENABLE, align 4
  %46 = call i32 @hme_mac_bitflip(%struct.hme_softc* %42, i32 %43, i32 %44, i32 %45, i32 0)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %38
  %49 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %50 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %48, %38
  %54 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %55 = load i32, i32* @HME_MACI_RXCFG, align 4
  %56 = call i32 @HME_MAC_READ_4(%struct.hme_softc* %54, i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %58 = load i32, i32* @HME_MACI_RXCFG, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @HME_MAC_RXCFG_ENABLE, align 4
  %61 = call i32 @hme_mac_bitflip(%struct.hme_softc* %57, i32 %58, i32 %59, i32 %60, i32 0)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %53
  %64 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %65 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @device_printf(i32 %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %63, %53
  %69 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %70 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %69, i32 0, i32 3
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @IFM_OPTIONS(i32 %73)
  %75 = load i32, i32* @IFM_FDX, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %68
  %79 = load i32, i32* @HME_MAC_TXCFG_FULLDPLX, align 4
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  br label %87

82:                                               ; preds = %68
  %83 = load i32, i32* @HME_MAC_TXCFG_FULLDPLX, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %5, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %82, %78
  %88 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %89 = load i32, i32* @HME_MACI_TXCFG, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @HME_MAC_WRITE_4(%struct.hme_softc* %88, i32 %89, i32 %90)
  %92 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %93 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %92, i32 0, i32 2
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %132

100:                                              ; preds = %87
  %101 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %102 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @HME_LINK, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %132

107:                                              ; preds = %100
  %108 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %109 = load i32, i32* @HME_MACI_TXCFG, align 4
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @HME_MAC_TXCFG_ENABLE, align 4
  %112 = call i32 @hme_mac_bitflip(%struct.hme_softc* %108, i32 %109, i32 %110, i32 0, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %107
  %115 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %116 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @device_printf(i32 %117, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %119

119:                                              ; preds = %114, %107
  %120 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %121 = load i32, i32* @HME_MACI_RXCFG, align 4
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* @HME_MAC_RXCFG_ENABLE, align 4
  %124 = call i32 @hme_mac_bitflip(%struct.hme_softc* %120, i32 %121, i32 %122, i32 0, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %119
  %127 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %128 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @device_printf(i32 %129, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %131

131:                                              ; preds = %126, %119
  br label %132

132:                                              ; preds = %131, %100, %87
  ret void
}

declare dso_local %struct.hme_softc* @device_get_softc(i32) #1

declare dso_local i64 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @HME_MAC_READ_4(%struct.hme_softc*, i32) #1

declare dso_local i32 @hme_mac_bitflip(%struct.hme_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @IFM_OPTIONS(i32) #1

declare dso_local i32 @HME_MAC_WRITE_4(%struct.hme_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
