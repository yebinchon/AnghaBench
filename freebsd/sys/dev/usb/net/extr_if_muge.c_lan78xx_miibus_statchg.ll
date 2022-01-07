; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_muge.c_lan78xx_miibus_statchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_muge.c_lan78xx_miibus_statchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.muge_softc = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mii_data = type { i32, i32 }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@MUGE_FLAG_LINK = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"media is active\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"10/100 ethernet\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Gigabit ethernet\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"link flag not set\0A\00", align 1
@ETH_FCT_FLOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"failed to read initial flow control thresholds, error %d\0A\00", align 1
@IFM_FDX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"full duplex operation\0A\00", align 1
@IFM_ETH_TXPAUSE = common dso_local global i32 0, align 4
@ETH_FLOW_CR_TX_FCEN_ = common dso_local global i32 0, align 4
@IFM_ETH_RXPAUSE = common dso_local global i32 0, align 4
@ETH_FLOW_CR_RX_FCEN_ = common dso_local global i32 0, align 4
@ETH_FLOW = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"media change failed, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @lan78xx_miibus_statchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan78xx_miibus_statchg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.muge_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call %struct.muge_softc* @device_get_softc(i32 %10)
  store %struct.muge_softc* %11, %struct.muge_softc** %3, align 8
  %12 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %13 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %12, i32 0, i32 1
  %14 = call %struct.mii_data* @uether_getmii(%struct.TYPE_3__* %13)
  store %struct.mii_data* %14, %struct.mii_data** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %16 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %15, i32 0, i32 2
  %17 = call i32 @mtx_owned(i32* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %22 = call i32 @MUGE_LOCK(%struct.muge_softc* %21)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %25 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %24, i32 0, i32 1
  %26 = call %struct.ifnet* @uether_getifp(%struct.TYPE_3__* %25)
  store %struct.ifnet* %26, %struct.ifnet** %5, align 8
  %27 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %28 = icmp eq %struct.mii_data* %27, null
  br i1 %28, label %39, label %29

29:                                               ; preds = %23
  %30 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %31 = icmp eq %struct.ifnet* %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %34 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32, %29, %23
  br label %172

40:                                               ; preds = %32
  %41 = load i32, i32* @MUGE_FLAG_LINK, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %44 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %48 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IFM_ACTIVE, align 4
  %51 = load i32, i32* @IFM_AVALID, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  %54 = load i32, i32* @IFM_ACTIVE, align 4
  %55 = load i32, i32* @IFM_AVALID, align 4
  %56 = or i32 %54, %55
  %57 = icmp eq i32 %53, %56
  br i1 %57, label %58, label %83

58:                                               ; preds = %40
  %59 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %60 = call i32 @muge_dbg_printf(%struct.muge_softc* %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %61 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %62 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @IFM_SUBTYPE(i32 %63)
  switch i32 %64, label %81 [
    i32 130, label %65
    i32 131, label %65
    i32 132, label %73
  ]

65:                                               ; preds = %58, %58
  %66 = load i32, i32* @MUGE_FLAG_LINK, align 4
  %67 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %68 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %72 = call i32 @muge_dbg_printf(%struct.muge_softc* %71, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %82

73:                                               ; preds = %58
  %74 = load i32, i32* @MUGE_FLAG_LINK, align 4
  %75 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %76 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %80 = call i32 @muge_dbg_printf(%struct.muge_softc* %79, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %82

81:                                               ; preds = %58
  br label %82

82:                                               ; preds = %81, %73, %65
  br label %83

83:                                               ; preds = %82, %40
  %84 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %85 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @MUGE_FLAG_LINK, align 4
  %88 = and i32 %86, %87
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %92 = call i32 @muge_dbg_printf(%struct.muge_softc* %91, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %172

93:                                               ; preds = %83
  %94 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %95 = load i32, i32* @ETH_FCT_FLOW, align 4
  %96 = call i32 @lan78xx_read_reg(%struct.muge_softc* %94, i32 %95, i32* %9)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @muge_warn_printf(%struct.muge_softc* %100, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  br label %172

103:                                              ; preds = %93
  %104 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %105 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @IFM_OPTIONS(i32 %106)
  %108 = load i32, i32* @IFM_FDX, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %139

111:                                              ; preds = %103
  %112 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %113 = call i32 @muge_dbg_printf(%struct.muge_softc* %112, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %114 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %115 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @IFM_OPTIONS(i32 %116)
  %118 = load i32, i32* @IFM_ETH_TXPAUSE, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %111
  %122 = load i32, i32* @ETH_FLOW_CR_TX_FCEN_, align 4
  %123 = or i32 %122, 65535
  %124 = load i32, i32* %8, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %8, align 4
  br label %126

126:                                              ; preds = %121, %111
  %127 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %128 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @IFM_OPTIONS(i32 %129)
  %131 = load i32, i32* @IFM_ETH_RXPAUSE, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %126
  %135 = load i32, i32* @ETH_FLOW_CR_RX_FCEN_, align 4
  %136 = load i32, i32* %8, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %8, align 4
  br label %138

138:                                              ; preds = %134, %126
  br label %139

139:                                              ; preds = %138, %103
  %140 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %141 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @usbd_get_speed(i32 %143)
  switch i32 %144, label %147 [
    i32 128, label %145
    i32 129, label %146
  ]

145:                                              ; preds = %139
  store i32 2071, i32* %9, align 4
  br label %148

146:                                              ; preds = %139
  store i32 529, i32* %9, align 4
  br label %148

147:                                              ; preds = %139
  br label %148

148:                                              ; preds = %147, %146, %145
  %149 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %150 = load i32, i32* @ETH_FLOW, align 4
  %151 = load i32, i32* %8, align 4
  %152 = call i64 @lan78xx_write_reg(%struct.muge_softc* %149, i32 %150, i32 %151)
  %153 = load i32, i32* %7, align 4
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %154, %152
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %7, align 4
  %157 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %158 = load i32, i32* @ETH_FCT_FLOW, align 4
  %159 = load i32, i32* %9, align 4
  %160 = call i64 @lan78xx_write_reg(%struct.muge_softc* %157, i32 %158, i32 %159)
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = add nsw i64 %162, %160
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %148
  %168 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %169 = load i32, i32* %7, align 4
  %170 = call i32 @muge_warn_printf(%struct.muge_softc* %168, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %169)
  br label %171

171:                                              ; preds = %167, %148
  br label %172

172:                                              ; preds = %171, %99, %90, %39
  %173 = load i32, i32* %6, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %172
  %176 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %177 = call i32 @MUGE_UNLOCK(%struct.muge_softc* %176)
  br label %178

178:                                              ; preds = %175, %172
  ret void
}

declare dso_local %struct.muge_softc* @device_get_softc(i32) #1

declare dso_local %struct.mii_data* @uether_getmii(%struct.TYPE_3__*) #1

declare dso_local i32 @mtx_owned(i32*) #1

declare dso_local i32 @MUGE_LOCK(%struct.muge_softc*) #1

declare dso_local %struct.ifnet* @uether_getifp(%struct.TYPE_3__*) #1

declare dso_local i32 @muge_dbg_printf(%struct.muge_softc*, i8*) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @lan78xx_read_reg(%struct.muge_softc*, i32, i32*) #1

declare dso_local i32 @muge_warn_printf(%struct.muge_softc*, i8*, i32) #1

declare dso_local i32 @IFM_OPTIONS(i32) #1

declare dso_local i32 @usbd_get_speed(i32) #1

declare dso_local i64 @lan78xx_write_reg(%struct.muge_softc*, i32, i32) #1

declare dso_local i32 @MUGE_UNLOCK(%struct.muge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
