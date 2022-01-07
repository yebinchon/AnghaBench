; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_add_channel_band.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_add_channel_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32* }
%struct.ieee80211_channel = type { i32 }

@IWM_DEVICE_FAMILY_7000 = common dso_local global i64 0, align 8
@iwm_nvm_channels = common dso_local global i32* null, align 8
@iwm_nvm_channels_8000 = common dso_local global i32* null, align 8
@IWM_NVM_CHANNEL_VALID = common dso_local global i32 0, align 4
@IWM_DEBUG_EEPROM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Ch. %d Flags %x [%sGHz] - No traffic\0A\00", align 1
@IWM_NUM_2GHZ_CHANNELS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"5.2\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"2.4\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Ch. %d Flags %x [%sGHz] - Added\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwm_softc*, %struct.ieee80211_channel*, i32, i32*, i32, i64, i32*)* @iwm_add_channel_band to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwm_add_channel_band(%struct.iwm_softc* %0, %struct.ieee80211_channel* %1, i32 %2, i32* %3, i32 %4, i64 %5, i32* %6) #0 {
  %8 = alloca %struct.iwm_softc*, align 8
  %9 = alloca %struct.ieee80211_channel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %8, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i32* %6, i32** %14, align 8
  %20 = load %struct.iwm_softc*, %struct.iwm_softc** %8, align 8
  %21 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %15, align 8
  br label %25

25:                                               ; preds = %95, %7
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %13, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %98

30:                                               ; preds = %25
  %31 = load i32*, i32** %15, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = call i32 @le16_to_cpup(i32* %34)
  store i32 %35, i32* %17, align 4
  %36 = load %struct.iwm_softc*, %struct.iwm_softc** %8, align 8
  %37 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IWM_DEVICE_FAMILY_7000, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %30
  %44 = load i32*, i32** @iwm_nvm_channels, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %18, align 4
  br label %55

49:                                               ; preds = %30
  %50 = load i32*, i32** @iwm_nvm_channels_8000, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %18, align 4
  br label %55

55:                                               ; preds = %49, %43
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* @IWM_NVM_CHANNEL_VALID, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %55
  %61 = load %struct.iwm_softc*, %struct.iwm_softc** %8, align 8
  %62 = load i32, i32* @IWM_DEBUG_EEPROM, align 4
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @IWM_NUM_2GHZ_CHANNELS, align 4
  %67 = icmp sge i32 %65, %66
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %70 = call i32 @IWM_DPRINTF(%struct.iwm_softc* %61, i32 %62, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64, i8* %69)
  br label %95

71:                                               ; preds = %55
  %72 = load i32, i32* %17, align 4
  %73 = call i32 @iwm_eeprom_channel_flags(i32 %72)
  store i32 %73, i32* %16, align 4
  %74 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* %18, align 4
  %78 = load i32, i32* %16, align 4
  %79 = load i32*, i32** %14, align 8
  %80 = call i32 @ieee80211_add_channel(%struct.ieee80211_channel* %74, i32 %75, i32* %76, i32 %77, i32 0, i32 0, i32 %78, i32* %79)
  store i32 %80, i32* %19, align 4
  %81 = load i32, i32* %19, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %71
  br label %98

84:                                               ; preds = %71
  %85 = load %struct.iwm_softc*, %struct.iwm_softc** %8, align 8
  %86 = load i32, i32* @IWM_DEBUG_EEPROM, align 4
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @IWM_NUM_2GHZ_CHANNELS, align 4
  %91 = icmp sge i32 %89, %90
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %94 = call i32 @IWM_DPRINTF(%struct.iwm_softc* %85, i32 %86, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %87, i32 %88, i8* %93)
  br label %95

95:                                               ; preds = %84, %60
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  br label %25

98:                                               ; preds = %83, %25
  ret void
}

declare dso_local i32 @le16_to_cpup(i32*) #1

declare dso_local i32 @IWM_DPRINTF(%struct.iwm_softc*, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @iwm_eeprom_channel_flags(i32) #1

declare dso_local i32 @ieee80211_add_channel(%struct.ieee80211_channel*, i32, i32*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
