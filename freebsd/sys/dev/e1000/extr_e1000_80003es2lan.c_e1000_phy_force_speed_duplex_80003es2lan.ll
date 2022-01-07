; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_80003es2lan.c_e1000_phy_force_speed_duplex_80003es2lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_80003es2lan.c_e1000_phy_force_speed_duplex_80003es2lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"e1000_phy_force_speed_duplex_80003es2lan\00", align 1
@E1000_SUCCESS = common dso_local global i64 0, align 8
@M88E1000_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@GG82563_PSCR_CROSSOVER_MODE_AUTO = common dso_local global i32 0, align 4
@GG82563_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"GG82563 PSCR: %X\0A\00", align 1
@PHY_CONTROL = common dso_local global i32 0, align 4
@MII_CR_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"Waiting for forced speed/duplex link on GG82563 phy.\0A\00", align 1
@PHY_FORCE_LIMIT = common dso_local global i32 0, align 4
@GG82563_PHY_MAC_SPEC_CTRL = common dso_local global i32 0, align 4
@GG82563_MSCR_TX_CLK_MASK = common dso_local global i32 0, align 4
@E1000_ALL_10_SPEED = common dso_local global i32 0, align 4
@GG82563_MSCR_TX_CLK_10MBPS_2_5 = common dso_local global i32 0, align 4
@GG82563_MSCR_TX_CLK_100MBPS_25 = common dso_local global i32 0, align 4
@GG82563_MSCR_ASSERT_CRS_ON_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_phy_force_speed_duplex_80003es2lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_phy_force_speed_duplex_80003es2lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %11, align 8
  %13 = icmp ne i64 (%struct.e1000_hw.1*, i32, i32*)* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %15, i64* %2, align 8
  br label %170

16:                                               ; preds = %1
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %18 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %20, align 8
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %23 = bitcast %struct.e1000_hw* %22 to %struct.e1000_hw.1*
  %24 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %25 = call i64 %21(%struct.e1000_hw.1* %23, i32 %24, i32* %5)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = load i64, i64* %4, align 8
  store i64 %29, i64* %2, align 8
  br label %170

30:                                               ; preds = %16
  %31 = load i32, i32* @GG82563_PSCR_CROSSOVER_MODE_AUTO, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %36 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %38, align 8
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %41 = bitcast %struct.e1000_hw* %40 to %struct.e1000_hw.0*
  %42 = load i32, i32* @GG82563_PHY_SPEC_CTRL, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i64 %39(%struct.e1000_hw.0* %41, i32 %42, i32 %43)
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* %4, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %30
  %48 = load i64, i64* %4, align 8
  store i64 %48, i64* %2, align 8
  br label %170

49:                                               ; preds = %30
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %53 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %55, align 8
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %58 = bitcast %struct.e1000_hw* %57 to %struct.e1000_hw.1*
  %59 = load i32, i32* @PHY_CONTROL, align 4
  %60 = call i64 %56(%struct.e1000_hw.1* %58, i32 %59, i32* %5)
  store i64 %60, i64* %4, align 8
  %61 = load i64, i64* %4, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %49
  %64 = load i64, i64* %4, align 8
  store i64 %64, i64* %2, align 8
  br label %170

65:                                               ; preds = %49
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %67 = call i32 @e1000_phy_force_speed_duplex_setup(%struct.e1000_hw* %66, i32* %5)
  %68 = load i32, i32* @MII_CR_RESET, align 4
  %69 = load i32, i32* %5, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %5, align 4
  %71 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %72 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %74, align 8
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %77 = bitcast %struct.e1000_hw* %76 to %struct.e1000_hw.0*
  %78 = load i32, i32* @PHY_CONTROL, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i64 %75(%struct.e1000_hw.0* %77, i32 %78, i32 %79)
  store i64 %80, i64* %4, align 8
  %81 = load i64, i64* %4, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %65
  %84 = load i64, i64* %4, align 8
  store i64 %84, i64* %2, align 8
  br label %170

