; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_smsc.c_smsc_miibus_statchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_smsc.c_smsc_miibus_statchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc_softc = type { i32, i32, i32, i32 }
%struct.mii_data = type { i32, i32 }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@SMSC_FLAG_LINK = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"link flag not set\0A\00", align 1
@SMSC_AFC_CFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"failed to read initial AFC_CFG, error %d\0A\00", align 1
@IFM_FDX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"full duplex operation\0A\00", align 1
@SMSC_MAC_CSR_RCVOWN = common dso_local global i32 0, align 4
@SMSC_MAC_CSR_FDPX = common dso_local global i32 0, align 4
@IFM_ETH_RXPAUSE = common dso_local global i32 0, align 4
@IFM_ETH_TXPAUSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"half duplex operation\0A\00", align 1
@SMSC_MAC_CSR = common dso_local global i32 0, align 4
@SMSC_FLOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"media change failed, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @smsc_miibus_statchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc_miibus_statchg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smsc_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call %struct.smsc_softc* @device_get_softc(i32 %10)
  store %struct.smsc_softc* %11, %struct.smsc_softc** %3, align 8
  %12 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %13 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %12, i32 0, i32 2
  %14 = call %struct.mii_data* @uether_getmii(i32* %13)
  store %struct.mii_data* %14, %struct.mii_data** %4, align 8
  %15 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %16 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %15, i32 0, i32 3
  %17 = call i32 @mtx_owned(i32* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %22 = call i32 @SMSC_LOCK(%struct.smsc_softc* %21)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %25 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %24, i32 0, i32 2
  %26 = call %struct.ifnet* @uether_getifp(i32* %25)
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
  br label %180

40:                                               ; preds = %32
  %41 = load i32, i32* @SMSC_FLAG_LINK, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %44 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %43, i32 0, i32 0
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
  br i1 %57, label %58, label %72

58:                                               ; preds = %40
  %59 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %60 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @IFM_SUBTYPE(i32 %61)
  switch i32 %62, label %70 [
    i32 128, label %63
    i32 129, label %63
    i32 130, label %69
  ]

63:                                               ; preds = %58, %58
  %64 = load i32, i32* @SMSC_FLAG_LINK, align 4
  %65 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %66 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %71

69:                                               ; preds = %58
  br label %71

70:                                               ; preds = %58
  br label %71

71:                                               ; preds = %70, %69, %63
  br label %72

72:                                               ; preds = %71, %40
  %73 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %74 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @SMSC_FLAG_LINK, align 4
  %77 = and i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %81 = call i32 @smsc_dbg_printf(%struct.smsc_softc* %80, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %180

82:                                               ; preds = %72
  %83 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %84 = load i32, i32* @SMSC_AFC_CFG, align 4
  %85 = call i32 @smsc_read_reg(%struct.smsc_softc* %83, i32 %84, i32* %9)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @smsc_warn_printf(%struct.smsc_softc* %89, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  br label %180

92:                                               ; preds = %82
  %93 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %94 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @IFM_OPTIONS(i32 %95)
  %97 = load i32, i32* @IFM_FDX, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %138

100:                                              ; preds = %92
  %101 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %102 = call i32 @smsc_dbg_printf(%struct.smsc_softc* %101, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %103 = load i32, i32* @SMSC_MAC_CSR_RCVOWN, align 4
  %104 = xor i32 %103, -1
  %105 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %106 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, %104
  store i32 %108, i32* %106, align 4
  %109 = load i32, i32* @SMSC_MAC_CSR_FDPX, align 4
  %110 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %111 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  %114 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %115 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @IFM_OPTIONS(i32 %116)
  %118 = load i32, i32* @IFM_ETH_RXPAUSE, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %100
  store i32 -65534, i32* %8, align 4
  br label %123

122:                                              ; preds = %100
  store i32 0, i32* %8, align 4
  br label %123

123:                                              ; preds = %122, %121
  %124 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %125 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @IFM_OPTIONS(i32 %126)
  %128 = load i32, i32* @IFM_ETH_TXPAUSE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %123
  %132 = load i32, i32* %9, align 4
  %133 = or i32 %132, 15
  store i32 %133, i32* %9, align 4
  br label %137

134:                                              ; preds = %123
  %135 = load i32, i32* %9, align 4
  %136 = and i32 %135, -16
  store i32 %136, i32* %9, align 4
  br label %137

137:                                              ; preds = %134, %131
  br label %154

138:                                              ; preds = %92
  %139 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %140 = call i32 @smsc_dbg_printf(%struct.smsc_softc* %139, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %141 = load i32, i32* @SMSC_MAC_CSR_FDPX, align 4
  %142 = xor i32 %141, -1
  %143 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %144 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, %142
  store i32 %146, i32* %144, align 4
  %147 = load i32, i32* @SMSC_MAC_CSR_RCVOWN, align 4
  %148 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %149 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 4
  store i32 0, i32* %8, align 4
  %152 = load i32, i32* %9, align 4
  %153 = or i32 %152, 15
  store i32 %153, i32* %9, align 4
  br label %154

154:                                              ; preds = %138, %137
  %155 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %156 = load i32, i32* @SMSC_MAC_CSR, align 4
  %157 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %158 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @smsc_write_reg(%struct.smsc_softc* %155, i32 %156, i32 %159)
  store i32 %160, i32* %7, align 4
  %161 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %162 = load i32, i32* @SMSC_FLOW, align 4
  %163 = load i32, i32* %8, align 4
  %164 = call i32 @smsc_write_reg(%struct.smsc_softc* %161, i32 %162, i32 %163)
  %165 = load i32, i32* %7, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %7, align 4
  %167 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %168 = load i32, i32* @SMSC_AFC_CFG, align 4
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @smsc_write_reg(%struct.smsc_softc* %167, i32 %168, i32 %169)
  %171 = load i32, i32* %7, align 4
  %172 = add nsw i32 %171, %170
  store i32 %172, i32* %7, align 4
  %173 = load i32, i32* %7, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %154
  %176 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %177 = load i32, i32* %7, align 4
  %178 = call i32 @smsc_warn_printf(%struct.smsc_softc* %176, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %177)
  br label %179

179:                                              ; preds = %175, %154
  br label %180

180:                                              ; preds = %179, %88, %79, %39
  %181 = load i32, i32* %6, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %180
  %184 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %185 = call i32 @SMSC_UNLOCK(%struct.smsc_softc* %184)
  br label %186

186:                                              ; preds = %183, %180
  ret void
}

declare dso_local %struct.smsc_softc* @device_get_softc(i32) #1

declare dso_local %struct.mii_data* @uether_getmii(i32*) #1

declare dso_local i32 @mtx_owned(i32*) #1

declare dso_local i32 @SMSC_LOCK(%struct.smsc_softc*) #1

declare dso_local %struct.ifnet* @uether_getifp(i32*) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @smsc_dbg_printf(%struct.smsc_softc*, i8*) #1

declare dso_local i32 @smsc_read_reg(%struct.smsc_softc*, i32, i32*) #1

declare dso_local i32 @smsc_warn_printf(%struct.smsc_softc*, i8*, i32) #1

declare dso_local i32 @IFM_OPTIONS(i32) #1

declare dso_local i32 @smsc_write_reg(%struct.smsc_softc*, i32, i32) #1

declare dso_local i32 @SMSC_UNLOCK(%struct.smsc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
