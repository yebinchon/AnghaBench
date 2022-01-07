; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_get_media.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_get_media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bce_softc = type { i32, i32, i32, i32 }

@BCE_VERBOSE_PHY = common dso_local global i32 0, align 4
@BCE_CHIP_NUM_5709 = common dso_local global i64 0, align 8
@BCE_MISC_DUAL_MEDIA_CTRL = common dso_local global i32 0, align 4
@BCE_MISC_DUAL_MEDIA_CTRL_BOND_ID = common dso_local global i64 0, align 8
@BCE_MISC_DUAL_MEDIA_CTRL_BOND_ID_C = common dso_local global i64 0, align 8
@BCE_INFO_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"5709 bonded for copper.\0A\00", align 1
@BCE_MISC_DUAL_MEDIA_CTRL_BOND_ID_S = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"5709 bonded for dual media.\0A\00", align 1
@BCE_PHY_SERDES_FLAG = common dso_local global i32 0, align 4
@BCE_MISC_DUAL_MEDIA_CTRL_STRAP_OVERRIDE = common dso_local global i64 0, align 8
@BCE_MISC_DUAL_MEDIA_CTRL_PHY_CTRL = common dso_local global i64 0, align 8
@BCE_MISC_DUAL_MEDIA_CTRL_PHY_CTRL_STRAP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"BCM5709 s/w configured for SerDes.\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"BCM5709 s/w configured for Copper.\0A\00", align 1
@BCE_CHIP_BOND_ID_SERDES_BIT = common dso_local global i32 0, align 4
@BCE_NO_WOL_FLAG = common dso_local global i32 0, align 4
@BCE_PHY_IEEE_CLAUSE_45_FLAG = common dso_local global i32 0, align 4
@BCE_CHIP_NUM_5706 = common dso_local global i64 0, align 8
@BCE_SHARED_HW_CFG_CONFIG = common dso_local global i32 0, align 4
@BCE_SHARED_HW_CFG_PHY_2_5G = common dso_local global i64 0, align 8
@BCE_PHY_2_5G_CAPABLE_FLAG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Found 2.5Gb capable adapter\0A\00", align 1
@BCE_CHIP_NUM_5708 = common dso_local global i64 0, align 8
@BCE_PHY_CRC_FIX_FLAG = common dso_local global i32 0, align 4
@BCE_INFO_PHY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"Using PHY address %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bce_softc*)* @bce_get_media to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bce_get_media(%struct.bce_softc* %0) #0 {
  %2 = alloca %struct.bce_softc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.bce_softc* %0, %struct.bce_softc** %2, align 8
  %7 = load i32, i32* @BCE_VERBOSE_PHY, align 4
  %8 = call i32 @DBENTER(i32 %7)
  %9 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %10 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %12 = call i64 @BCE_CHIP_NUM(%struct.bce_softc* %11)
  %13 = load i64, i64* @BCE_CHIP_NUM_5709, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %97

