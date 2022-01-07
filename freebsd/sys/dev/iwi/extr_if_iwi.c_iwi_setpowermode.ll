; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_setpowermode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_setpowermode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_softc = type { i32 }
%struct.ieee80211vap = type { i32 }

@IEEE80211_F_PMGTON = common dso_local global i32 0, align 4
@IWI_POWER_MODE_MAX = common dso_local global i32 0, align 4
@IWI_POWER_MODE_CAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Setting power mode to %u\0A\00", align 1
@IWI_CMD_SET_POWER_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwi_softc*, %struct.ieee80211vap*)* @iwi_setpowermode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwi_setpowermode(%struct.iwi_softc* %0, %struct.ieee80211vap* %1) #0 {
  %3 = alloca %struct.iwi_softc*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca i32, align 4
  store %struct.iwi_softc* %0, %struct.iwi_softc** %3, align 8
  store %struct.ieee80211vap* %1, %struct.ieee80211vap** %4, align 8
  %6 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %7 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @IEEE80211_F_PMGTON, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @IWI_POWER_MODE_MAX, align 4
  %14 = call i32 @htole32(i32 %13)
  store i32 %14, i32* %5, align 4
  br label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @IWI_POWER_MODE_CAM, align 4
  %17 = call i32 @htole32(i32 %16)
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @le32toh(i32 %19)
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 @DPRINTF(i8* %22)
  %24 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %25 = load i32, i32* @IWI_CMD_SET_POWER_MODE, align 4
  %26 = call i32 @iwi_cmd(%struct.iwi_softc* %24, i32 %25, i32* %5, i32 4)
  ret i32 %26
}

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @iwi_cmd(%struct.iwi_softc*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
