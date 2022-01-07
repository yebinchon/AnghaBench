; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwiphy.c_bwi_phy_init_11b_rev5.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwiphy.c_bwi_phy_init_11b_rev5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.bwi_phy, %struct.bwi_rf, %struct.bwi_softc* }
%struct.bwi_phy = type { i32, i32, i32 }
%struct.bwi_rf = type { i64, i32 }
%struct.bwi_softc = type { i64, i64 }

@PCI_VENDOR_BROADCOM = common dso_local global i64 0, align 8
@BWI_PCI_SUBDEVICE_BU4306 = common dso_local global i64 0, align 8
@BWI_RF_T_BCM2050 = common dso_local global i64 0, align 8
@BWI_PHY_F_LINKED = common dso_local global i32 0, align 4
@BWI_RF_ANTDIV = common dso_local global i32 0, align 4
@BWI_BPHY_CTRL = common dso_local global i32 0, align 4
@BWI_BPHY_CTRL_INIT = common dso_local global i32 0, align 4
@BWI_PHY_MAGIC_REG1 = common dso_local global i32 0, align 4
@BWI_PHY_MAGIC_REG1_VAL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_mac*)* @bwi_phy_init_11b_rev5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_phy_init_11b_rev5(%struct.bwi_mac* %0) #0 {
  %2 = alloca %struct.bwi_mac*, align 8
  %3 = alloca %struct.bwi_softc*, align 8
  %4 = alloca %struct.bwi_rf*, align 8
  %5 = alloca %struct.bwi_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %2, align 8
  %9 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %10 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %9, i32 0, i32 2
  %11 = load %struct.bwi_softc*, %struct.bwi_softc** %10, align 8
  store %struct.bwi_softc* %11, %struct.bwi_softc** %3, align 8
  %12 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %13 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %12, i32 0, i32 1
  store %struct.bwi_rf* %13, %struct.bwi_rf** %4, align 8
  %14 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %15 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %14, i32 0, i32 0
  store %struct.bwi_phy* %15, %struct.bwi_phy** %5, align 8
  %16 = load %struct.bwi_phy*, %struct.bwi_phy** %5, align 8
  %17 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %22 = call i32 @RF_SETBITS(%struct.bwi_mac* %21, i32 122, i32 80)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %25 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PCI_VENDOR_BROADCOM, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %23
  %30 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %31 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @BWI_PCI_SUBDEVICE_BU4306, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %29
  store i32 8480, i32* %8, align 4
  store i32 168, i32* %7, align 4
  br label %36

36:                                               ; preds = %46, %35
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 199
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @PHY_WRITE(%struct.bwi_mac* %40, i32 %41, i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 514
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %36

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49, %29, %23
  %51 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %52 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %51, i32 53, i32 61695, i32 1792)
  %53 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %54 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @BWI_RF_T_BCM2050, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %60 = call i32 @PHY_WRITE(%struct.bwi_mac* %59, i32 56, i32 1639)
  br label %61

61:                                               ; preds = %58, %50
  %62 = load %struct.bwi_phy*, %struct.bwi_phy** %5, align 8
  %63 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @BWI_PHY_F_LINKED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %61
  %69 = load %struct.bwi_phy*, %struct.bwi_phy** %5, align 8
  %70 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp sge i32 %71, 2
  br i1 %72, label %73, label %100

73:                                               ; preds = %68, %61
  %74 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %75 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @BWI_RF_T_BCM2050, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %81 = call i32 @RF_SETBITS(%struct.bwi_mac* %80, i32 122, i32 32)
  %82 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %83 = call i32 @RF_SETBITS(%struct.bwi_mac* %82, i32 81, i32 4)
  br label %84

84:                                               ; preds = %79, %73
  %85 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %86 = load i32, i32* @BWI_RF_ANTDIV, align 4
  %87 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %85, i32 %86, i32 0)
  %88 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %89 = call i32 @PHY_SETBITS(%struct.bwi_mac* %88, i32 2050, i32 256)
  %90 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %91 = call i32 @PHY_SETBITS(%struct.bwi_mac* %90, i32 1067, i32 8192)
  %92 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %93 = call i32 @PHY_WRITE(%struct.bwi_mac* %92, i32 28, i32 6250)
  %94 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %95 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %94, i32 19, i32 255, i32 6400)
  %96 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %97 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %96, i32 53, i32 65472, i32 100)
  %98 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %99 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %98, i32 93, i32 65408, i32 10)
  br label %100

100:                                              ; preds = %84, %68
  %101 = load %struct.bwi_phy*, %struct.bwi_phy** %5, align 8
  %102 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %116

