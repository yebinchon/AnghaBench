; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-mdio.c_xgbe_phy_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-mdio.c_xgbe_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, %struct.TYPE_2__, i64, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i32, i64, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [14 x i8] c"axgbe AN lock\00", align 1
@MDIO_MMD_PCS = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_Pause = common dso_local global i32 0, align 4
@SUPPORTED_Asym_Pause = common dso_local global i32 0, align 4
@SUPPORTED_Backplane = common dso_local global i32 0, align 4
@SUPPORTED_10000baseKR_Full = common dso_local global i32 0, align 4
@SUPPORTED_1000baseKX_Full = common dso_local global i32 0, align 4
@SUPPORTED_2500baseX_Full = common dso_local global i32 0, align 4
@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@MDIO_PMA_10GBR_FECABLE = common dso_local global i32 0, align 4
@MDIO_PMA_10GBR_FECABLE_ABLE = common dso_local global i32 0, align 4
@MDIO_PMA_10GBR_FECABLE_ERRABLE = common dso_local global i32 0, align 4
@SUPPORTED_10000baseR_FEC = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@ADVERTISED_Pause = common dso_local global i32 0, align 4
@ADVERTISED_Asym_Pause = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_phy_init(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %3 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %4 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %3, i32 0, i32 7
  %5 = call i32 @sx_init(i32* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @MDIO_MMD_PCS, align 4
  %7 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %8 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %7, i32 0, i32 6
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %10 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %11 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 8
  %13 = load i32, i32* @SUPPORTED_Pause, align 4
  %14 = load i32, i32* @SUPPORTED_Asym_Pause, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %17 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %15
  store i32 %20, i32* %18, align 8
  %21 = load i32, i32* @SUPPORTED_Backplane, align 4
  %22 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %23 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %21
  store i32 %26, i32* %24, align 8
  %27 = load i32, i32* @SUPPORTED_10000baseKR_Full, align 4
  %28 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %29 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %27
  store i32 %32, i32* %30, align 8
  %33 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %34 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %50 [
    i32 129, label %36
    i32 128, label %43
  ]

36:                                               ; preds = %1
  %37 = load i32, i32* @SUPPORTED_1000baseKX_Full, align 4
  %38 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %39 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %37
  store i32 %42, i32* %40, align 8
  br label %50

43:                                               ; preds = %1
  %44 = load i32, i32* @SUPPORTED_2500baseX_Full, align 4
  %45 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %46 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %44
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %1, %43, %36
  %51 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %52 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %53 = load i32, i32* @MDIO_PMA_10GBR_FECABLE, align 4
  %54 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %51, i32 %52, i32 %53)
  %55 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %56 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @MDIO_PMA_10GBR_FECABLE_ABLE, align 4
  %58 = load i32, i32* @MDIO_PMA_10GBR_FECABLE_ERRABLE, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %61 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %65 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MDIO_PMA_10GBR_FECABLE_ABLE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %50
  %71 = load i32, i32* @SUPPORTED_10000baseR_FEC, align 4
  %72 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %73 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %71
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %70, %50
  %78 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %79 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %83 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 4
  %85 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %86 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 9
  store i64 0, i64* %87, align 8
  %88 = load i32, i32* @AUTONEG_ENABLE, align 4
  %89 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %90 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 8
  store i32 %88, i32* %91, align 8
  %92 = load i32, i32* @SPEED_UNKNOWN, align 4
  %93 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %94 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 7
  store i32 %92, i32* %95, align 4
  %96 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  %97 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %98 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 6
  store i32 %96, i32* %99, align 8
  %100 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %101 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 5
  store i64 0, i64* %102, align 8
  %103 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %104 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %107 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 4
  store i32 %105, i32* %108, align 8
  %109 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %110 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %113 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 3
  store i64 %111, i64* %114, align 8
  %115 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %116 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %119 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 2
  store i64 %117, i64* %120, align 8
  %121 = load i32, i32* @ADVERTISED_Pause, align 4
  %122 = xor i32 %121, -1
  %123 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %124 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, %122
  store i32 %127, i32* %125, align 4
  %128 = load i32, i32* @ADVERTISED_Asym_Pause, align 4
  %129 = xor i32 %128, -1
  %130 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %131 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, %129
  store i32 %134, i32* %132, align 4
  %135 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %136 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %152

139:                                              ; preds = %77
  %140 = load i32, i32* @ADVERTISED_Pause, align 4
  %141 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %142 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %140
  store i32 %145, i32* %143, align 4
  %146 = load i32, i32* @ADVERTISED_Asym_Pause, align 4
  %147 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %148 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %146
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %139, %77
  %153 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %154 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %152
  %158 = load i32, i32* @ADVERTISED_Asym_Pause, align 4
  %159 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %160 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = xor i32 %162, %158
  store i32 %163, i32* %161, align 4
  br label %164

164:                                              ; preds = %157, %152
  ret void
}

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @XMDIO_READ(%struct.xgbe_prv_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
