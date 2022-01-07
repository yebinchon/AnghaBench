; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211vap = type { i32, i32, %struct.ieee80211com* }
%struct.ieee80211com = type { i64, i32 }
%struct.rtwn_vap = type { i64 }
%struct.ieee80211_node = type { i64, i32, i32 }

@IEEE80211_CHAN_ANYC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@R92C_MSR_INFRA = common dso_local global i32 0, align 4
@R92C_MSR_ADHOC = common dso_local global i32 0, align 4
@R92C_MSR_AP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"undefined opmode %d\0A\00", align 1
@R92C_BCN_PSR_RPT = common dso_local global i32 0, align 4
@R92C_RXFLTMAP2 = common dso_local global i32 0, align 4
@R92C_TXPAUSE = common dso_local global i64 0, align 8
@IEEE80211_C_PMGT = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@rtwn_pwrmode_init = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"unable to push beacon into the chip, error %d\0A\00", align 1
@RTWN_TEMP_MEASURED = common dso_local global i32 0, align 4
@rtwn_calib_to = common dso_local global i32 0, align 4
@RTWN_LED_LINK = common dso_local global i32 0, align 4
@R92C_MAC_SPEC_SIFS = common dso_local global i64 0, align 8
@R92C_R2T_SIFS = common dso_local global i64 0, align 8
@R92C_SIFS_CCK = common dso_local global i64 0, align 8
@R92C_SIFS_OFDM = common dso_local global i64 0, align 8
@R92C_SPEC_SIFS = common dso_local global i64 0, align 8
@R92C_T2T_SIFS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtwn_softc*, %struct.ieee80211vap*)* @rtwn_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtwn_run(%struct.rtwn_softc* %0, %struct.ieee80211vap* %1) #0 {
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca %struct.rtwn_vap*, align 8
  %7 = alloca %struct.ieee80211_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  store %struct.ieee80211vap* %1, %struct.ieee80211vap** %4, align 8
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %10, i32 0, i32 2
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %11, align 8
  store %struct.ieee80211com* %12, %struct.ieee80211com** %5, align 8
  %13 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %14 = call %struct.rtwn_vap* @RTWN_VAP(%struct.ieee80211vap* %13)
  store %struct.rtwn_vap* %14, %struct.rtwn_vap** %6, align 8
  %15 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %16 = call i32 @RTWN_ASSERT_LOCKED(%struct.rtwn_softc* %15)
  store i32 0, i32* %9, align 4
  %17 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.ieee80211_node* @ieee80211_ref_node(i32 %19)
  store %struct.ieee80211_node* %20, %struct.ieee80211_node** %7, align 8
  %21 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %22 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IEEE80211_CHAN_ANYC, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %2
  %27 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %28 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IEEE80211_CHAN_ANYC, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26, %2
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %9, align 4
  br label %195

34:                                               ; preds = %26
  %35 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %36 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %44 [
    i32 128, label %38
    i32 129, label %40
    i32 130, label %42
  ]

38:                                               ; preds = %34
  %39 = load i32, i32* @R92C_MSR_INFRA, align 4
  store i32 %39, i32* %8, align 4
  br label %52

40:                                               ; preds = %34
  %41 = load i32, i32* @R92C_MSR_ADHOC, align 4
  store i32 %41, i32* %8, align 4
  br label %52

42:                                               ; preds = %34
  %43 = load i32, i32* @R92C_MSR_AP, align 4
  store i32 %43, i32* %8, align 4
  br label %52

44:                                               ; preds = %34
  %45 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %46 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @KASSERT(i32 0, i8* %49)
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %9, align 4
  br label %195

52:                                               ; preds = %42, %40, %38
  %53 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.rtwn_vap*, %struct.rtwn_vap** %6, align 8
  %56 = getelementptr inbounds %struct.rtwn_vap, %struct.rtwn_vap* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @rtwn_set_mode(%struct.rtwn_softc* %53, i32 %54, i64 %57)
  %59 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %60 = load i32, i32* @R92C_BCN_PSR_RPT, align 4
  %61 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %62 = call i32 @IEEE80211_NODE_AID(%struct.ieee80211_node* %61)
  %63 = or i32 49152, %62
  %64 = call i32 @rtwn_write_2(%struct.rtwn_softc* %59, i32 %60, i32 %63)
  %65 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %66 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %67 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.rtwn_vap*, %struct.rtwn_vap** %6, align 8
  %70 = getelementptr inbounds %struct.rtwn_vap, %struct.rtwn_vap* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @rtwn_set_bssid(%struct.rtwn_softc* %65, i32 %68, i64 %71)
  %73 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %74 = load %struct.rtwn_vap*, %struct.rtwn_vap** %6, align 8
  %75 = getelementptr inbounds %struct.rtwn_vap, %struct.rtwn_vap* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @R92C_BCN_INTERVAL(i64 %76)
  %78 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %79 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @rtwn_write_2(%struct.rtwn_softc* %73, i32 %77, i32 %80)
  %82 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %83 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %86 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %84, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %52
  %90 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %91 = load i32, i32* @R92C_RXFLTMAP2, align 4
  %92 = call i32 @rtwn_write_2(%struct.rtwn_softc* %90, i32 %91, i32 65535)
  %93 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %94 = load i64, i64* @R92C_TXPAUSE, align 8
  %95 = call i32 @rtwn_write_1(%struct.rtwn_softc* %93, i64 %94, i32 0)
  br label %96

