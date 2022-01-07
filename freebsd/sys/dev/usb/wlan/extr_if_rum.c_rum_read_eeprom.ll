; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rum_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@RT2573_EEPROM_ADDRESS = common dso_local global i32 0, align 4
@RT2573_EEPROM_ANTENNA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"RF revision=%d\0A\00", align 1
@RT2573_EEPROM_CONFIG2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"External 2GHz LNA=%d\0AExternal 5GHz LNA=%d\0A\00", align 1
@RT2573_EEPROM_RSSI_2GHZ_OFFSET = common dso_local global i32 0, align 4
@RT2573_EEPROM_RSSI_5GHZ_OFFSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"RSSI 2GHz corr=%d\0ARSSI 5GHz corr=%d\0A\00", align 1
@RT2573_EEPROM_FREQ_OFFSET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"RF freq=%d\0A\00", align 1
@RT2573_EEPROM_TXPOWER = common dso_local global i32 0, align 4
@RT2573_EEPROM_BBP_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rum_softc*)* @rum_read_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rum_read_eeprom(%struct.rum_softc* %0) #0 {
  %2 = alloca %struct.rum_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.rum_softc* %0, %struct.rum_softc** %2, align 8
  %4 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %5 = load i32, i32* @RT2573_EEPROM_ADDRESS, align 4
  %6 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %7 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %6, i32 0, i32 12
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @rum_eeprom_read(%struct.rum_softc* %4, i32 %5, i32* %9, i32 6)
  %11 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %12 = load i32, i32* @RT2573_EEPROM_ANTENNA, align 4
  %13 = call i32 @rum_eeprom_read(%struct.rum_softc* %11, i32 %12, i32* %3, i32 2)
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @le16toh(i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = ashr i32 %16, 11
  %18 = and i32 %17, 31
  %19 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %20 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %3, align 4
  %22 = ashr i32 %21, 10
  %23 = and i32 %22, 1
  %24 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %25 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %3, align 4
  %27 = ashr i32 %26, 4
  %28 = and i32 %27, 3
  %29 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %30 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %3, align 4
  %32 = ashr i32 %31, 2
  %33 = and i32 %32, 3
  %34 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %35 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %3, align 4
  %37 = and i32 %36, 3
  %38 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %39 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %41 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %45 = load i32, i32* @RT2573_EEPROM_CONFIG2, align 4
  %46 = call i32 @rum_eeprom_read(%struct.rum_softc* %44, i32 %45, i32* %3, i32 2)
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @le16toh(i32 %47)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = ashr i32 %49, 6
  %51 = and i32 %50, 1
  %52 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %53 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %3, align 4
  %55 = ashr i32 %54, 4
  %56 = and i32 %55, 1
  %57 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %58 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 8
  %59 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %60 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %63 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %64)
  %66 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %67 = load i32, i32* @RT2573_EEPROM_RSSI_2GHZ_OFFSET, align 4
  %68 = call i32 @rum_eeprom_read(%struct.rum_softc* %66, i32 %67, i32* %3, i32 2)
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @le16toh(i32 %69)
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* %3, align 4
  %72 = and i32 %71, 255
  %73 = icmp ne i32 %72, 255
  br i1 %73, label %74, label %82

74:                                               ; preds = %1
  %75 = load i32, i32* %3, align 4
  %76 = and i32 %75, 255
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  %79 = ptrtoint i8* %78 to i32
  %80 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %81 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %80, i32 0, i32 7
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %74, %1
  %83 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %84 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %85, -10
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %89 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 4
  %91 = icmp sgt i32 %90, 10
  br i1 %91, label %92, label %95

92:                                               ; preds = %87, %82
  %93 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %94 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %93, i32 0, i32 7
  store i32 0, i32* %94, align 4
  br label %95

