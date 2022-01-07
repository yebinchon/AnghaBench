; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.an_softc = type { i32, i32, i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i64, %struct.ifnet*, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ifnet = type { i32, i32 }
%struct.an_ltv_gen = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"tx buffer allocation failed\0A\00", align 1
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@AN_RXMODE_BC_ADDR = common dso_local global i32 0, align 4
@AN_RXMODE_ADDR = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@AN_RXMODE_BC_MC_ADDR = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@AN_MONITOR = common dso_local global i32 0, align 4
@AN_MONITOR_ANY_BSS = common dso_local global i32 0, align 4
@AN_RXMODE_80211_MONITOR_ANYBSS = common dso_local global i32 0, align 4
@AN_RXMODE_NO_8023_HEADER = common dso_local global i32 0, align 4
@AN_RXMODE_80211_MONITOR_CURBSS = common dso_local global i32 0, align 4
@AN_RID_SSIDLIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to set ssid list\0A\00", align 1
@AN_RID_APLIST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to set AP list\0A\00", align 1
@AN_RID_GENCONFIG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to set configuration\0A\00", align 1
@AN_CMD_ENABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"failed to enable MAC\0A\00", align 1
@AN_CMD_SET_MODE = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@an_stats_update = common dso_local global i32 0, align 4
@AN_RXMODE_NORMALIZED_RSSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.an_softc*)* @an_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @an_init_locked(%struct.an_softc* %0) #0 {
  %2 = alloca %struct.an_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.an_softc* %0, %struct.an_softc** %2, align 8
  %4 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %5 = call i32 @AN_LOCK_ASSERT(%struct.an_softc* %4)
  %6 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %7 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %6, i32 0, i32 7
  %8 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  store %struct.ifnet* %8, %struct.ifnet** %3, align 8
  %9 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %10 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %9, i32 0, i32 9
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %227

14:                                               ; preds = %1
  %15 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %16 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %23 = call i32 @an_stop(%struct.an_softc* %22)
  br label %24