105:                                              ; preds = %100
  %106 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %107 = call i32 @PHY_WRITE(%struct.bwi_mac* %106, i32 38, i32 52736)
  %108 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %109 = call i32 @PHY_WRITE(%struct.bwi_mac* %108, i32 33, i32 14179)
  %110 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %111 = call i32 @PHY_WRITE(%struct.bwi_mac* %110, i32 34, i32 7107)
  %112 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %113 = call i32 @PHY_WRITE(%struct.bwi_mac* %112, i32 35, i32 1785)
  %114 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %115 = call i32 @PHY_WRITE(%struct.bwi_mac* %114, i32 36, i32 894)
  br label %119

116:                                              ; preds = %100
  %117 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %118 = call i32 @PHY_WRITE(%struct.bwi_mac* %117, i32 38, i32 52224)
  br label %119

119:                                              ; preds = %116, %105
  %120 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %121 = call i32 @PHY_WRITE(%struct.bwi_mac* %120, i32 48, i32 198)
  %122 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %123 = load i32, i32* @BWI_BPHY_CTRL, align 4
  %124 = load i32, i32* @BWI_BPHY_CTRL_INIT, align 4
  %125 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %122, i32 %123, i32 %124)
  %126 = load %struct.bwi_phy*, %struct.bwi_phy** %5, align 8
  %127 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %130, label %133

130:                                              ; preds = %119
  %131 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %132 = call i32 @PHY_WRITE(%struct.bwi_mac* %131, i32 32, i32 15900)
  br label %136

133:                                              ; preds = %119
  %134 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %135 = call i32 @PHY_WRITE(%struct.bwi_mac* %134, i32 32, i32 12316)
  br label %136

136:                                              ; preds = %133, %130
  %137 = load %struct.bwi_phy*, %struct.bwi_phy** %5, align 8
  %138 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %143 = load i32, i32* @BWI_PHY_MAGIC_REG1, align 4
  %144 = load i32, i32* @BWI_PHY_MAGIC_REG1_VAL1, align 4
  %145 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %142, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %141, %136
  %147 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %148 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  store i32 %149, i32* %6, align 4
  %150 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %151 = call i32 @bwi_rf_set_chan(%struct.bwi_mac* %150, i32 7, i32 0)
  %152 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %153 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @BWI_RF_T_BCM2050, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %146
  %158 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %159 = call i32 @RF_WRITE(%struct.bwi_mac* %158, i32 117, i32 128)
  %160 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %161 = call i32 @RF_WRITE(%struct.bwi_mac* %160, i32 121, i32 129)
  br label %162

162:                                              ; preds = %157, %146
  %163 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %164 = call i32 @RF_WRITE(%struct.bwi_mac* %163, i32 80, i32 32)
  %165 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %166 = call i32 @RF_WRITE(%struct.bwi_mac* %165, i32 80, i32 35)
  %167 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %168 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @BWI_RF_T_BCM2050, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %162
  %173 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %174 = call i32 @RF_WRITE(%struct.bwi_mac* %173, i32 80, i32 32)
  %175 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %176 = call i32 @RF_WRITE(%struct.bwi_mac* %175, i32 90, i32 112)
  br label %177

177:                                              ; preds = %172, %162
  %178 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %179 = call i32 @RF_WRITE(%struct.bwi_mac* %178, i32 91, i32 123)
  %180 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %181 = call i32 @RF_WRITE(%struct.bwi_mac* %180, i32 92, i32 176)
  %182 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %183 = call i32 @RF_SETBITS(%struct.bwi_mac* %182, i32 122, i32 7)
  %184 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %185 = load i32, i32* %6, align 4
  %186 = call i32 @bwi_rf_set_chan(%struct.bwi_mac* %184, i32 %185, i32 0)
  %187 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %188 = call i32 @PHY_WRITE(%struct.bwi_mac* %187, i32 20, i32 128)
  %189 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %190 = call i32 @PHY_WRITE(%struct.bwi_mac* %189, i32 50, i32 202)
  %191 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %192 = call i32 @PHY_WRITE(%struct.bwi_mac* %191, i32 42, i32 34979)
  %193 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %194 = call i32 @bwi_mac_set_tpctl_11bg(%struct.bwi_mac* %193, i32* null)
  %195 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %196 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @BWI_RF_T_BCM2050, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %177
  %201 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %202 = call i32 @RF_WRITE(%struct.bwi_mac* %201, i32 93, i32 13)
  br label %203

203:                                              ; preds = %200, %177
  %204 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %205 = load i32, i32* @BWI_PHY_MAGIC_REG1, align 4
  %206 = call i32 @CSR_FILT_SETBITS_2(%struct.bwi_softc* %204, i32 %205, i32 65472, i32 4)
  ret void
}

declare dso_local i32 @RF_SETBITS(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @PHY_WRITE(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @PHY_FILT_SETBITS(%struct.bwi_mac*, i32, i32, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @PHY_SETBITS(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @bwi_rf_set_chan(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @RF_WRITE(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @bwi_mac_set_tpctl_11bg(%struct.bwi_mac*, i32*) #1

declare dso_local i32 @CSR_FILT_SETBITS_2(%struct.bwi_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
