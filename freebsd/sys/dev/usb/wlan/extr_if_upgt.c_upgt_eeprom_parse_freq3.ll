; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_eeprom_parse_freq3.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_eeprom_parse_freq3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upgt_softc = type { %struct.upgt_lmac_freq3* }
%struct.upgt_lmac_freq3 = type { i32 }
%struct.upgt_eeprom_freq3_header = type { i32, i32 }

@UPGT_DEBUG_FW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"flags=0x%02x elements=%d\0A\00", align 1
@UPGT_EEPROM_SIZE = common dso_local global i32 0, align 4
@IEEE80211_CHAN_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"frequence=%d, channel=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.upgt_softc*, i32*, i32)* @upgt_eeprom_parse_freq3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @upgt_eeprom_parse_freq3(%struct.upgt_softc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.upgt_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.upgt_eeprom_freq3_header*, align 8
  %8 = alloca %struct.upgt_lmac_freq3*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.upgt_softc* %0, %struct.upgt_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = bitcast i32* %13 to %struct.upgt_eeprom_freq3_header*
  store %struct.upgt_eeprom_freq3_header* %14, %struct.upgt_eeprom_freq3_header** %7, align 8
  %15 = load %struct.upgt_eeprom_freq3_header*, %struct.upgt_eeprom_freq3_header** %7, align 8
  %16 = getelementptr inbounds %struct.upgt_eeprom_freq3_header, %struct.upgt_eeprom_freq3_header* %15, i64 1
  %17 = bitcast %struct.upgt_eeprom_freq3_header* %16 to %struct.upgt_lmac_freq3*
  store %struct.upgt_lmac_freq3* %17, %struct.upgt_lmac_freq3** %8, align 8
  %18 = load %struct.upgt_eeprom_freq3_header*, %struct.upgt_eeprom_freq3_header** %7, align 8
  %19 = getelementptr inbounds %struct.upgt_eeprom_freq3_header, %struct.upgt_eeprom_freq3_header* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.upgt_eeprom_freq3_header*, %struct.upgt_eeprom_freq3_header** %7, align 8
  %22 = getelementptr inbounds %struct.upgt_eeprom_freq3_header, %struct.upgt_eeprom_freq3_header* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %25 = load i32, i32* @UPGT_DEBUG_FW, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @DPRINTF(%struct.upgt_softc* %24, i32 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @UPGT_EEPROM_SIZE, align 4
  %31 = sext i32 %30 to i64
  %32 = udiv i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = icmp sge i32 %29, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %3
  br label %83

36:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %80, %36
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %83

41:                                               ; preds = %37
  %42 = load %struct.upgt_lmac_freq3*, %struct.upgt_lmac_freq3** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.upgt_lmac_freq3, %struct.upgt_lmac_freq3* %42, i64 %44
  %46 = getelementptr inbounds %struct.upgt_lmac_freq3, %struct.upgt_lmac_freq3* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le16toh(i32 %47)
  %49 = call i32 @ieee80211_mhz2ieee(i32 %48, i32 0)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %52 = icmp uge i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  br label %80

54:                                               ; preds = %41
  %55 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %56 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %55, i32 0, i32 0
  %57 = load %struct.upgt_lmac_freq3*, %struct.upgt_lmac_freq3** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.upgt_lmac_freq3, %struct.upgt_lmac_freq3* %57, i64 %59
  %61 = load %struct.upgt_lmac_freq3*, %struct.upgt_lmac_freq3** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.upgt_lmac_freq3, %struct.upgt_lmac_freq3* %61, i64 %63
  %65 = bitcast %struct.upgt_lmac_freq3* %60 to i8*
  %66 = bitcast %struct.upgt_lmac_freq3* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 4, i1 false)
  %67 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %68 = load i32, i32* @UPGT_DEBUG_FW, align 4
  %69 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %70 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %69, i32 0, i32 0
  %71 = load %struct.upgt_lmac_freq3*, %struct.upgt_lmac_freq3** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.upgt_lmac_freq3, %struct.upgt_lmac_freq3* %71, i64 %73
  %75 = getelementptr inbounds %struct.upgt_lmac_freq3, %struct.upgt_lmac_freq3* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le16toh(i32 %76)
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @DPRINTF(%struct.upgt_softc* %67, i32 %68, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %54, %53
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %37

83:                                               ; preds = %35, %37
  ret void
}

declare dso_local i32 @DPRINTF(%struct.upgt_softc*, i32, i8*, i32, i32) #1

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