15:                                               ; preds = %1
  %16 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %17 = load i32, i32* @BCE_MISC_DUAL_MEDIA_CTRL, align 4
  %18 = call i64 @REG_RD(%struct.bce_softc* %16, i32 %17)
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @BCE_MISC_DUAL_MEDIA_CTRL_BOND_ID, align 8
  %21 = and i64 %19, %20
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @BCE_MISC_DUAL_MEDIA_CTRL_BOND_ID_C, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %27 = load i32, i32* @BCE_INFO_LOAD, align 4
  %28 = call i32 (%struct.bce_softc*, i32, i8*, ...) @DBPRINT(%struct.bce_softc* %26, i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %177

29:                                               ; preds = %15
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @BCE_MISC_DUAL_MEDIA_CTRL_BOND_ID_S, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %35 = load i32, i32* @BCE_INFO_LOAD, align 4
  %36 = call i32 (%struct.bce_softc*, i32, i8*, ...) @DBPRINT(%struct.bce_softc* %34, i32 %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @BCE_PHY_SERDES_FLAG, align 4
  %38 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %39 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %177

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @BCE_MISC_DUAL_MEDIA_CTRL_STRAP_OVERRIDE, align 8
  %46 = and i64 %44, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* @BCE_MISC_DUAL_MEDIA_CTRL_PHY_CTRL, align 8
  %51 = and i64 %49, %50
  %52 = ashr i64 %51, 21
  store i64 %52, i64* %6, align 8
  br label %58

53:                                               ; preds = %43
  %54 = load i64, i64* %4, align 8
  %55 = load i64, i64* @BCE_MISC_DUAL_MEDIA_CTRL_PHY_CTRL_STRAP, align 8
  %56 = and i64 %54, %55
  %57 = ashr i64 %56, 8
  store i64 %57, i64* %6, align 8
  br label %58

58:                                               ; preds = %53, %48
  %59 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %60 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @pci_get_function(i32 %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %58
  %65 = load i64, i64* %6, align 8
  switch i64 %65, label %75 [
    i64 4, label %66
    i64 5, label %66
    i64 6, label %66
  ]

66:                                               ; preds = %64, %64, %64
  %67 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %68 = load i32, i32* @BCE_INFO_LOAD, align 4
  %69 = call i32 (%struct.bce_softc*, i32, i8*, ...) @DBPRINT(%struct.bce_softc* %67, i32 %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @BCE_PHY_SERDES_FLAG, align 4
  %71 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %72 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %79

75:                                               ; preds = %64
  %76 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %77 = load i32, i32* @BCE_INFO_LOAD, align 4
  %78 = call i32 (%struct.bce_softc*, i32, i8*, ...) @DBPRINT(%struct.bce_softc* %76, i32 %77, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %79

79:                                               ; preds = %75, %66
  br label %96

80:                                               ; preds = %58
  %81 = load i64, i64* %6, align 8
  switch i64 %81, label %91 [
    i64 1, label %82
    i64 2, label %82
    i64 4, label %82
  ]

82:                                               ; preds = %80, %80, %80
  %83 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %84 = load i32, i32* @BCE_INFO_LOAD, align 4
  %85 = call i32 (%struct.bce_softc*, i32, i8*, ...) @DBPRINT(%struct.bce_softc* %83, i32 %84, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* @BCE_PHY_SERDES_FLAG, align 4
  %87 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %88 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %95

91:                                               ; preds = %80
  %92 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %93 = load i32, i32* @BCE_INFO_LOAD, align 4
  %94 = call i32 (%struct.bce_softc*, i32, i8*, ...) @DBPRINT(%struct.bce_softc* %92, i32 %93, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %95

95:                                               ; preds = %91, %82
  br label %96

96:                                               ; preds = %95, %79
  br label %110

97:                                               ; preds = %1
  %98 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %99 = call i32 @BCE_CHIP_BOND_ID(%struct.bce_softc* %98)
  %100 = load i32, i32* @BCE_CHIP_BOND_ID_SERDES_BIT, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load i32, i32* @BCE_PHY_SERDES_FLAG, align 4
  %105 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %106 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %103, %97
  br label %110

110:                                              ; preds = %109, %96
  %111 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %112 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @BCE_PHY_SERDES_FLAG, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %159

117:                                              ; preds = %110
  %118 = load i32, i32* @BCE_NO_WOL_FLAG, align 4
  %119 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %120 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 4
  %123 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %124 = call i64 @BCE_CHIP_NUM(%struct.bce_softc* %123)
  %125 = load i64, i64* @BCE_CHIP_NUM_5709, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %117
  %128 = load i32, i32* @BCE_PHY_IEEE_CLAUSE_45_FLAG, align 4
  %129 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %130 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %127, %117
  %134 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %135 = call i64 @BCE_CHIP_NUM(%struct.bce_softc* %134)
  %136 = load i64, i64* @BCE_CHIP_NUM_5706, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %158

138:                                              ; preds = %133
  %139 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %140 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %139, i32 0, i32 0
  store i32 2, i32* %140, align 4
  %141 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %142 = load i32, i32* @BCE_SHARED_HW_CFG_CONFIG, align 4
  %143 = call i64 @bce_shmem_rd(%struct.bce_softc* %141, i32 %142)
  store i64 %143, i64* %3, align 8
  %144 = load i64, i64* %3, align 8
  %145 = load i64, i64* @BCE_SHARED_HW_CFG_PHY_2_5G, align 8
  %146 = and i64 %144, %145
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %138
  %149 = load i32, i32* @BCE_PHY_2_5G_CAPABLE_FLAG, align 4
  %150 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %151 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 4
  %154 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %155 = load i32, i32* @BCE_INFO_LOAD, align 4
  %156 = call i32 (%struct.bce_softc*, i32, i8*, ...) @DBPRINT(%struct.bce_softc* %154, i32 %155, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %157

157:                                              ; preds = %148, %138
  br label %158

158:                                              ; preds = %157, %133
  br label %176

159:                                              ; preds = %110
  %160 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %161 = call i64 @BCE_CHIP_NUM(%struct.bce_softc* %160)
  %162 = load i64, i64* @BCE_CHIP_NUM_5706, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %169, label %164

164:                                              ; preds = %159
  %165 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %166 = call i64 @BCE_CHIP_NUM(%struct.bce_softc* %165)
  %167 = load i64, i64* @BCE_CHIP_NUM_5708, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %164, %159
  %170 = load i32, i32* @BCE_PHY_CRC_FIX_FLAG, align 4
  %171 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %172 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 4
  br label %175

175:                                              ; preds = %169, %164
  br label %176

176:                                              ; preds = %175, %158
  br label %177

177:                                              ; preds = %176, %33, %25
  %178 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %179 = load i32, i32* @BCE_INFO_LOAD, align 4
  %180 = load i32, i32* @BCE_INFO_PHY, align 4
  %181 = or i32 %179, %180
  %182 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %183 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (%struct.bce_softc*, i32, i8*, ...) @DBPRINT(%struct.bce_softc* %178, i32 %181, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* @BCE_VERBOSE_PHY, align 4
  %187 = call i32 @DBEXIT(i32 %186)
  ret void
}

declare dso_local i32 @DBENTER(i32) #1

declare dso_local i64 @BCE_CHIP_NUM(%struct.bce_softc*) #1

declare dso_local i64 @REG_RD(%struct.bce_softc*, i32) #1

declare dso_local i32 @DBPRINT(%struct.bce_softc*, i32, i8*, ...) #1

declare dso_local i64 @pci_get_function(i32) #1

declare dso_local i32 @BCE_CHIP_BOND_ID(%struct.bce_softc*) #1

declare dso_local i64 @bce_shmem_rd(%struct.bce_softc*, i32) #1

declare dso_local i32 @DBEXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
