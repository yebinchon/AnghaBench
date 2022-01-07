; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_setup_tx_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_setup_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rum_softc = type { %struct.wmeParams*, %struct.ieee80211com }
%struct.wmeParams = type { i32, i32, i32 }
%struct.ieee80211com = type { i32, i32 }
%struct.rum_tx_desc = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i64 }
%struct.ieee80211_key = type { i32, %struct.ieee80211_cipher* }
%struct.ieee80211_cipher = type { i32 (%struct.ieee80211_key*, i64*)*, i64, i64, i64 }

@RT2573_TX_VALID = common dso_local global i32 0, align 4
@IEEE80211_KEY_SWCRYPT = common dso_local global i32 0, align 4
@IEEE80211_CRC_LEN = common dso_local global i64 0, align 8
@IEEE80211_T_OFDM = common dso_local global i64 0, align 8
@RT2573_TX_OFDM = common dso_local global i32 0, align 4
@RT2573_PLCP_LENGEXT = common dso_local global i32 0, align 4
@IEEE80211_F_SHPREAMBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rum_softc*, %struct.rum_tx_desc*, %struct.ieee80211_key*, i32, i64, i64, i32, i32, i32)* @rum_setup_tx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rum_setup_tx_desc(%struct.rum_softc* %0, %struct.rum_tx_desc* %1, %struct.ieee80211_key* %2, i32 %3, i64 %4, i64 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.rum_softc*, align 8
  %11 = alloca %struct.rum_tx_desc*, align 8
  %12 = alloca %struct.ieee80211_key*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ieee80211com*, align 8
  %20 = alloca %struct.wmeParams*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.ieee80211_cipher*, align 8
  store %struct.rum_softc* %0, %struct.rum_softc** %10, align 8
  store %struct.rum_tx_desc* %1, %struct.rum_tx_desc** %11, align 8
  store %struct.ieee80211_key* %2, %struct.ieee80211_key** %12, align 8
  store i32 %3, i32* %13, align 4
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %24 = load %struct.rum_softc*, %struct.rum_softc** %10, align 8
  %25 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %24, i32 0, i32 1
  store %struct.ieee80211com* %25, %struct.ieee80211com** %19, align 8
  %26 = load %struct.rum_softc*, %struct.rum_softc** %10, align 8
  %27 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %26, i32 0, i32 0
  %28 = load %struct.wmeParams*, %struct.wmeParams** %27, align 8
  %29 = load i64, i64* %15, align 8
  %30 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %28, i64 %29
  store %struct.wmeParams* %30, %struct.wmeParams** %20, align 8
  %31 = load i32, i32* @RT2573_TX_VALID, align 4
  %32 = load i32, i32* %13, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %17, align 4
  %35 = shl i32 %34, 16
  %36 = load i32, i32* %13, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %13, align 4
  %38 = load %struct.ieee80211_key*, %struct.ieee80211_key** %12, align 8
  %39 = icmp ne %struct.ieee80211_key* %38, null
  br i1 %39, label %40, label %76

40:                                               ; preds = %9
  %41 = load %struct.ieee80211_key*, %struct.ieee80211_key** %12, align 8
  %42 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @IEEE80211_KEY_SWCRYPT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %76, label %47

47:                                               ; preds = %40
  %48 = load %struct.ieee80211_key*, %struct.ieee80211_key** %12, align 8
  %49 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %48, i32 0, i32 1
  %50 = load %struct.ieee80211_cipher*, %struct.ieee80211_cipher** %49, align 8
  store %struct.ieee80211_cipher* %50, %struct.ieee80211_cipher** %23, align 8
  %51 = load %struct.ieee80211_cipher*, %struct.ieee80211_cipher** %23, align 8
  %52 = getelementptr inbounds %struct.ieee80211_cipher, %struct.ieee80211_cipher* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ieee80211_cipher*, %struct.ieee80211_cipher** %23, align 8
  %55 = getelementptr inbounds %struct.ieee80211_cipher, %struct.ieee80211_cipher* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = load %struct.ieee80211_cipher*, %struct.ieee80211_cipher** %23, align 8
  %59 = getelementptr inbounds %struct.ieee80211_cipher, %struct.ieee80211_cipher* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = load i32, i32* %17, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %17, align 4
  %66 = load %struct.rum_tx_desc*, %struct.rum_tx_desc** %11, align 8
  %67 = getelementptr inbounds %struct.rum_tx_desc, %struct.rum_tx_desc* %66, i32 0, i32 9
  store i64 0, i64* %67, align 8
  %68 = load %struct.ieee80211_cipher*, %struct.ieee80211_cipher** %23, align 8
  %69 = getelementptr inbounds %struct.ieee80211_cipher, %struct.ieee80211_cipher* %68, i32 0, i32 0
  %70 = load i32 (%struct.ieee80211_key*, i64*)*, i32 (%struct.ieee80211_key*, i64*)** %69, align 8
  %71 = load %struct.ieee80211_key*, %struct.ieee80211_key** %12, align 8
  %72 = load %struct.rum_tx_desc*, %struct.rum_tx_desc** %11, align 8
  %73 = getelementptr inbounds %struct.rum_tx_desc, %struct.rum_tx_desc* %72, i32 0, i32 8
  %74 = bitcast i32* %73 to i64*
  %75 = call i32 %70(%struct.ieee80211_key* %71, i64* %74)
  br label %76

76:                                               ; preds = %47, %40, %9
  %77 = load i32, i32* %18, align 4
  %78 = call i32 @rum_plcp_signal(i32 %77)
  %79 = load %struct.rum_tx_desc*, %struct.rum_tx_desc** %11, align 8
  %80 = getelementptr inbounds %struct.rum_tx_desc, %struct.rum_tx_desc* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.rum_tx_desc*, %struct.rum_tx_desc** %11, align 8
  %82 = getelementptr inbounds %struct.rum_tx_desc, %struct.rum_tx_desc* %81, i32 0, i32 1
  store i32 4, i32* %82, align 4
  %83 = load i64, i64* @IEEE80211_CRC_LEN, align 8
  %84 = load i32, i32* %17, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %17, align 4
  %88 = load %struct.ieee80211com*, %struct.ieee80211com** %19, align 8
  %89 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %18, align 4
  %92 = call i64 @ieee80211_rate2phytype(i32 %90, i32 %91)
  %93 = load i64, i64* @IEEE80211_T_OFDM, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %109

95:                                               ; preds = %76
  %96 = load i32, i32* @RT2573_TX_OFDM, align 4
  %97 = load i32, i32* %13, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %17, align 4
  %100 = and i32 %99, 4095
  store i32 %100, i32* %21, align 4
  %101 = load i32, i32* %21, align 4
  %102 = ashr i32 %101, 6
  %103 = load %struct.rum_tx_desc*, %struct.rum_tx_desc** %11, align 8
  %104 = getelementptr inbounds %struct.rum_tx_desc, %struct.rum_tx_desc* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* %21, align 4
  %106 = and i32 %105, 63
  %107 = load %struct.rum_tx_desc*, %struct.rum_tx_desc** %11, align 8
  %108 = getelementptr inbounds %struct.rum_tx_desc, %struct.rum_tx_desc* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  br label %160

109:                                              ; preds = %76
  %110 = load i32, i32* %18, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store i32 2, i32* %18, align 4
  br label %113

113:                                              ; preds = %112, %109
  %114 = load i32, i32* %17, align 4
  %115 = mul nsw i32 16, %114
  %116 = load i32, i32* %18, align 4
  %117 = call i32 @howmany(i32 %115, i32 %116)
  store i32 %117, i32* %21, align 4
  %118 = load i32, i32* %18, align 4
  %119 = icmp eq i32 %118, 22
  br i1 %119, label %120, label %136

120:                                              ; preds = %113
  %121 = load i32, i32* %17, align 4
  %122 = mul nsw i32 16, %121
  %123 = srem i32 %122, 22
  store i32 %123, i32* %22, align 4
  %124 = load i32, i32* %22, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %120
  %127 = load i32, i32* %22, align 4
  %128 = icmp slt i32 %127, 7
  br i1 %128, label %129, label %135

129:                                              ; preds = %126
  %130 = load i32, i32* @RT2573_PLCP_LENGEXT, align 4
  %131 = load %struct.rum_tx_desc*, %struct.rum_tx_desc** %11, align 8
  %132 = getelementptr inbounds %struct.rum_tx_desc, %struct.rum_tx_desc* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %129, %126, %120
  br label %136

136:                                              ; preds = %135, %113
  %137 = load i32, i32* %21, align 4
  %138 = ashr i32 %137, 8
  %139 = load %struct.rum_tx_desc*, %struct.rum_tx_desc** %11, align 8
  %140 = getelementptr inbounds %struct.rum_tx_desc, %struct.rum_tx_desc* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  %141 = load i32, i32* %21, align 4
  %142 = and i32 %141, 255
  %143 = load %struct.rum_tx_desc*, %struct.rum_tx_desc** %11, align 8
  %144 = getelementptr inbounds %struct.rum_tx_desc, %struct.rum_tx_desc* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* %18, align 4
  %146 = icmp ne i32 %145, 2
  br i1 %146, label %147, label %159

147:                                              ; preds = %136
  %148 = load %struct.ieee80211com*, %struct.ieee80211com** %19, align 8
  %149 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @IEEE80211_F_SHPREAMBLE, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %147
  %155 = load %struct.rum_tx_desc*, %struct.rum_tx_desc** %11, align 8
  %156 = getelementptr inbounds %struct.rum_tx_desc, %struct.rum_tx_desc* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, 8
  store i32 %158, i32* %156, align 8
  br label %159

159:                                              ; preds = %154, %147, %136
  br label %160

160:                                              ; preds = %159, %95
  %161 = load i32, i32* %13, align 4
  %162 = call i32 @htole32(i32 %161)
  %163 = load %struct.rum_tx_desc*, %struct.rum_tx_desc** %11, align 8
  %164 = getelementptr inbounds %struct.rum_tx_desc, %struct.rum_tx_desc* %163, i32 0, i32 7
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* %16, align 4
  %166 = load %struct.rum_tx_desc*, %struct.rum_tx_desc** %11, align 8
  %167 = getelementptr inbounds %struct.rum_tx_desc, %struct.rum_tx_desc* %166, i32 0, i32 4
  store i32 %165, i32* %167, align 8
  %168 = load i64, i64* %14, align 8
  %169 = load %struct.rum_tx_desc*, %struct.rum_tx_desc** %11, align 8
  %170 = getelementptr inbounds %struct.rum_tx_desc, %struct.rum_tx_desc* %169, i32 0, i32 5
  store i64 %168, i64* %170, align 8
  %171 = load i64, i64* %15, align 8
  %172 = call i32 @RT2573_QID(i64 %171)
  %173 = load %struct.wmeParams*, %struct.wmeParams** %20, align 8
  %174 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @RT2573_AIFSN(i32 %175)
  %177 = or i32 %172, %176
  %178 = load %struct.wmeParams*, %struct.wmeParams** %20, align 8
  %179 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @RT2573_LOGCWMIN(i32 %180)
  %182 = or i32 %177, %181
  %183 = load %struct.wmeParams*, %struct.wmeParams** %20, align 8
  %184 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @RT2573_LOGCWMAX(i32 %185)
  %187 = or i32 %182, %186
  %188 = call i32 @htole16(i32 %187)
  %189 = load %struct.rum_tx_desc*, %struct.rum_tx_desc** %11, align 8
  %190 = getelementptr inbounds %struct.rum_tx_desc, %struct.rum_tx_desc* %189, i32 0, i32 6
  store i32 %188, i32* %190, align 8
  ret void
}

declare dso_local i32 @rum_plcp_signal(i32) #1

declare dso_local i64 @ieee80211_rate2phytype(i32, i32) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @RT2573_QID(i64) #1

declare dso_local i32 @RT2573_AIFSN(i32) #1

declare dso_local i32 @RT2573_LOGCWMIN(i32) #1

declare dso_local i32 @RT2573_LOGCWMAX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
