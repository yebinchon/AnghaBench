; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_eeprom_parse_freq4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_eeprom_parse_freq4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upgt_softc = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64, %struct.upgt_eeprom_freq4_2 }
%struct.upgt_eeprom_freq4_2 = type { i32 }
%struct.upgt_eeprom_freq4_header = type { i32, i32, i32 }
%struct.upgt_eeprom_freq4_1 = type { i32, i64 }

@UPGT_DEBUG_FW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"flags=0x%02x elements=%d settings=%d\0A\00", align 1
@UPGT_EEPROM_SIZE = common dso_local global i32 0, align 4
@IEEE80211_CHAN_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"frequence=%d, channel=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @upgt_eeprom_parse_freq4(%struct.upgt_softc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.upgt_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.upgt_eeprom_freq4_header*, align 8
  %8 = alloca %struct.upgt_eeprom_freq4_1*, align 8
  %9 = alloca %struct.upgt_eeprom_freq4_2*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.upgt_softc* %0, %struct.upgt_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = bitcast i32* %16 to %struct.upgt_eeprom_freq4_header*
  store %struct.upgt_eeprom_freq4_header* %17, %struct.upgt_eeprom_freq4_header** %7, align 8
  %18 = load %struct.upgt_eeprom_freq4_header*, %struct.upgt_eeprom_freq4_header** %7, align 8
  %19 = getelementptr inbounds %struct.upgt_eeprom_freq4_header, %struct.upgt_eeprom_freq4_header* %18, i64 1
  %20 = bitcast %struct.upgt_eeprom_freq4_header* %19 to %struct.upgt_eeprom_freq4_1*
  store %struct.upgt_eeprom_freq4_1* %20, %struct.upgt_eeprom_freq4_1** %8, align 8
  %21 = load %struct.upgt_eeprom_freq4_header*, %struct.upgt_eeprom_freq4_header** %7, align 8
  %22 = getelementptr inbounds %struct.upgt_eeprom_freq4_header, %struct.upgt_eeprom_freq4_header* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %14, align 4
  %24 = load %struct.upgt_eeprom_freq4_header*, %struct.upgt_eeprom_freq4_header** %7, align 8
  %25 = getelementptr inbounds %struct.upgt_eeprom_freq4_header, %struct.upgt_eeprom_freq4_header* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %12, align 4
  %27 = load %struct.upgt_eeprom_freq4_header*, %struct.upgt_eeprom_freq4_header** %7, align 8
  %28 = getelementptr inbounds %struct.upgt_eeprom_freq4_header, %struct.upgt_eeprom_freq4_header* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %13, align 4
  %30 = load %struct.upgt_eeprom_freq4_header*, %struct.upgt_eeprom_freq4_header** %7, align 8
  %31 = getelementptr inbounds %struct.upgt_eeprom_freq4_header, %struct.upgt_eeprom_freq4_header* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %34 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %36 = load i32, i32* @UPGT_DEBUG_FW, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call i32 (%struct.upgt_softc*, i32, i8*, i32, i32, ...) @DPRINTF(%struct.upgt_softc* %35, i32 %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @UPGT_EEPROM_SIZE, align 4
  %43 = sext i32 %42 to i64
  %44 = udiv i64 %43, 16
  %45 = trunc i64 %44 to i32
  %46 = icmp sge i32 %41, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %3
  br label %125

48:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %122, %48
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %125

53:                                               ; preds = %49
  %54 = load %struct.upgt_eeprom_freq4_1*, %struct.upgt_eeprom_freq4_1** %8, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.upgt_eeprom_freq4_1, %struct.upgt_eeprom_freq4_1* %54, i64 %56
  %58 = getelementptr inbounds %struct.upgt_eeprom_freq4_1, %struct.upgt_eeprom_freq4_1* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @le16toh(i32 %59)
  %61 = call i32 @ieee80211_mhz2ieee(i32 %60, i32 0)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %64 = icmp uge i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %122

66:                                               ; preds = %53
  %67 = load %struct.upgt_eeprom_freq4_1*, %struct.upgt_eeprom_freq4_1** %8, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.upgt_eeprom_freq4_1, %struct.upgt_eeprom_freq4_1* %67, i64 %69
  %71 = getelementptr inbounds %struct.upgt_eeprom_freq4_1, %struct.upgt_eeprom_freq4_1* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to %struct.upgt_eeprom_freq4_2*
  store %struct.upgt_eeprom_freq4_2* %73, %struct.upgt_eeprom_freq4_2** %9, align 8
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %107, %66
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %110

78:                                               ; preds = %74
  %79 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %80 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %80, align 8
  %82 = load i32, i32* %15, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %81, i64 %83
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load %struct.upgt_eeprom_freq4_2*, %struct.upgt_eeprom_freq4_2** %9, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.upgt_eeprom_freq4_2, %struct.upgt_eeprom_freq4_2* %90, i64 %92
  %94 = bitcast %struct.upgt_eeprom_freq4_2* %89 to i8*
  %95 = bitcast %struct.upgt_eeprom_freq4_2* %93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %94, i8* align 4 %95, i64 4, i1 false)
  %96 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %97 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %97, align 8
  %99 = load i32, i32* %15, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %98, i64 %100
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  store i64 0, i64* %106, align 8
  br label %107

107:                                              ; preds = %78
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %11, align 4
  br label %74

110:                                              ; preds = %74
  %111 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %112 = load i32, i32* @UPGT_DEBUG_FW, align 4
  %113 = load %struct.upgt_eeprom_freq4_1*, %struct.upgt_eeprom_freq4_1** %8, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.upgt_eeprom_freq4_1, %struct.upgt_eeprom_freq4_1* %113, i64 %115
  %117 = getelementptr inbounds %struct.upgt_eeprom_freq4_1, %struct.upgt_eeprom_freq4_1* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @le16toh(i32 %118)
  %120 = load i32, i32* %15, align 4
  %121 = call i32 (%struct.upgt_softc*, i32, i8*, i32, i32, ...) @DPRINTF(%struct.upgt_softc* %111, i32 %112, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %110, %65
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %10, align 4
  br label %49

125:                                              ; preds = %47, %49
  ret void
}

declare dso_local i32 @DPRINTF(%struct.upgt_softc*, i32, i8*, i32, i32, ...) #1

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
