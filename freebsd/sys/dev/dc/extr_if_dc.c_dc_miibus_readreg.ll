; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_miibus_readreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_miibus_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { i64, i64 }

@DC_PMODE_MII = common dso_local global i64 0, align 8
@MII_NPHY = common dso_local global i32 0, align 4
@BMSR_MEDIAMASK = common dso_local global i32 0, align 4
@DC_VENDORID_LO = common dso_local global i32 0, align 4
@DC_VENDORID_DEC = common dso_local global i32 0, align 4
@DC_DEVICEID_82C168 = common dso_local global i32 0, align 4
@DC_DEVICEID_21143 = common dso_local global i32 0, align 4
@DC_PN_MII = common dso_local global i32 0, align 4
@DC_PN_MIIOPCODE_READ = common dso_local global i32 0, align 4
@DC_TIMEOUT = common dso_local global i32 0, align 4
@DC_PN_MII_BUSY = common dso_local global i32 0, align 4
@DC_TYPE_ULI_M5263 = common dso_local global i64 0, align 8
@DC_ROM = common dso_local global i32 0, align 4
@DC_ULI_PHY_ADDR_SHIFT = common dso_local global i32 0, align 4
@DC_ULI_PHY_ADDR_MASK = common dso_local global i32 0, align 4
@DC_ULI_PHY_REG_SHIFT = common dso_local global i32 0, align 4
@DC_ULI_PHY_REG_MASK = common dso_local global i32 0, align 4
@DC_ULI_PHY_OP_READ = common dso_local global i32 0, align 4
@DC_ULI_PHY_OP_DONE = common dso_local global i32 0, align 4
@DC_ULI_PHY_DATA_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"phy read timed out\0A\00", align 1
@DC_AL_BMCR = common dso_local global i32 0, align 4
@DC_AL_BMSR = common dso_local global i32 0, align 4
@DC_AL_VENID = common dso_local global i32 0, align 4
@DC_AL_DEVID = common dso_local global i32 0, align 4
@DC_AL_ANAR = common dso_local global i32 0, align 4
@DC_AL_LPAR = common dso_local global i32 0, align 4
@DC_AL_ANER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"phy_read: bad phy register %x\0A\00", align 1
@DC_TYPE_98713 = common dso_local global i64 0, align 8
@DC_NETCFG = common dso_local global i32 0, align 4
@DC_NETCFG_PORTSEL = common dso_local global i32 0, align 4
@dc_mii_bitbang_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @dc_miibus_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc_miibus_readreg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dc_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.dc_softc* @device_get_softc(i32 %12)
  store %struct.dc_softc* %13, %struct.dc_softc** %8, align 8
  %14 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %15 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DC_PMODE_MII, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %46

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @MII_NPHY, align 4
  %22 = sub nsw i32 %21, 1
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %44 [
    i32 130, label %26
    i32 129, label %28
    i32 128, label %36
  ]

26:                                               ; preds = %24
  %27 = load i32, i32* @BMSR_MEDIAMASK, align 4
  store i32 %27, i32* %4, align 4
  br label %209