95:                                               ; preds = %92, %87
  %96 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %97 = load i32, i32* @RT2573_EEPROM_RSSI_5GHZ_OFFSET, align 4
  %98 = call i32 @rum_eeprom_read(%struct.rum_softc* %96, i32 %97, i32* %3, i32 2)
  %99 = load i32, i32* %3, align 4
  %100 = call i32 @le16toh(i32 %99)
  store i32 %100, i32* %3, align 4
  %101 = load i32, i32* %3, align 4
  %102 = and i32 %101, 255
  %103 = icmp ne i32 %102, 255
  br i1 %103, label %104, label %112

104:                                              ; preds = %95
  %105 = load i32, i32* %3, align 4
  %106 = and i32 %105, 255
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to i8*
  %109 = ptrtoint i8* %108 to i32
  %110 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %111 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %110, i32 0, i32 8
  store i32 %109, i32* %111, align 8
  br label %112

112:                                              ; preds = %104, %95
  %113 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %114 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %113, i32 0, i32 8
  %115 = load i32, i32* %114, align 8
  %116 = icmp slt i32 %115, -10
  br i1 %116, label %122, label %117

117:                                              ; preds = %112
  %118 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %119 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %118, i32 0, i32 8
  %120 = load i32, i32* %119, align 8
  %121 = icmp sgt i32 %120, 10
  br i1 %121, label %122, label %125

122:                                              ; preds = %117, %112
  %123 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %124 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %123, i32 0, i32 8
  store i32 0, i32* %124, align 8
  br label %125

125:                                              ; preds = %122, %117
  %126 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %127 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %132 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %131, i32 0, i32 7
  %133 = load i32, i32* %132, align 4
  %134 = sub nsw i32 %133, 14
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %130, %125
  %136 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %137 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %142 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %141, i32 0, i32 8
  %143 = load i32, i32* %142, align 8
  %144 = sub nsw i32 %143, 14
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %140, %135
  %146 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %147 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %146, i32 0, i32 7
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %150 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %149, i32 0, i32 8
  %151 = load i32, i32* %150, align 8
  %152 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %148, i32 %151)
  %153 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %154 = load i32, i32* @RT2573_EEPROM_FREQ_OFFSET, align 4
  %155 = call i32 @rum_eeprom_read(%struct.rum_softc* %153, i32 %154, i32* %3, i32 2)
  %156 = load i32, i32* %3, align 4
  %157 = call i32 @le16toh(i32 %156)
  store i32 %157, i32* %3, align 4
  %158 = load i32, i32* %3, align 4
  %159 = and i32 %158, 255
  %160 = icmp ne i32 %159, 255
  br i1 %160, label %161, label %166

161:                                              ; preds = %145
  %162 = load i32, i32* %3, align 4
  %163 = and i32 %162, 255
  %164 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %165 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %164, i32 0, i32 9
  store i32 %163, i32* %165, align 4
  br label %166

166:                                              ; preds = %161, %145
  %167 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %168 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %167, i32 0, i32 9
  %169 = load i32, i32* %168, align 4
  %170 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %169)
  %171 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %172 = load i32, i32* @RT2573_EEPROM_TXPOWER, align 4
  %173 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %174 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %173, i32 0, i32 10
  %175 = load i32*, i32** %174, align 8
  %176 = call i32 @rum_eeprom_read(%struct.rum_softc* %171, i32 %172, i32* %175, i32 14)
  %177 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %178 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %177, i32 0, i32 10
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 14
  %181 = call i32 @memset(i32* %180, i32 24, i32 -6)
  %182 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %183 = load i32, i32* @RT2573_EEPROM_BBP_BASE, align 4
  %184 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %185 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %184, i32 0, i32 11
  %186 = load i32*, i32** %185, align 8
  %187 = call i32 @rum_eeprom_read(%struct.rum_softc* %182, i32 %183, i32* %186, i32 32)
  ret void
}

declare dso_local i32 @rum_eeprom_read(%struct.rum_softc*, i32, i32*, i32) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @DPRINTF(i8*, i32, ...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