85:                                               ; preds = %65
  %86 = call i32 @usec_delay(i32 1)
  %87 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %88 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %121

92:                                               ; preds = %85
  %93 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %94 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %95 = load i32, i32* @PHY_FORCE_LIMIT, align 4
  %96 = call i64 @e1000_phy_has_link_generic(%struct.e1000_hw* %94, i32 %95, i32 100000, i32* %6)
  store i64 %96, i64* %4, align 8
  %97 = load i64, i64* %4, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = load i64, i64* %4, align 8
  store i64 %100, i64* %2, align 8
  br label %170

101:                                              ; preds = %92
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %101
  %105 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %106 = call i64 @e1000_phy_reset_dsp_generic(%struct.e1000_hw* %105)
  store i64 %106, i64* %4, align 8
  %107 = load i64, i64* %4, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i64, i64* %4, align 8
  store i64 %110, i64* %2, align 8
  br label %170

111:                                              ; preds = %104
  br label %112

112:                                              ; preds = %111, %101
  %113 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %114 = load i32, i32* @PHY_FORCE_LIMIT, align 4
  %115 = call i64 @e1000_phy_has_link_generic(%struct.e1000_hw* %113, i32 %114, i32 100000, i32* %6)
  store i64 %115, i64* %4, align 8
  %116 = load i64, i64* %4, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = load i64, i64* %4, align 8
  store i64 %119, i64* %2, align 8
  br label %170

120:                                              ; preds = %112
  br label %121

121:                                              ; preds = %120, %85
  %122 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %123 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  %126 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %125, align 8
  %127 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %128 = bitcast %struct.e1000_hw* %127 to %struct.e1000_hw.1*
  %129 = load i32, i32* @GG82563_PHY_MAC_SPEC_CTRL, align 4
  %130 = call i64 %126(%struct.e1000_hw.1* %128, i32 %129, i32* %5)
  store i64 %130, i64* %4, align 8
  %131 = load i64, i64* %4, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %121
  %134 = load i64, i64* %4, align 8
  store i64 %134, i64* %2, align 8
  br label %170

135:                                              ; preds = %121
  %136 = load i32, i32* @GG82563_MSCR_TX_CLK_MASK, align 4
  %137 = xor i32 %136, -1
  %138 = load i32, i32* %5, align 4
  %139 = and i32 %138, %137
  store i32 %139, i32* %5, align 4
  %140 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %141 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @E1000_ALL_10_SPEED, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %135
  %148 = load i32, i32* @GG82563_MSCR_TX_CLK_10MBPS_2_5, align 4
  %149 = load i32, i32* %5, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %5, align 4
  br label %155

151:                                              ; preds = %135
  %152 = load i32, i32* @GG82563_MSCR_TX_CLK_100MBPS_25, align 4
  %153 = load i32, i32* %5, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %5, align 4
  br label %155

155:                                              ; preds = %151, %147
  %156 = load i32, i32* @GG82563_MSCR_ASSERT_CRS_ON_TX, align 4
  %157 = load i32, i32* %5, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %5, align 4
  %159 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %160 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %162, align 8
  %164 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %165 = bitcast %struct.e1000_hw* %164 to %struct.e1000_hw.0*
  %166 = load i32, i32* @GG82563_PHY_MAC_SPEC_CTRL, align 4
  %167 = load i32, i32* %5, align 4
  %168 = call i64 %163(%struct.e1000_hw.0* %165, i32 %166, i32 %167)
  store i64 %168, i64* %4, align 8
  %169 = load i64, i64* %4, align 8
  store i64 %169, i64* %2, align 8
  br label %170

170:                                              ; preds = %155, %133, %118, %109, %99, %83, %63, %47, %28, %14
  %171 = load i64, i64* %2, align 8
  ret i64 %171
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT1(i8*, i32) #1

declare dso_local i32 @e1000_phy_force_speed_duplex_setup(%struct.e1000_hw*, i32*) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i64 @e1000_phy_has_link_generic(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i64 @e1000_phy_reset_dsp_generic(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