28:                                               ; preds = %24
  %29 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %30 = call i64 @DC_IS_PNIC(%struct.dc_softc* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @DC_VENDORID_LO, align 4
  store i32 %33, i32* %4, align 4
  br label %209

34:                                               ; preds = %28
  %35 = load i32, i32* @DC_VENDORID_DEC, align 4
  store i32 %35, i32* %4, align 4
  br label %209

36:                                               ; preds = %24
  %37 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %38 = call i64 @DC_IS_PNIC(%struct.dc_softc* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @DC_DEVICEID_82C168, align 4
  store i32 %41, i32* %4, align 4
  br label %209

42:                                               ; preds = %36
  %43 = load i32, i32* @DC_DEVICEID_21143, align 4
  store i32 %43, i32* %4, align 4
  br label %209

44:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %209

45:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %209

46:                                               ; preds = %3
  %47 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %48 = call i64 @DC_IS_PNIC(%struct.dc_softc* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %89

50:                                               ; preds = %46
  %51 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %52 = load i32, i32* @DC_PN_MII, align 4
  %53 = load i32, i32* @DC_PN_MIIOPCODE_READ, align 4
  %54 = load i32, i32* %6, align 4
  %55 = shl i32 %54, 23
  %56 = or i32 %53, %55
  %57 = load i32, i32* %7, align 4
  %58 = shl i32 %57, 18
  %59 = or i32 %56, %58
  %60 = call i32 @CSR_WRITE_4(%struct.dc_softc* %51, i32 %52, i32 %59)
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %85, %50
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @DC_TIMEOUT, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %61
  %66 = call i32 @DELAY(i32 1)
  %67 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %68 = load i32, i32* @DC_PN_MII, align 4
  %69 = call i32 @CSR_READ_4(%struct.dc_softc* %67, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @DC_PN_MII_BUSY, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %65
  %75 = load i32, i32* %10, align 4
  %76 = and i32 %75, 65535
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp eq i32 %77, 65535
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %82

80:                                               ; preds = %74
  %81 = load i32, i32* %10, align 4
  br label %82

82:                                               ; preds = %80, %79
  %83 = phi i32 [ 0, %79 ], [ %81, %80 ]
  store i32 %83, i32* %4, align 4
  br label %209

84:                                               ; preds = %65
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %61

88:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %209

89:                                               ; preds = %46
  %90 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %91 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @DC_TYPE_ULI_M5263, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %141

95:                                               ; preds = %89
  %96 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %97 = load i32, i32* @DC_ROM, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @DC_ULI_PHY_ADDR_SHIFT, align 4
  %100 = shl i32 %98, %99
  %101 = load i32, i32* @DC_ULI_PHY_ADDR_MASK, align 4
  %102 = and i32 %100, %101
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @DC_ULI_PHY_REG_SHIFT, align 4
  %105 = shl i32 %103, %104
  %106 = load i32, i32* @DC_ULI_PHY_REG_MASK, align 4
  %107 = and i32 %105, %106
  %108 = or i32 %102, %107
  %109 = load i32, i32* @DC_ULI_PHY_OP_READ, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @CSR_WRITE_4(%struct.dc_softc* %96, i32 %97, i32 %110)
  store i32 0, i32* %9, align 4
  br label %112

112:                                              ; preds = %130, %95
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @DC_TIMEOUT, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %133

116:                                              ; preds = %112
  %117 = call i32 @DELAY(i32 1)
  %118 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %119 = load i32, i32* @DC_ROM, align 4
  %120 = call i32 @CSR_READ_4(%struct.dc_softc* %118, i32 %119)
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @DC_ULI_PHY_OP_DONE, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %116
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @DC_ULI_PHY_DATA_MASK, align 4
  %128 = and i32 %126, %127
  store i32 %128, i32* %4, align 4
  br label %209

129:                                              ; preds = %116
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %9, align 4
  br label %112

133:                                              ; preds = %112
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @DC_TIMEOUT, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load i32, i32* %5, align 4
  %139 = call i32 (i32, i8*, ...) @device_printf(i32 %138, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %140

140:                                              ; preds = %137, %133
  store i32 0, i32* %4, align 4
  br label %209

141:                                              ; preds = %89
  %142 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %143 = call i64 @DC_IS_COMET(%struct.dc_softc* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %175

145:                                              ; preds = %141
  %146 = load i32, i32* %7, align 4
  switch i32 %146, label %161 [
    i32 131, label %147
    i32 130, label %149
    i32 129, label %151
    i32 128, label %153
    i32 134, label %155
    i32 132, label %157
    i32 133, label %159
  ]

147:                                              ; preds = %145
  %148 = load i32, i32* @DC_AL_BMCR, align 4
  store i32 %148, i32* %11, align 4
  br label %165

149:                                              ; preds = %145
  %150 = load i32, i32* @DC_AL_BMSR, align 4
  store i32 %150, i32* %11, align 4
  br label %165

151:                                              ; preds = %145
  %152 = load i32, i32* @DC_AL_VENID, align 4
  store i32 %152, i32* %11, align 4
  br label %165

153:                                              ; preds = %145
  %154 = load i32, i32* @DC_AL_DEVID, align 4
  store i32 %154, i32* %11, align 4
  br label %165

155:                                              ; preds = %145
  %156 = load i32, i32* @DC_AL_ANAR, align 4
  store i32 %156, i32* %11, align 4
  br label %165

157:                                              ; preds = %145
  %158 = load i32, i32* @DC_AL_LPAR, align 4
  store i32 %158, i32* %11, align 4
  br label %165

159:                                              ; preds = %145
  %160 = load i32, i32* @DC_AL_ANER, align 4
  store i32 %160, i32* %11, align 4
  br label %165

161:                                              ; preds = %145
  %162 = load i32, i32* %5, align 4
  %163 = load i32, i32* %7, align 4
  %164 = call i32 (i32, i8*, ...) @device_printf(i32 %162, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %163)
  store i32 0, i32* %4, align 4
  br label %209

165:                                              ; preds = %159, %157, %155, %153, %151, %149, %147
  %166 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %167 = load i32, i32* %11, align 4
  %168 = call i32 @CSR_READ_4(%struct.dc_softc* %166, i32 %167)
  %169 = and i32 %168, 65535
  store i32 %169, i32* %10, align 4
  %170 = load i32, i32* %10, align 4
  %171 = icmp eq i32 %170, 65535
  br i1 %171, label %172, label %173

172:                                              ; preds = %165
  store i32 0, i32* %4, align 4
  br label %209

173:                                              ; preds = %165
  %174 = load i32, i32* %10, align 4
  store i32 %174, i32* %4, align 4
  br label %209

175:                                              ; preds = %141
  %176 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %177 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @DC_TYPE_98713, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %192

181:                                              ; preds = %175
  %182 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %183 = load i32, i32* @DC_NETCFG, align 4
  %184 = call i32 @CSR_READ_4(%struct.dc_softc* %182, i32 %183)
  store i32 %184, i32* %11, align 4
  %185 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %186 = load i32, i32* @DC_NETCFG, align 4
  %187 = load i32, i32* %11, align 4
  %188 = load i32, i32* @DC_NETCFG_PORTSEL, align 4
  %189 = xor i32 %188, -1
  %190 = and i32 %187, %189
  %191 = call i32 @CSR_WRITE_4(%struct.dc_softc* %185, i32 %186, i32 %190)
  br label %192

192:                                              ; preds = %181, %175
  %193 = load i32, i32* %5, align 4
  %194 = load i32, i32* %6, align 4
  %195 = load i32, i32* %7, align 4
  %196 = call i32 @mii_bitbang_readreg(i32 %193, i32* @dc_mii_bitbang_ops, i32 %194, i32 %195)
  store i32 %196, i32* %10, align 4
  %197 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %198 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @DC_TYPE_98713, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %207

202:                                              ; preds = %192
  %203 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %204 = load i32, i32* @DC_NETCFG, align 4
  %205 = load i32, i32* %11, align 4
  %206 = call i32 @CSR_WRITE_4(%struct.dc_softc* %203, i32 %204, i32 %205)
  br label %207

207:                                              ; preds = %202, %192
  %208 = load i32, i32* %10, align 4
  store i32 %208, i32* %4, align 4
  br label %209

209:                                              ; preds = %207, %173, %172, %161, %140, %125, %88, %82, %45, %44, %42, %40, %34, %32, %26
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

declare dso_local %struct.dc_softc* @device_get_softc(i32) #1

declare dso_local i64 @DC_IS_PNIC(%struct.dc_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.dc_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.dc_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @DC_IS_COMET(%struct.dc_softc*) #1

declare dso_local i32 @mii_bitbang_readreg(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
