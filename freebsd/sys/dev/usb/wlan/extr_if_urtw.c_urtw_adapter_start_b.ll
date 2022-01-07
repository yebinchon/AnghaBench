; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_adapter_start_b.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_adapter_start_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { {}* }

@URTW_EPROM_CMD_CONFIG = common dso_local global i32 0, align 4
@URTW_CONFIG3 = common dso_local global i32 0, align 4
@URTW_CONFIG3_ANAPARAM_WRITE = common dso_local global i32 0, align 4
@URTW_CONFIG3_GNT_SELECT = common dso_local global i32 0, align 4
@URTW_ANAPARAM2 = common dso_local global i32 0, align 4
@URTW_8187B_8225_ANAPARAM2_ON = common dso_local global i32 0, align 4
@URTW_ANAPARAM = common dso_local global i32 0, align 4
@URTW_8187B_8225_ANAPARAM_ON = common dso_local global i32 0, align 4
@URTW_ANAPARAM3 = common dso_local global i32 0, align 4
@URTW_8187B_8225_ANAPARAM3_ON = common dso_local global i32 0, align 4
@URTW_EPROM_CMD_NORMAL = common dso_local global i32 0, align 4
@URTW_CMD = common dso_local global i32 0, align 4
@URTW_CMD_RX_ENABLE = common dso_local global i32 0, align 4
@URTW_CMD_TX_ENABLE = common dso_local global i32 0, align 4
@URTW_HSSI_PARA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.urtw_softc*)* @urtw_adapter_start_b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @urtw_adapter_start_b(%struct.urtw_softc* %0) #0 {
  %2 = alloca %struct.urtw_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.urtw_softc* %0, %struct.urtw_softc** %2, align 8
  %5 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %6 = load i32, i32* @URTW_EPROM_CMD_CONFIG, align 4
  %7 = call i64 @urtw_set_mode(%struct.urtw_softc* %5, i32 %6)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %168

11:                                               ; preds = %1
  %12 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %13 = load i32, i32* @URTW_CONFIG3, align 4
  %14 = call i32 @urtw_read8_m(%struct.urtw_softc* %12, i32 %13, i32* %3)
  %15 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %16 = load i32, i32* @URTW_CONFIG3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @URTW_CONFIG3_ANAPARAM_WRITE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @URTW_CONFIG3_GNT_SELECT, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @urtw_write8_m(%struct.urtw_softc* %15, i32 %16, i32 %21)
  %23 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %24 = load i32, i32* @URTW_ANAPARAM2, align 4
  %25 = load i32, i32* @URTW_8187B_8225_ANAPARAM2_ON, align 4
  %26 = call i32 @urtw_write32_m(%struct.urtw_softc* %23, i32 %24, i32 %25)
  %27 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %28 = load i32, i32* @URTW_ANAPARAM, align 4
  %29 = load i32, i32* @URTW_8187B_8225_ANAPARAM_ON, align 4
  %30 = call i32 @urtw_write32_m(%struct.urtw_softc* %27, i32 %28, i32 %29)
  %31 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %32 = load i32, i32* @URTW_ANAPARAM3, align 4
  %33 = load i32, i32* @URTW_8187B_8225_ANAPARAM3_ON, align 4
  %34 = call i32 @urtw_write8_m(%struct.urtw_softc* %31, i32 %32, i32 %33)
  %35 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %36 = call i32 @urtw_write8_m(%struct.urtw_softc* %35, i32 97, i32 16)
  %37 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %38 = call i32 @urtw_read8_m(%struct.urtw_softc* %37, i32 98, i32* %3)
  %39 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = and i32 %40, -33
  %42 = call i32 @urtw_write8_m(%struct.urtw_softc* %39, i32 98, i32 %41)
  %43 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %44, 32
  %46 = call i32 @urtw_write8_m(%struct.urtw_softc* %43, i32 98, i32 %45)
  %47 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %48 = load i32, i32* @URTW_CONFIG3, align 4
  %49 = call i32 @urtw_read8_m(%struct.urtw_softc* %47, i32 %48, i32* %3)
  %50 = load i32, i32* @URTW_CONFIG3_ANAPARAM_WRITE, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %3, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %3, align 4
  %54 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %55 = load i32, i32* @URTW_CONFIG3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @urtw_write8_m(%struct.urtw_softc* %54, i32 %55, i32 %56)
  %58 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %59 = load i32, i32* @URTW_EPROM_CMD_NORMAL, align 4
  %60 = call i64 @urtw_set_mode(%struct.urtw_softc* %58, i32 %59)
  store i64 %60, i64* %4, align 8
  %61 = load i64, i64* %4, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %11
  br label %168

64:                                               ; preds = %11
  %65 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %66 = call i64 @urtw_8187b_cmd_reset(%struct.urtw_softc* %65)
  store i64 %66, i64* %4, align 8
  %67 = load i64, i64* %4, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %168

70:                                               ; preds = %64
  %71 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %72 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %71, i32 0, i32 0
  %73 = bitcast {}** %72 to i64 (%struct.urtw_softc*)**
  %74 = load i64 (%struct.urtw_softc*)*, i64 (%struct.urtw_softc*)** %73, align 8
  %75 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %76 = call i64 %74(%struct.urtw_softc* %75)
  store i64 %76, i64* %4, align 8
  %77 = load i64, i64* %4, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  br label %168

