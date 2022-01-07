; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_eeprom_parse_freq6.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_eeprom_parse_freq6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upgt_softc = type { %struct.upgt_lmac_freq6* }
%struct.upgt_lmac_freq6 = type { i32 }

@UPGT_DEBUG_FW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"elements=%d\0A\00", align 1
@UPGT_EEPROM_SIZE = common dso_local global i32 0, align 4
@IEEE80211_CHAN_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"frequence=%d, channel=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @upgt_eeprom_parse_freq6(%struct.upgt_softc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.upgt_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.upgt_lmac_freq6*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.upgt_softc* %0, %struct.upgt_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = bitcast i32* %11 to %struct.upgt_lmac_freq6*
  store %struct.upgt_lmac_freq6* %12, %struct.upgt_lmac_freq6** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = udiv i64 %14, 4
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %9, align 4
  %17 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %18 = load i32, i32* @UPGT_DEBUG_FW, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 (%struct.upgt_softc*, i32, i8*, i32, ...) @DPRINTF(%struct.upgt_softc* %17, i32 %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @UPGT_EEPROM_SIZE, align 4
  %23 = sext i32 %22 to i64
  %24 = udiv i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = icmp sge i32 %21, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %75

28:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %72, %28
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %75

33:                                               ; preds = %29
  %34 = load %struct.upgt_lmac_freq6*, %struct.upgt_lmac_freq6** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.upgt_lmac_freq6, %struct.upgt_lmac_freq6* %34, i64 %36
  %38 = getelementptr inbounds %struct.upgt_lmac_freq6, %struct.upgt_lmac_freq6* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le16toh(i32 %39)
  %41 = call i32 @ieee80211_mhz2ieee(i32 %40, i32 0)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %44 = icmp uge i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %72

46:                                               ; preds = %33
  %47 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %48 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %47, i32 0, i32 0
  %49 = load %struct.upgt_lmac_freq6*, %struct.upgt_lmac_freq6** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.upgt_lmac_freq6, %struct.upgt_lmac_freq6* %49, i64 %51
  %53 = load %struct.upgt_lmac_freq6*, %struct.upgt_lmac_freq6** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.upgt_lmac_freq6, %struct.upgt_lmac_freq6* %53, i64 %55
  %57 = bitcast %struct.upgt_lmac_freq6* %52 to i8*
  %58 = bitcast %struct.upgt_lmac_freq6* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 %58, i64 4, i1 false)
  %59 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %60 = load i32, i32* @UPGT_DEBUG_FW, align 4
  %61 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %62 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %61, i32 0, i32 0
  %63 = load %struct.upgt_lmac_freq6*, %struct.upgt_lmac_freq6** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.upgt_lmac_freq6, %struct.upgt_lmac_freq6* %63, i64 %65
  %67 = getelementptr inbounds %struct.upgt_lmac_freq6, %struct.upgt_lmac_freq6* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @le16toh(i32 %68)
  %70 = load i32, i32* %10, align 4
  %71 = call i32 (%struct.upgt_softc*, i32, i8*, i32, ...) @DPRINTF(%struct.upgt_softc* %59, i32 %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %46, %45
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %29

75:                                               ; preds = %27, %29
  ret void
}

declare dso_local i32 @DPRINTF(%struct.upgt_softc*, i32, i8*, i32, ...) #1

declare dso_local i32 @ieee80211_mhz2ieee(i32, i32) #1

declare dso_local i32 @le16toh(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