96:                                               ; preds = %89, %52
  %97 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %98 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @IEEE80211_C_PMGT, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %128

103:                                              ; preds = %96
  %104 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %105 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 128
  br i1 %107, label %108, label %128

108:                                              ; preds = %103
  %109 = load %struct.rtwn_vap*, %struct.rtwn_vap** %6, align 8
  %110 = getelementptr inbounds %struct.rtwn_vap, %struct.rtwn_vap* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %128

113:                                              ; preds = %108
  %114 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %115 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %116 = call i32 @rtwn_tx_fwpkt_check(%struct.rtwn_softc* %114, %struct.ieee80211vap* %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %195

120:                                              ; preds = %113
  %121 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %122 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %121, i32 0, i32 7
  %123 = load i32, i32* @hz, align 4
  %124 = mul nsw i32 5, %123
  %125 = load i32, i32* @rtwn_pwrmode_init, align 4
  %126 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %127 = call i32 @callout_reset(i32* %122, i32 %124, i32 %125, %struct.rtwn_softc* %126)
  br label %128

128:                                              ; preds = %120, %108, %103, %96
  %129 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %130 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %131 = call i32 @rtwn_tsf_sync_enable(%struct.rtwn_softc* %129, %struct.ieee80211vap* %130)
  %132 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %133 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp eq i32 %134, 130
  br i1 %135, label %141, label %136

136:                                              ; preds = %128
  %137 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %138 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp eq i32 %139, 129
  br i1 %140, label %141, label %154

141:                                              ; preds = %136, %128
  %142 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %143 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %144 = call i32 @rtwn_setup_beacon(%struct.rtwn_softc* %142, %struct.ieee80211_node* %143)
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %141
  %148 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %149 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @device_printf(i32 %150, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %151)
  br label %195

153:                                              ; preds = %141
  br label %154

154:                                              ; preds = %153, %136
  %155 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %156 = call i32 @rtwn_set_ack_preamble(%struct.rtwn_softc* %155)
  %157 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %158 = call i32 @rtwn_calc_basicrates(%struct.rtwn_softc* %157)
  %159 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %160 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %163 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp eq i64 %161, %164
  br i1 %165, label %166, label %194

166:                                              ; preds = %154
  %167 = load i32, i32* @RTWN_TEMP_MEASURED, align 4
  %168 = xor i32 %167, -1
  %169 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %170 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = and i32 %171, %168
  store i32 %172, i32* %170, align 4
  %173 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %174 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %177 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %176, i32 0, i32 4
  store i32 %175, i32* %177, align 8
  %178 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %179 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %178, i32 0, i32 2
  %180 = load i32, i32* @hz, align 4
  %181 = mul nsw i32 2, %180
  %182 = load i32, i32* @rtwn_calib_to, align 4
  %183 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %184 = call i32 @callout_reset(i32* %179, i32 %181, i32 %182, %struct.rtwn_softc* %183)
  %185 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %186 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %166
  %190 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %191 = load i32, i32* @RTWN_LED_LINK, align 4
  %192 = call i32 @rtwn_set_led(%struct.rtwn_softc* %190, i32 %191, i32 1)
  br label %193

193:                                              ; preds = %189, %166
  br label %194

194:                                              ; preds = %193, %154
  br label %195

195:                                              ; preds = %194, %147, %119, %44, %32
  %196 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %197 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %196)
  %198 = load i32, i32* %9, align 4
  ret i32 %198
}

declare dso_local %struct.rtwn_vap* @RTWN_VAP(%struct.ieee80211vap*) #1

declare dso_local i32 @RTWN_ASSERT_LOCKED(%struct.rtwn_softc*) #1

declare dso_local %struct.ieee80211_node* @ieee80211_ref_node(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @rtwn_set_mode(%struct.rtwn_softc*, i32, i64) #1

declare dso_local i32 @rtwn_write_2(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @IEEE80211_NODE_AID(%struct.ieee80211_node*) #1

declare dso_local i32 @rtwn_set_bssid(%struct.rtwn_softc*, i32, i64) #1

declare dso_local i32 @R92C_BCN_INTERVAL(i64) #1

declare dso_local i32 @rtwn_write_1(%struct.rtwn_softc*, i64, i32) #1

declare dso_local i32 @rtwn_tx_fwpkt_check(%struct.rtwn_softc*, %struct.ieee80211vap*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_tsf_sync_enable(%struct.rtwn_softc*, %struct.ieee80211vap*) #1

declare dso_local i32 @rtwn_setup_beacon(%struct.rtwn_softc*, %struct.ieee80211_node*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @rtwn_set_ack_preamble(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_calc_basicrates(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_set_led(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