80:                                               ; preds = %70
  %81 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %82 = load i32, i32* @URTW_CMD, align 4
  %83 = load i32, i32* @URTW_CMD_RX_ENABLE, align 4
  %84 = load i32, i32* @URTW_CMD_TX_ENABLE, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @urtw_write8_m(%struct.urtw_softc* %81, i32 %82, i32 %85)
  %87 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %88 = call i64 @urtw_intr_enable(%struct.urtw_softc* %87)
  store i64 %88, i64* %4, align 8
  %89 = load i64, i64* %4, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %80
  br label %168

92:                                               ; preds = %80
  %93 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %94 = call i64 @urtw_write8e(%struct.urtw_softc* %93, i32 65, i32 244)
  store i64 %94, i64* %4, align 8
  %95 = load i64, i64* %4, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %168

98:                                               ; preds = %92
  %99 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %100 = call i64 @urtw_write8e(%struct.urtw_softc* %99, i32 64, i32 0)
  store i64 %100, i64* %4, align 8
  %101 = load i64, i64* %4, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %168

104:                                              ; preds = %98
  %105 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %106 = call i64 @urtw_write8e(%struct.urtw_softc* %105, i32 66, i32 0)
  store i64 %106, i64* %4, align 8
  %107 = load i64, i64* %4, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %168

110:                                              ; preds = %104
  %111 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %112 = call i64 @urtw_write8e(%struct.urtw_softc* %111, i32 66, i32 1)
  store i64 %112, i64* %4, align 8
  %113 = load i64, i64* %4, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %168

116:                                              ; preds = %110
  %117 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %118 = call i64 @urtw_write8e(%struct.urtw_softc* %117, i32 64, i32 15)
  store i64 %118, i64* %4, align 8
  %119 = load i64, i64* %4, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %168

122:                                              ; preds = %116
  %123 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %124 = call i64 @urtw_write8e(%struct.urtw_softc* %123, i32 66, i32 0)
  store i64 %124, i64* %4, align 8
  %125 = load i64, i64* %4, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  br label %168

128:                                              ; preds = %122
  %129 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %130 = call i64 @urtw_write8e(%struct.urtw_softc* %129, i32 66, i32 1)
  store i64 %130, i64* %4, align 8
  %131 = load i64, i64* %4, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %168

134:                                              ; preds = %128
  %135 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %136 = call i32 @urtw_read8_m(%struct.urtw_softc* %135, i32 219, i32* %3)
  %137 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %138 = load i32, i32* %3, align 4
  %139 = or i32 %138, 4
  %140 = call i32 @urtw_write8_m(%struct.urtw_softc* %137, i32 219, i32 %139)
  %141 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %142 = call i32 @urtw_write16_m(%struct.urtw_softc* %141, i32 882, i32 23034)
  %143 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %144 = call i32 @urtw_write16_m(%struct.urtw_softc* %143, i32 884, i32 22994)
  %145 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %146 = call i32 @urtw_write16_m(%struct.urtw_softc* %145, i32 886, i32 22994)
  %147 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %148 = call i32 @urtw_write16_m(%struct.urtw_softc* %147, i32 888, i32 6650)
  %149 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %150 = call i32 @urtw_write16_m(%struct.urtw_softc* %149, i32 890, i32 6650)
  %151 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %152 = call i32 @urtw_write16_m(%struct.urtw_softc* %151, i32 892, i32 208)
  %153 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %154 = call i32 @urtw_write8_m(%struct.urtw_softc* %153, i32 97, i32 0)
  %155 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %156 = call i32 @urtw_write8_m(%struct.urtw_softc* %155, i32 384, i32 15)
  %157 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %158 = call i32 @urtw_write8_m(%struct.urtw_softc* %157, i32 387, i32 3)
  %159 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %160 = call i32 @urtw_write8_m(%struct.urtw_softc* %159, i32 218, i32 16)
  %161 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %162 = call i32 @urtw_write8_m(%struct.urtw_softc* %161, i32 589, i32 8)
  %163 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %164 = load i32, i32* @URTW_HSSI_PARA, align 4
  %165 = call i32 @urtw_write32_m(%struct.urtw_softc* %163, i32 %164, i32 100676123)
  %166 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %167 = call i32 @urtw_write16_m(%struct.urtw_softc* %166, i32 492, i32 2048)
  br label %168

168:                                              ; preds = %134, %133, %127, %121, %115, %109, %103, %97, %91, %79, %69, %63, %10
  %169 = load i64, i64* %4, align 8
  ret i64 %169
}

declare dso_local i64 @urtw_set_mode(%struct.urtw_softc*, i32) #1

declare dso_local i32 @urtw_read8_m(%struct.urtw_softc*, i32, i32*) #1

declare dso_local i32 @urtw_write8_m(%struct.urtw_softc*, i32, i32) #1

declare dso_local i32 @urtw_write32_m(%struct.urtw_softc*, i32, i32) #1

declare dso_local i64 @urtw_8187b_cmd_reset(%struct.urtw_softc*) #1

declare dso_local i64 @urtw_intr_enable(%struct.urtw_softc*) #1

declare dso_local i64 @urtw_write8e(%struct.urtw_softc*, i32, i32) #1

declare dso_local i32 @urtw_write16_m(%struct.urtw_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
