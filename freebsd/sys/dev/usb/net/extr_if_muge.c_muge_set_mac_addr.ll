; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_muge.c_muge_set_mac_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_muge.c_muge_set_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32*, i32 }
%struct.muge_softc = type { i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@ETH_RX_ADDRL = common dso_local global i32 0, align 4
@ETH_RX_ADDRH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"MAC assigned from registers\0A\00", align 1
@ETH_E2P_MAC_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"MAC assigned from EEPROM\0A\00", align 1
@OTP_MAC_OFFSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"MAC assigned from OTP\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MAC assigned randomly\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @muge_set_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @muge_set_mac_addr(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.muge_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %7 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %8 = call %struct.muge_softc* @uether_getsc(%struct.usb_ether* %7)
  store %struct.muge_softc* %8, %struct.muge_softc** %3, align 8
  %9 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %10 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %13 = call i32 @memset(i32* %11, i32 255, i32 %12)
  %14 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %15 = call i64 @lan78xx_read_reg(%struct.muge_softc* %14, i32 0, i32* %6)
  %16 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %17 = load i32, i32* @ETH_RX_ADDRL, align 4
  %18 = call i64 @lan78xx_read_reg(%struct.muge_softc* %16, i32 %17, i32* %5)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %84

20:                                               ; preds = %1
  %21 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %22 = load i32, i32* @ETH_RX_ADDRH, align 4
  %23 = call i64 @lan78xx_read_reg(%struct.muge_softc* %21, i32 %22, i32* %4)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %84

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = ashr i32 %26, 8
  %28 = and i32 %27, 255
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = ptrtoint i8* %30 to i32
  %32 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %33 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 5
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, 255
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = ptrtoint i8* %39 to i32
  %41 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %42 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* %5, align 4
  %46 = ashr i32 %45, 24
  %47 = and i32 %46, 255
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %52 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  store i32 %50, i32* %54, align 4
  %55 = load i32, i32* %5, align 4
  %56 = ashr i32 %55, 16
  %57 = and i32 %56, 255
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = ptrtoint i8* %59 to i32
  %61 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %62 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  store i32 %60, i32* %64, align 4
  %65 = load i32, i32* %5, align 4
  %66 = ashr i32 %65, 8
  %67 = and i32 %66, 255
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = ptrtoint i8* %69 to i32
  %71 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %72 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32 %70, i32* %74, align 4
  %75 = load i32, i32* %5, align 4
  %76 = and i32 %75, 255
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  %79 = ptrtoint i8* %78 to i32
  %80 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %81 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 %79, i32* %83, align 4
  br label %84

84:                                               ; preds = %25, %20, %1
  %85 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %86 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = call i64 @ETHER_IS_VALID(i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %92 = call i32 @muge_dbg_printf(%struct.muge_softc* %91, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %135

93:                                               ; preds = %84
  %94 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %95 = call i64 @lan78xx_eeprom_present(%struct.muge_softc* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %115

97:                                               ; preds = %93
  %98 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %99 = load i32, i32* @ETH_E2P_MAC_OFFSET, align 4
  %100 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %101 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %104 = call i64 @lan78xx_eeprom_read_raw(%struct.muge_softc* %98, i32 %99, i32* %102, i32 %103)
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %97
  %107 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %108 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = call i64 @ETHER_IS_VALID(i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %114 = call i32 @muge_dbg_printf(%struct.muge_softc* %113, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %134

115:                                              ; preds = %106, %97, %93
  %116 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %117 = load i32, i32* @OTP_MAC_OFFSET, align 4
  %118 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %119 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %122 = call i64 @lan78xx_otp_read(%struct.muge_softc* %116, i32 %117, i32* %120, i32 %121)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %115
  %125 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %126 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = call i64 @ETHER_IS_VALID(i32* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %132 = call i32 @muge_dbg_printf(%struct.muge_softc* %131, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %133

133:                                              ; preds = %130, %124, %115
  br label %134

134:                                              ; preds = %133, %112
  br label %135

135:                                              ; preds = %134, %90
  %136 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %137 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = call i64 @ETHER_IS_VALID(i32* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %161, label %141

141:                                              ; preds = %135
  %142 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %143 = call i32 @muge_dbg_printf(%struct.muge_softc* %142, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %144 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %145 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %148 = call i32 @arc4rand(i32* %146, i32 %147, i32 0)
  %149 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %150 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %153, -2
  store i32 %154, i32* %152, align 4
  %155 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %156 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, 2
  store i32 %160, i32* %158, align 4
  br label %161

161:                                              ; preds = %141, %135
  ret void
}

declare dso_local %struct.muge_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @lan78xx_read_reg(%struct.muge_softc*, i32, i32*) #1

declare dso_local i64 @ETHER_IS_VALID(i32*) #1

declare dso_local i32 @muge_dbg_printf(%struct.muge_softc*, i8*) #1

declare dso_local i64 @lan78xx_eeprom_present(%struct.muge_softc*) #1

declare dso_local i64 @lan78xx_eeprom_read_raw(%struct.muge_softc*, i32, i32*, i32) #1

declare dso_local i64 @lan78xx_otp_read(%struct.muge_softc*, i32, i32*, i32) #1

declare dso_local i32 @arc4rand(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
