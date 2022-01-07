; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_miibus_writereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_miibus_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { i64 }

@DC_PN_MII = common dso_local global i32 0, align 4
@DC_PN_MIIOPCODE_WRITE = common dso_local global i32 0, align 4
@DC_TIMEOUT = common dso_local global i32 0, align 4
@DC_PN_MII_BUSY = common dso_local global i32 0, align 4
@DC_TYPE_ULI_M5263 = common dso_local global i64 0, align 8
@DC_ROM = common dso_local global i32 0, align 4
@DC_ULI_PHY_ADDR_SHIFT = common dso_local global i32 0, align 4
@DC_ULI_PHY_ADDR_MASK = common dso_local global i32 0, align 4
@DC_ULI_PHY_REG_SHIFT = common dso_local global i32 0, align 4
@DC_ULI_PHY_REG_MASK = common dso_local global i32 0, align 4
@DC_ULI_PHY_DATA_SHIFT = common dso_local global i32 0, align 4
@DC_ULI_PHY_DATA_MASK = common dso_local global i32 0, align 4
@DC_ULI_PHY_OP_WRITE = common dso_local global i32 0, align 4
@DC_AL_BMCR = common dso_local global i32 0, align 4
@DC_AL_BMSR = common dso_local global i32 0, align 4
@DC_AL_VENID = common dso_local global i32 0, align 4
@DC_AL_DEVID = common dso_local global i32 0, align 4
@DC_AL_ANAR = common dso_local global i32 0, align 4
@DC_AL_LPAR = common dso_local global i32 0, align 4
@DC_AL_ANER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"phy_write: bad phy register %x\0A\00", align 1
@DC_TYPE_98713 = common dso_local global i64 0, align 8
@DC_NETCFG = common dso_local global i32 0, align 4
@DC_NETCFG_PORTSEL = common dso_local global i32 0, align 4
@dc_mii_bitbang_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @dc_miibus_writereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc_miibus_writereg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dc_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.dc_softc* @device_get_softc(i32 %13)
  store %struct.dc_softc* %14, %struct.dc_softc** %10, align 8
  %15 = load %struct.dc_softc*, %struct.dc_softc** %10, align 8
  %16 = call i64 @DC_IS_PNIC(%struct.dc_softc* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %4
  %19 = load %struct.dc_softc*, %struct.dc_softc** %10, align 8
  %20 = load i32, i32* @DC_PN_MII, align 4
  %21 = load i32, i32* @DC_PN_MIIOPCODE_WRITE, align 4
  %22 = load i32, i32* %7, align 4
  %23 = shl i32 %22, 23
  %24 = or i32 %21, %23
  %25 = load i32, i32* %8, align 4
  %26 = shl i32 %25, 10
  %27 = or i32 %24, %26
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @CSR_WRITE_4(%struct.dc_softc* %19, i32 %20, i32 %29)
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %44, %18
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @DC_TIMEOUT, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load %struct.dc_softc*, %struct.dc_softc** %10, align 8
  %37 = load i32, i32* @DC_PN_MII, align 4
  %38 = call i32 @CSR_READ_4(%struct.dc_softc* %36, i32 %37)
  %39 = load i32, i32* @DC_PN_MII_BUSY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  br label %47

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  br label %31

47:                                               ; preds = %42, %31
  store i32 0, i32* %5, align 4
  br label %141

48:                                               ; preds = %4
  %49 = load %struct.dc_softc*, %struct.dc_softc** %10, align 8
  %50 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DC_TYPE_ULI_M5263, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %78

54:                                               ; preds = %48
  %55 = load %struct.dc_softc*, %struct.dc_softc** %10, align 8
  %56 = load i32, i32* @DC_ROM, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @DC_ULI_PHY_ADDR_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* @DC_ULI_PHY_ADDR_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @DC_ULI_PHY_REG_SHIFT, align 4
  %64 = shl i32 %62, %63
  %65 = load i32, i32* @DC_ULI_PHY_REG_MASK, align 4
  %66 = and i32 %64, %65
  %67 = or i32 %61, %66
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @DC_ULI_PHY_DATA_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* @DC_ULI_PHY_DATA_MASK, align 4
  %72 = and i32 %70, %71
  %73 = or i32 %67, %72
  %74 = load i32, i32* @DC_ULI_PHY_OP_WRITE, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @CSR_WRITE_4(%struct.dc_softc* %55, i32 %56, i32 %75)
  %77 = call i32 @DELAY(i32 1)
  store i32 0, i32* %5, align 4
  br label %141

78:                                               ; preds = %48
  %79 = load %struct.dc_softc*, %struct.dc_softc** %10, align 8
  %80 = call i64 @DC_IS_COMET(%struct.dc_softc* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %107

82:                                               ; preds = %78
  %83 = load i32, i32* %8, align 4
  switch i32 %83, label %98 [
    i32 131, label %84
    i32 130, label %86
    i32 129, label %88
    i32 128, label %90
    i32 134, label %92
    i32 132, label %94
    i32 133, label %96
  ]

84:                                               ; preds = %82
  %85 = load i32, i32* @DC_AL_BMCR, align 4
  store i32 %85, i32* %12, align 4
  br label %102

86:                                               ; preds = %82
  %87 = load i32, i32* @DC_AL_BMSR, align 4
  store i32 %87, i32* %12, align 4
  br label %102

88:                                               ; preds = %82
  %89 = load i32, i32* @DC_AL_VENID, align 4
  store i32 %89, i32* %12, align 4
  br label %102

90:                                               ; preds = %82
  %91 = load i32, i32* @DC_AL_DEVID, align 4
  store i32 %91, i32* %12, align 4
  br label %102

92:                                               ; preds = %82
  %93 = load i32, i32* @DC_AL_ANAR, align 4
  store i32 %93, i32* %12, align 4
  br label %102

94:                                               ; preds = %82
  %95 = load i32, i32* @DC_AL_LPAR, align 4
  store i32 %95, i32* %12, align 4
  br label %102

96:                                               ; preds = %82
  %97 = load i32, i32* @DC_AL_ANER, align 4
  store i32 %97, i32* %12, align 4
  br label %102

98:                                               ; preds = %82
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @device_printf(i32 %99, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %100)
  store i32 0, i32* %5, align 4
  br label %141

102:                                              ; preds = %96, %94, %92, %90, %88, %86, %84
  %103 = load %struct.dc_softc*, %struct.dc_softc** %10, align 8
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @CSR_WRITE_4(%struct.dc_softc* %103, i32 %104, i32 %105)
  store i32 0, i32* %5, align 4
  br label %141

107:                                              ; preds = %78
  %108 = load %struct.dc_softc*, %struct.dc_softc** %10, align 8
  %109 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @DC_TYPE_98713, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %107
  %114 = load %struct.dc_softc*, %struct.dc_softc** %10, align 8
  %115 = load i32, i32* @DC_NETCFG, align 4
  %116 = call i32 @CSR_READ_4(%struct.dc_softc* %114, i32 %115)
  store i32 %116, i32* %12, align 4
  %117 = load %struct.dc_softc*, %struct.dc_softc** %10, align 8
  %118 = load i32, i32* @DC_NETCFG, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* @DC_NETCFG_PORTSEL, align 4
  %121 = xor i32 %120, -1
  %122 = and i32 %119, %121
  %123 = call i32 @CSR_WRITE_4(%struct.dc_softc* %117, i32 %118, i32 %122)
  br label %124

124:                                              ; preds = %113, %107
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @mii_bitbang_writereg(i32 %125, i32* @dc_mii_bitbang_ops, i32 %126, i32 %127, i32 %128)
  %130 = load %struct.dc_softc*, %struct.dc_softc** %10, align 8
  %131 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @DC_TYPE_98713, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %124
  %136 = load %struct.dc_softc*, %struct.dc_softc** %10, align 8
  %137 = load i32, i32* @DC_NETCFG, align 4
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @CSR_WRITE_4(%struct.dc_softc* %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %135, %124
  store i32 0, i32* %5, align 4
  br label %141

141:                                              ; preds = %140, %102, %98, %54, %47
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local %struct.dc_softc* @device_get_softc(i32) #1

declare dso_local i64 @DC_IS_PNIC(%struct.dc_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.dc_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.dc_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @DC_IS_COMET(%struct.dc_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @mii_bitbang_writereg(i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