24:                                               ; preds = %21, %14
  %25 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %26 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %25, i32 0, i32 8
  store i64 0, i64* %26, align 8
  %27 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %28 = call i64 @an_init_tx_ring(%struct.an_softc* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %24
  %31 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %32 = call i32 @an_reset(%struct.an_softc* %31)
  %33 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %34 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %39 = call i32 @an_init_mpi350_desc(%struct.an_softc* %38)
  br label %40

40:                                               ; preds = %37, %30
  %41 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %42 = call i64 @an_init_tx_ring(%struct.an_softc* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %46 = call i32 @if_printf(%struct.ifnet* %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %227

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %24
  %49 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %50 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %49, i32 0, i32 7
  %51 = load %struct.ifnet*, %struct.ifnet** %50, align 8
  %52 = call i64 @IF_LLADDR(%struct.ifnet* %51)
  %53 = inttoptr i64 %52 to i8*
  %54 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %55 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  %57 = bitcast i32* %56 to i8*
  %58 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %59 = call i32 @bcopy(i8* %53, i8* %57, i32 %58)
  %60 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %61 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IFF_BROADCAST, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %48
  %67 = load i32, i32* @AN_RXMODE_BC_ADDR, align 4
  %68 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %69 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  br label %76

71:                                               ; preds = %48
  %72 = load i32, i32* @AN_RXMODE_ADDR, align 4
  %73 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %74 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  br label %76

76:                                               ; preds = %71, %66
  %77 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %78 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @IFF_MULTICAST, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load i32, i32* @AN_RXMODE_BC_MC_ADDR, align 4
  %85 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %86 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 8
  br label %88

88:                                               ; preds = %83, %76
  %89 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %90 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @IFF_PROMISC, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %129

95:                                               ; preds = %88
  %96 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %97 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @AN_MONITOR, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %128

102:                                              ; preds = %95
  %103 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %104 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @AN_MONITOR_ANY_BSS, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %102
  %110 = load i32, i32* @AN_RXMODE_80211_MONITOR_ANYBSS, align 4
  %111 = load i32, i32* @AN_RXMODE_NO_8023_HEADER, align 4
  %112 = or i32 %110, %111
  %113 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %114 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %112
  store i32 %117, i32* %115, align 8
  br label %127

118:                                              ; preds = %102
  %119 = load i32, i32* @AN_RXMODE_80211_MONITOR_CURBSS, align 4
  %120 = load i32, i32* @AN_RXMODE_NO_8023_HEADER, align 4
  %121 = or i32 %119, %120
  %122 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %123 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %121
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %118, %109
  br label %128

128:                                              ; preds = %127, %95
  br label %129

129:                                              ; preds = %128, %88
  %130 = load i32, i32* @AN_RID_SSIDLIST, align 4
  %131 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %132 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  store i32 %130, i32* %133, align 4
  %134 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %135 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %134, i32 0, i32 5
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  store i32 4, i32* %136, align 8
  %137 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %138 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %139 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %138, i32 0, i32 5
  %140 = bitcast %struct.TYPE_4__* %139 to %struct.an_ltv_gen*
  %141 = call i64 @an_write_record(%struct.an_softc* %137, %struct.an_ltv_gen* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %129
  %144 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %145 = call i32 @if_printf(%struct.ifnet* %144, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %227

146:                                              ; preds = %129
  %147 = load i32, i32* @AN_RID_APLIST, align 4
  %148 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %149 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 1
  store i32 %147, i32* %150, align 4
  %151 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %152 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  store i32 4, i32* %153, align 8
  %154 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %155 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %156 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %155, i32 0, i32 4
  %157 = bitcast %struct.TYPE_5__* %156 to %struct.an_ltv_gen*
  %158 = call i64 @an_write_record(%struct.an_softc* %154, %struct.an_ltv_gen* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %146
  %161 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %162 = call i32 @if_printf(%struct.ifnet* %161, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %227

163:                                              ; preds = %146
  %164 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %165 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  store i32 4, i32* %166, align 4
  %167 = load i32, i32* @AN_RID_GENCONFIG, align 4
  %168 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %169 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 2
  store i32 %167, i32* %170, align 8
  %171 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %172 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %173 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %172, i32 0, i32 3
  %174 = bitcast %struct.TYPE_6__* %173 to %struct.an_ltv_gen*
  %175 = call i64 @an_write_record(%struct.an_softc* %171, %struct.an_ltv_gen* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %163
  %178 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %179 = call i32 @if_printf(%struct.ifnet* %178, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %227

180:                                              ; preds = %163
  %181 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %182 = load i32, i32* @AN_CMD_ENABLE, align 4
  %183 = call i64 @an_cmd(%struct.an_softc* %181, i32 %182, i32 0)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %180
  %186 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %187 = call i32 @if_printf(%struct.ifnet* %186, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %227

188:                                              ; preds = %180
  %189 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %190 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @IFF_PROMISC, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %188
  %196 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %197 = load i32, i32* @AN_CMD_SET_MODE, align 4
  %198 = call i64 @an_cmd(%struct.an_softc* %196, i32 %197, i32 65535)
  br label %199

199:                                              ; preds = %195, %188
  %200 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %201 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %202 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = call i32 @AN_INT_EN(i64 %203)
  %205 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %206 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @AN_INTRS(i64 %207)
  %209 = call i32 @CSR_WRITE_2(%struct.an_softc* %200, i32 %204, i32 %208)
  %210 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %211 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %212 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %213, %210
  store i32 %214, i32* %212, align 4
  %215 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %216 = xor i32 %215, -1
  %217 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %218 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = and i32 %219, %216
  store i32 %220, i32* %218, align 4
  %221 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %222 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %221, i32 0, i32 1
  %223 = load i32, i32* @hz, align 4
  %224 = load i32, i32* @an_stats_update, align 4
  %225 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %226 = call i32 @callout_reset(i32* %222, i32 %223, i32 %224, %struct.an_softc* %225)
  br label %227

227:                                              ; preds = %199, %185, %177, %160, %143, %44, %13
  ret void
}

declare dso_local i32 @AN_LOCK_ASSERT(%struct.an_softc*) #1

declare dso_local i32 @an_stop(%struct.an_softc*) #1

declare dso_local i64 @an_init_tx_ring(%struct.an_softc*) #1

declare dso_local i32 @an_reset(%struct.an_softc*) #1

declare dso_local i32 @an_init_mpi350_desc(%struct.an_softc*) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i64 @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i64 @an_write_record(%struct.an_softc*, %struct.an_ltv_gen*) #1

declare dso_local i64 @an_cmd(%struct.an_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.an_softc*, i32, i32) #1

declare dso_local i32 @AN_INT_EN(i64) #1

declare dso_local i32 @AN_INTRS(i64) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.an_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
