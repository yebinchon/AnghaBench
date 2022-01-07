; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_radio_init2055_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_radio_init2055_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_softc*, %struct.TYPE_3__ }
%struct.bwn_softc = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i64, i32, i32 }
%struct.TYPE_3__ = type { %struct.bwn_phy_n* }
%struct.bwn_phy_n = type { i32 }

@PCI_VENDOR_BROADCOM = common dso_local global i64 0, align 8
@BHND_BOARD_BCM4321CB2 = common dso_local global i64 0, align 8
@BHND_BFL2_RXBB_INT_REG_DIS = common dso_local global i32 0, align 4
@B2055_MASTER1 = common dso_local global i32 0, align 4
@B2055_C1_RX_BB_REG = common dso_local global i32 0, align 4
@B2055_C2_RX_BB_REG = common dso_local global i32 0, align 4
@B2055_RRCCAL_NOPTSEL = common dso_local global i32 0, align 4
@B2055_CAL_MISC = common dso_local global i32 0, align 4
@B2055_CAL_LPOCTL = common dso_local global i32 0, align 4
@B2055_CAL_COUT2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"radio post init timeout\0A\00", align 1
@B2055_C1_RX_BB_LPF = common dso_local global i32 0, align 4
@B2055_C2_RX_BB_LPF = common dso_local global i32 0, align 4
@B2055_C1_RX_BB_MIDACHP = common dso_local global i32 0, align 4
@B2055_C2_RX_BB_MIDACHP = common dso_local global i32 0, align 4
@B2055_C1_LNA_GAINBST = common dso_local global i32 0, align 4
@B2055_C2_LNA_GAINBST = common dso_local global i32 0, align 4
@B2055_C1_RX_RFSPC1 = common dso_local global i32 0, align 4
@B2055_C2_RX_RFSPC1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_radio_init2055_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_radio_init2055_post(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_softc*, align 8
  %4 = alloca %struct.bwn_phy_n*, align 8
  %5 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %6 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %7 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %6, i32 0, i32 0
  %8 = load %struct.bwn_softc*, %struct.bwn_softc** %7, align 8
  store %struct.bwn_softc* %8, %struct.bwn_softc** %3, align 8
  %9 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %10 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %11, align 8
  store %struct.bwn_phy_n* %12, %struct.bwn_phy_n** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %14 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @bhnd_get_hwrev(i32 %15)
  %17 = icmp slt i32 %16, 4
  br i1 %17, label %18, label %41

18:                                               ; preds = %1
  %19 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %20 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PCI_VENDOR_BROADCOM, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %18
  %26 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %27 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @BHND_BOARD_BCM4321CB2, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %34 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp sge i32 %36, 65
  br label %38

38:                                               ; preds = %32, %25, %18
  %39 = phi i1 [ false, %25 ], [ false, %18 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %5, align 4
  br label %51

41:                                               ; preds = %1
  %42 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %43 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @BHND_BFL2_RXBB_INT_REG_DIS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %41, %38
  %52 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %53 = load i32, i32* @B2055_MASTER1, align 4
  %54 = call i32 @BWN_RF_MASK(%struct.bwn_mac* %52, i32 %53, i32 65523)
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %59 = load i32, i32* @B2055_C1_RX_BB_REG, align 4
  %60 = call i32 @BWN_RF_MASK(%struct.bwn_mac* %58, i32 %59, i32 127)
  %61 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %62 = load i32, i32* @B2055_C2_RX_BB_REG, align 4
  %63 = call i32 @BWN_RF_MASK(%struct.bwn_mac* %61, i32 %62, i32 127)
  br label %64

64:                                               ; preds = %57, %51
  %65 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %66 = load i32, i32* @B2055_RRCCAL_NOPTSEL, align 4
  %67 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %65, i32 %66, i32 65472, i32 44)
  %68 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %69 = load i32, i32* @B2055_CAL_MISC, align 4
  %70 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %68, i32 %69, i32 60)
  %71 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %72 = load i32, i32* @B2055_CAL_MISC, align 4
  %73 = call i32 @BWN_RF_MASK(%struct.bwn_mac* %71, i32 %72, i32 65470)
  %74 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %75 = load i32, i32* @B2055_CAL_LPOCTL, align 4
  %76 = call i32 @BWN_RF_SET(%struct.bwn_mac* %74, i32 %75, i32 128)
  %77 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %78 = load i32, i32* @B2055_CAL_MISC, align 4
  %79 = call i32 @BWN_RF_SET(%struct.bwn_mac* %77, i32 %78, i32 1)
  %80 = call i32 @DELAY(i32 1000)
  %81 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %82 = load i32, i32* @B2055_CAL_MISC, align 4
  %83 = call i32 @BWN_RF_SET(%struct.bwn_mac* %81, i32 %82, i32 64)
  %84 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %85 = load i32, i32* @B2055_CAL_COUT2, align 4
  %86 = call i32 @bwn_radio_wait_value(%struct.bwn_mac* %84, i32 %85, i32 128, i32 128, i32 10, i32 2000)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %64
  %89 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %90 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %89, i32 0, i32 0
  %91 = load %struct.bwn_softc*, %struct.bwn_softc** %90, align 8
  %92 = call i32 @BWN_ERRPRINTF(%struct.bwn_softc* %91, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %93

93:                                               ; preds = %88, %64
  %94 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %95 = load i32, i32* @B2055_CAL_LPOCTL, align 4
  %96 = call i32 @BWN_RF_MASK(%struct.bwn_mac* %94, i32 %95, i32 65407)
  %97 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %98 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %99 = call i32 @bwn_get_chan(%struct.bwn_mac* %98)
  %100 = call i32 @bwn_switch_channel(%struct.bwn_mac* %97, i32 %99)
  %101 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %102 = load i32, i32* @B2055_C1_RX_BB_LPF, align 4
  %103 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %101, i32 %102, i32 9)
  %104 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %105 = load i32, i32* @B2055_C2_RX_BB_LPF, align 4
  %106 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %104, i32 %105, i32 9)
  %107 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %108 = load i32, i32* @B2055_C1_RX_BB_MIDACHP, align 4
  %109 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %107, i32 %108, i32 131)
  %110 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %111 = load i32, i32* @B2055_C2_RX_BB_MIDACHP, align 4
  %112 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %110, i32 %111, i32 131)
  %113 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %114 = load i32, i32* @B2055_C1_LNA_GAINBST, align 4
  %115 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %113, i32 %114, i32 65528, i32 6)
  %116 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %117 = load i32, i32* @B2055_C2_LNA_GAINBST, align 4
  %118 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %116, i32 %117, i32 65528, i32 6)
  %119 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %120 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %93
  %124 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %125 = load i32, i32* @B2055_C1_RX_RFSPC1, align 4
  %126 = call i32 @BWN_RF_SET(%struct.bwn_mac* %124, i32 %125, i32 2)
  %127 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %128 = load i32, i32* @B2055_C2_RX_RFSPC1, align 4
  %129 = call i32 @BWN_RF_SET(%struct.bwn_mac* %127, i32 %128, i32 2)
  br label %137

130:                                              ; preds = %93
  %131 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %132 = load i32, i32* @B2055_C1_RX_RFSPC1, align 4
  %133 = call i32 @BWN_RF_MASK(%struct.bwn_mac* %131, i32 %132, i32 65533)
  %134 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %135 = load i32, i32* @B2055_C2_RX_RFSPC1, align 4
  %136 = call i32 @BWN_RF_MASK(%struct.bwn_mac* %134, i32 %135, i32 65533)
  br label %137

137:                                              ; preds = %130, %123
  %138 = call i32 @DELAY(i32 2)
  ret void
}

declare dso_local i32 @bhnd_get_hwrev(i32) #1

declare dso_local i32 @BWN_RF_MASK(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_RF_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @BWN_RF_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_RF_SET(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @bwn_radio_wait_value(%struct.bwn_mac*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BWN_ERRPRINTF(%struct.bwn_softc*, i8*) #1

declare dso_local i32 @bwn_switch_channel(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_get_chan(%struct.bwn_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
