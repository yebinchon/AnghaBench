; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_wme_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_wme_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { %struct.run_softc* }
%struct.run_softc = type { i32 }
%struct.chanAccParams = type { %struct.wmeParams* }
%struct.wmeParams = type { i32, i32, i32, i32 }

@WME_NUM_AC = common dso_local global i32 0, align 4
@RT2860_WMM_AIFSN_CFG = common dso_local global i32 0, align 4
@WME_AC_VO = common dso_local global i64 0, align 8
@WME_AC_VI = common dso_local global i64 0, align 8
@WME_AC_BK = common dso_local global i64 0, align 8
@WME_AC_BE = common dso_local global i64 0, align 8
@RT2860_WMM_CWMIN_CFG = common dso_local global i32 0, align 4
@RT2860_WMM_CWMAX_CFG = common dso_local global i32 0, align 4
@RT2860_WMM_TXOP0_CFG = common dso_local global i32 0, align 4
@RT2860_WMM_TXOP1_CFG = common dso_local global i32 0, align 4
@RUN_DEBUG_USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"WME update failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211com*)* @run_wme_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_wme_update(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.chanAccParams, align 8
  %4 = alloca %struct.run_softc*, align 8
  %5 = alloca %struct.wmeParams*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %8 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %8, i32 0, i32 0
  %10 = load %struct.run_softc*, %struct.run_softc** %9, align 8
  store %struct.run_softc* %10, %struct.run_softc** %4, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %12 = call i32 @ieee80211_wme_ic_getparams(%struct.ieee80211com* %11, %struct.chanAccParams* %3)
  %13 = getelementptr inbounds %struct.chanAccParams, %struct.chanAccParams* %3, i32 0, i32 0
  %14 = load %struct.wmeParams*, %struct.wmeParams** %13, align 8
  store %struct.wmeParams* %14, %struct.wmeParams** %5, align 8
  %15 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %16 = call i32 @RUN_LOCK(%struct.run_softc* %15)
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %60, %1
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @WME_NUM_AC, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %63

21:                                               ; preds = %17
  %22 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @RT2860_EDCA_AC_CFG(i32 %23)
  %25 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %25, i64 %27
  %29 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 16
  %32 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %32, i64 %34
  %36 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 12
  %39 = or i32 %31, %38
  %40 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %40, i64 %42
  %44 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 8
  %47 = or i32 %39, %46
  %48 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %48, i64 %50
  %52 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %47, %53
  %55 = call i32 @run_write(%struct.run_softc* %22, i32 %24, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %21
  br label %197

59:                                               ; preds = %21
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %17

63:                                               ; preds = %17
  %64 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %65 = load i32, i32* @RT2860_WMM_AIFSN_CFG, align 4
  %66 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %67 = load i64, i64* @WME_AC_VO, align 8
  %68 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %66, i64 %67
  %69 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 12
  %72 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %73 = load i64, i64* @WME_AC_VI, align 8
  %74 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %72, i64 %73
  %75 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 8
  %78 = or i32 %71, %77
  %79 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %80 = load i64, i64* @WME_AC_BK, align 8
  %81 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %79, i64 %80
  %82 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %83, 4
  %85 = or i32 %78, %84
  %86 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %87 = load i64, i64* @WME_AC_BE, align 8
  %88 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %86, i64 %87
  %89 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %85, %90
  %92 = call i32 @run_write(%struct.run_softc* %64, i32 %65, i32 %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %63
  br label %197

96:                                               ; preds = %63
  %97 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %98 = load i32, i32* @RT2860_WMM_CWMIN_CFG, align 4
  %99 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %100 = load i64, i64* @WME_AC_VO, align 8
  %101 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %99, i64 %100
  %102 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %103, 12
  %105 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %106 = load i64, i64* @WME_AC_VI, align 8
  %107 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %105, i64 %106
  %108 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = shl i32 %109, 8
  %111 = or i32 %104, %110
  %112 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %113 = load i64, i64* @WME_AC_BK, align 8
  %114 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %112, i64 %113
  %115 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = shl i32 %116, 4
  %118 = or i32 %111, %117
  %119 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %120 = load i64, i64* @WME_AC_BE, align 8
  %121 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %119, i64 %120
  %122 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %118, %123
  %125 = call i32 @run_write(%struct.run_softc* %97, i32 %98, i32 %124)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %96
  br label %197

129:                                              ; preds = %96
  %130 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %131 = load i32, i32* @RT2860_WMM_CWMAX_CFG, align 4
  %132 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %133 = load i64, i64* @WME_AC_VO, align 8
  %134 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %132, i64 %133
  %135 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = shl i32 %136, 12
  %138 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %139 = load i64, i64* @WME_AC_VI, align 8
  %140 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %138, i64 %139
  %141 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = shl i32 %142, 8
  %144 = or i32 %137, %143
  %145 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %146 = load i64, i64* @WME_AC_BK, align 8
  %147 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %145, i64 %146
  %148 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = shl i32 %149, 4
  %151 = or i32 %144, %150
  %152 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %153 = load i64, i64* @WME_AC_BE, align 8
  %154 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %152, i64 %153
  %155 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %151, %156
  %158 = call i32 @run_write(%struct.run_softc* %130, i32 %131, i32 %157)
  store i32 %158, i32* %7, align 4
  %159 = load i32, i32* %7, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %129
  br label %197

162:                                              ; preds = %129
  %163 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %164 = load i32, i32* @RT2860_WMM_TXOP0_CFG, align 4
  %165 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %166 = load i64, i64* @WME_AC_BK, align 8
  %167 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %165, i64 %166
  %168 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = shl i32 %169, 16
  %171 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %172 = load i64, i64* @WME_AC_BE, align 8
  %173 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %171, i64 %172
  %174 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %170, %175
  %177 = call i32 @run_write(%struct.run_softc* %163, i32 %164, i32 %176)
  store i32 %177, i32* %7, align 4
  %178 = load i32, i32* %7, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %162
  br label %197

181:                                              ; preds = %162
  %182 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %183 = load i32, i32* @RT2860_WMM_TXOP1_CFG, align 4
  %184 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %185 = load i64, i64* @WME_AC_VO, align 8
  %186 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %184, i64 %185
  %187 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = shl i32 %188, 16
  %190 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %191 = load i64, i64* @WME_AC_VI, align 8
  %192 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %190, i64 %191
  %193 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %189, %194
  %196 = call i32 @run_write(%struct.run_softc* %182, i32 %183, i32 %195)
  store i32 %196, i32* %7, align 4
  br label %197

197:                                              ; preds = %181, %180, %161, %128, %95, %58
  %198 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %199 = call i32 @RUN_UNLOCK(%struct.run_softc* %198)
  %200 = load i32, i32* %7, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %197
  %203 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %204 = load i32, i32* @RUN_DEBUG_USB, align 4
  %205 = call i32 @RUN_DPRINTF(%struct.run_softc* %203, i32 %204, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %206

206:                                              ; preds = %202, %197
  %207 = load i32, i32* %7, align 4
  ret i32 %207
}

declare dso_local i32 @ieee80211_wme_ic_getparams(%struct.ieee80211com*, %struct.chanAccParams*) #1

declare dso_local i32 @RUN_LOCK(%struct.run_softc*) #1

declare dso_local i32 @run_write(%struct.run_softc*, i32, i32) #1

declare dso_local i32 @RT2860_EDCA_AC_CFG(i32) #1

declare dso_local i32 @RUN_UNLOCK(%struct.run_softc*) #1

declare dso_local i32 @RUN_DPRINTF(%struct.run_softc*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
