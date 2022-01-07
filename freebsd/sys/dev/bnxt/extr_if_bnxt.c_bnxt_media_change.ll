; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_media_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_media_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ifmedia = type { i32 }
%struct.ifmediareq = type { i32 }

@IFM_ETHER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@BNXT_AUTONEG_SPEED = common dso_local global i32 0, align 4
@HWRM_PORT_PHY_CFG_INPUT_FORCE_LINK_SPEED_100MB = common dso_local global i32 0, align 4
@HWRM_PORT_PHY_CFG_INPUT_FORCE_LINK_SPEED_1GB = common dso_local global i32 0, align 4
@HWRM_PORT_PHY_CFG_INPUT_FORCE_LINK_SPEED_2_5GB = common dso_local global i32 0, align 4
@HWRM_PORT_PHY_CFG_INPUT_FORCE_LINK_SPEED_10GB = common dso_local global i32 0, align 4
@HWRM_PORT_PHY_CFG_INPUT_FORCE_LINK_SPEED_20GB = common dso_local global i32 0, align 4
@HWRM_PORT_PHY_CFG_INPUT_FORCE_LINK_SPEED_25GB = common dso_local global i32 0, align 4
@HWRM_PORT_PHY_CFG_INPUT_FORCE_LINK_SPEED_40GB = common dso_local global i32 0, align 4
@HWRM_PORT_PHY_CFG_INPUT_FORCE_LINK_SPEED_50GB = common dso_local global i32 0, align 4
@HWRM_PORT_PHY_CFG_INPUT_FORCE_LINK_SPEED_100GB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unsupported media type!  Using auto\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bnxt_media_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_media_change(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt_softc*, align 8
  %5 = alloca %struct.ifmedia*, align 8
  %6 = alloca %struct.ifmediareq, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.bnxt_softc* @iflib_get_softc(i32 %8)
  store %struct.bnxt_softc* %9, %struct.bnxt_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.ifmedia* @iflib_get_media(i32 %10)
  store %struct.ifmedia* %11, %struct.ifmedia** %5, align 8
  %12 = load %struct.ifmedia*, %struct.ifmedia** %5, align 8
  %13 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @IFM_TYPE(i32 %14)
  %16 = load i64, i64* @IFM_ETHER, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %2, align 4
  br label %153

20:                                               ; preds = %1
  %21 = load %struct.ifmedia*, %struct.ifmedia** %5, align 8
  %22 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @IFM_SUBTYPE(i32 %23)
  switch i32 %24, label %133 [
    i32 146, label %25
    i32 153, label %37
    i32 151, label %37
    i32 152, label %37
    i32 139, label %49
    i32 138, label %49
    i32 145, label %61
    i32 144, label %61
    i32 143, label %61
    i32 142, label %61
    i32 141, label %61
    i32 140, label %73
    i32 137, label %85
    i32 136, label %85
    i32 135, label %85
    i32 134, label %97
    i32 133, label %97
    i32 132, label %97
    i32 131, label %97
    i32 130, label %109
    i32 129, label %109
    i32 150, label %121
    i32 149, label %121
    i32 148, label %121
    i32 147, label %121
    i32 128, label %138
  ]

25:                                               ; preds = %20
  %26 = load i32, i32* @BNXT_AUTONEG_SPEED, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %29 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %27
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* @HWRM_PORT_PHY_CFG_INPUT_FORCE_LINK_SPEED_100MB, align 4
  %34 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %35 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  br label %145

37:                                               ; preds = %20, %20, %20
  %38 = load i32, i32* @BNXT_AUTONEG_SPEED, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %41 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %39
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* @HWRM_PORT_PHY_CFG_INPUT_FORCE_LINK_SPEED_1GB, align 4
  %46 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %47 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  br label %145

49:                                               ; preds = %20, %20
  %50 = load i32, i32* @BNXT_AUTONEG_SPEED, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %53 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %51
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* @HWRM_PORT_PHY_CFG_INPUT_FORCE_LINK_SPEED_2_5GB, align 4
  %58 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %59 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  br label %145

61:                                               ; preds = %20, %20, %20, %20, %20
  %62 = load i32, i32* @BNXT_AUTONEG_SPEED, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %65 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %63
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* @HWRM_PORT_PHY_CFG_INPUT_FORCE_LINK_SPEED_10GB, align 4
  %70 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %71 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 4
  br label %145

73:                                               ; preds = %20
  %74 = load i32, i32* @BNXT_AUTONEG_SPEED, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %77 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %75
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* @HWRM_PORT_PHY_CFG_INPUT_FORCE_LINK_SPEED_20GB, align 4
  %82 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %83 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 4
  br label %145

85:                                               ; preds = %20, %20, %20
  %86 = load i32, i32* @BNXT_AUTONEG_SPEED, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %89 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, %87
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* @HWRM_PORT_PHY_CFG_INPUT_FORCE_LINK_SPEED_25GB, align 4
  %94 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %95 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  store i32 %93, i32* %96, align 4
  br label %145

97:                                               ; preds = %20, %20, %20, %20
  %98 = load i32, i32* @BNXT_AUTONEG_SPEED, align 4
  %99 = xor i32 %98, -1
  %100 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %101 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, %99
  store i32 %104, i32* %102, align 4
  %105 = load i32, i32* @HWRM_PORT_PHY_CFG_INPUT_FORCE_LINK_SPEED_40GB, align 4
  %106 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %107 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  store i32 %105, i32* %108, align 4
  br label %145

109:                                              ; preds = %20, %20
  %110 = load i32, i32* @BNXT_AUTONEG_SPEED, align 4
  %111 = xor i32 %110, -1
  %112 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %113 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, %111
  store i32 %116, i32* %114, align 4
  %117 = load i32, i32* @HWRM_PORT_PHY_CFG_INPUT_FORCE_LINK_SPEED_50GB, align 4
  %118 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %119 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 4
  br label %145

121:                                              ; preds = %20, %20, %20, %20
  %122 = load i32, i32* @BNXT_AUTONEG_SPEED, align 4
  %123 = xor i32 %122, -1
  %124 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %125 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, %123
  store i32 %128, i32* %126, align 4
  %129 = load i32, i32* @HWRM_PORT_PHY_CFG_INPUT_FORCE_LINK_SPEED_100GB, align 4
  %130 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %131 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  store i32 %129, i32* %132, align 4
  br label %145

133:                                              ; preds = %20
  %134 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %135 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @device_printf(i32 %136, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %138

138:                                              ; preds = %20, %133
  %139 = load i32, i32* @BNXT_AUTONEG_SPEED, align 4
  %140 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %141 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %139
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %138, %121, %109, %97, %85, %73, %61, %49, %37, %25
  %146 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %147 = call i32 @bnxt_hwrm_set_link_setting(%struct.bnxt_softc* %146, i32 1, i32 1, i32 1)
  store i32 %147, i32* %7, align 4
  %148 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %149 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @bnxt_media_status(i32 %150, %struct.ifmediareq* %6)
  %152 = load i32, i32* %7, align 4
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %145, %18
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local %struct.bnxt_softc* @iflib_get_softc(i32) #1

declare dso_local %struct.ifmedia* @iflib_get_media(i32) #1

declare dso_local i64 @IFM_TYPE(i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bnxt_hwrm_set_link_setting(%struct.bnxt_softc*, i32, i32, i32) #1

declare dso_local i32 @bnxt_media_status(i32, %struct.ifmediareq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
