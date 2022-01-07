; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_softc = type { i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32*, i32*, i32, i8**, i8**, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, %struct.ieee80211com }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ieee80211com = type { i32* }

@run_eeprom_read_2 = common dso_local global i32 0, align 4
@RT3070_EFUSE_CTRL = common dso_local global i32 0, align 4
@RUN_DEBUG_ROM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"EFUSE_CTRL=0x%08x\0A\00", align 1
@RT3070_SEL_EFUSE = common dso_local global i32 0, align 4
@run_efuse_read_2 = common dso_local global i32 0, align 4
@RT2860_EEPROM_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"EEPROM rev=%d, FAE=%d\0A\00", align 1
@RT2860_EEPROM_MAC01 = common dso_local global i32 0, align 4
@RT2860_EEPROM_MAC23 = common dso_local global i32 0, align 4
@RT2860_EEPROM_MAC45 = common dso_local global i32 0, align 4
@RT2860_EEPROM_BBP_BASE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"BBP%d=0x%02x\0A\00", align 1
@RT3071_EEPROM_RF_BASE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"RF%d=0x%02x\0A\00", align 1
@RT2860_EEPROM_FREQ_LEDS = common dso_local global i32 0, align 4
@RT3593_EEPROM_FREQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"EEPROM freq offset %d\0A\00", align 1
@RT3593_EEPROM_FREQ_LEDS = common dso_local global i32 0, align 4
@RT2860_EEPROM_LED1 = common dso_local global i32 0, align 4
@RT3593_EEPROM_LED1 = common dso_local global i32 0, align 4
@RT2860_EEPROM_LED2 = common dso_local global i32 0, align 4
@RT3593_EEPROM_LED2 = common dso_local global i32 0, align 4
@RT2860_EEPROM_LED3 = common dso_local global i32 0, align 4
@RT3593_EEPROM_LED3 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"EEPROM LED mode=0x%02x, LEDs=0x%04x/0x%04x/0x%04x\0A\00", align 1
@RT2860_EEPROM_ANTENNA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"invalid EEPROM antenna info, using default\0A\00", align 1
@RT3070_RF_3052 = common dso_local global i32 0, align 4
@RT3070_RF_3020 = common dso_local global i32 0, align 4
@RT2860_RF_2820 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"EEPROM RF rev=0x%04x chains=%dT%dR\0A\00", align 1
@RT2860_EEPROM_CONFIG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"EEPROM CFG 0x%04x\0A\00", align 1
@RT2860_EEPROM_DELTAPWR = common dso_local global i32 0, align 4
@RUN_DEBUG_TXPWR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"power compensation=%d (2GHz), %d (5GHz)\0A\00", align 1
@RT2860_EEPROM_RPWR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [67 x i8] c"ridx %d: power 20MHz=0x%08x, 40MHz/2GHz=0x%08x, 40MHz/5GHz=0x%08x\0A\00", align 1
@RT2860_EEPROM_RSSI1_2GHZ = common dso_local global i32 0, align 4
@RT3593_EEPROM_RSSI1_2GHZ = common dso_local global i32 0, align 4
@RT2860_EEPROM_RSSI2_2GHZ = common dso_local global i32 0, align 4
@RT3593_EEPROM_RSSI2_2GHZ = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"tx mixer gain=%u (2GHz)\0A\00", align 1
@RT3593_EEPROM_LNA_5GHZ = common dso_local global i32 0, align 4
@RT2860_EEPROM_RSSI1_5GHZ = common dso_local global i32 0, align 4
@RT3593_EEPROM_RSSI1_5GHZ = common dso_local global i32 0, align 4
@RT2860_EEPROM_RSSI2_5GHZ = common dso_local global i32 0, align 4
@RT3593_EEPROM_RSSI2_5GHZ = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [25 x i8] c"tx mixer gain=%u (5GHz)\0A\00", align 1
@RT2860_EEPROM_LNA = common dso_local global i32 0, align 4
@RT3593_EEPROM_LNA = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [34 x i8] c"invalid LNA for channel group %d\0A\00", align 1
@RUN_DEBUG_RSSI = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [34 x i8] c"invalid RSSI%d offset: %d (2GHz)\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"invalid RSSI%d offset: %d (5GHz)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.run_softc*)* @run_read_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_read_eeprom(%struct.run_softc* %0) #0 {
  %2 = alloca %struct.run_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.run_softc* %0, %struct.run_softc** %2, align 8
  %12 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %13 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %12, i32 0, i32 25
  store %struct.ieee80211com* %13, %struct.ieee80211com** %3, align 8
  %14 = load i32, i32* @run_eeprom_read_2, align 4
  %15 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %16 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %15, i32 0, i32 24
  store i32 %14, i32* %16, align 8
  %17 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %18 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sge i32 %19, 12400
  br i1 %20, label %21, label %43

21:                                               ; preds = %1
  %22 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %23 = load i32, i32* @RT3070_EFUSE_CTRL, align 4
  %24 = call i32 @run_read(%struct.run_softc* %22, i32 %23, i32* %6)
  %25 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %26 = load i32, i32* @RUN_DEBUG_ROM, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 (%struct.run_softc*, i32, i8*, i32, ...) @RUN_DPRINTF(%struct.run_softc* %25, i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @RT3070_SEL_EFUSE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %21
  %34 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %35 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 13715
  br i1 %37, label %38, label %42

38:                                               ; preds = %33, %21
  %39 = load i32, i32* @run_efuse_read_2, align 4
  %40 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %41 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %40, i32 0, i32 24
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %38, %33
  br label %43

43:                                               ; preds = %42, %1
  %44 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %45 = load i32, i32* @RT2860_EEPROM_VERSION, align 4
  %46 = call i32 @run_srom_read(%struct.run_softc* %44, i32 %45, i32* %7)
  %47 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %48 = load i32, i32* @RUN_DEBUG_ROM, align 4
  %49 = load i32, i32* %7, align 4
  %50 = ashr i32 %49, 8
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, 255
  %53 = call i32 (%struct.run_softc*, i32, i8*, i32, ...) @RUN_DPRINTF(%struct.run_softc* %47, i32 %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %52)
  %54 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %55 = load i32, i32* @RT2860_EEPROM_MAC01, align 4
  %56 = call i32 @run_srom_read(%struct.run_softc* %54, i32 %55, i32* %7)
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, 255
  %59 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %60 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 %58, i32* %62, align 4
  %63 = load i32, i32* %7, align 4
  %64 = ashr i32 %63, 8
  %65 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %66 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 %64, i32* %68, align 4
  %69 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %70 = load i32, i32* @RT2860_EEPROM_MAC23, align 4
  %71 = call i32 @run_srom_read(%struct.run_softc* %69, i32 %70, i32* %7)
  %72 = load i32, i32* %7, align 4
  %73 = and i32 %72, 255
  %74 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %75 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  store i32 %73, i32* %77, align 4
  %78 = load i32, i32* %7, align 4
  %79 = ashr i32 %78, 8
  %80 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %81 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 3
  store i32 %79, i32* %83, align 4
  %84 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %85 = load i32, i32* @RT2860_EEPROM_MAC45, align 4
  %86 = call i32 @run_srom_read(%struct.run_softc* %84, i32 %85, i32* %7)
  %87 = load i32, i32* %7, align 4
  %88 = and i32 %87, 255
  %89 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %90 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 4
  store i32 %88, i32* %92, align 4
  %93 = load i32, i32* %7, align 4
  %94 = ashr i32 %93, 8
  %95 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %96 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 5
  store i32 %94, i32* %98, align 4
  %99 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %100 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %101, 13715
  br i1 %102, label %103, label %210

103:                                              ; preds = %43
  store i32 0, i32* %10, align 4
  br label %104

104:                                              ; preds = %150, %103
  %105 = load i32, i32* %10, align 4
  %106 = icmp slt i32 %105, 10
  br i1 %106, label %107, label %153

107:                                              ; preds = %104
  %108 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %109 = load i32, i32* @RT2860_EEPROM_BBP_BASE, align 4
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %109, %110
  %112 = call i32 @run_srom_read(%struct.run_softc* %108, i32 %111, i32* %7)
  %113 = load i32, i32* %7, align 4
  %114 = and i32 %113, 255
  %115 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %116 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %115, i32 0, i32 23
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  store i32 %114, i32* %121, align 4
  %122 = load i32, i32* %7, align 4
  %123 = ashr i32 %122, 8
  %124 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %125 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %124, i32 0, i32 23
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  store i32 %123, i32* %130, align 4
  %131 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %132 = load i32, i32* @RUN_DEBUG_ROM, align 4
  %133 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %134 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %133, i32 0, i32 23
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %142 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %141, i32 0, i32 23
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (%struct.run_softc*, i32, i8*, i32, ...) @RUN_DPRINTF(%struct.run_softc* %131, i32 %132, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %140, i32 %148)
  br label %150

150:                                              ; preds = %107
  %151 = load i32, i32* %10, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %10, align 4
  br label %104

153:                                              ; preds = %104
  %154 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %155 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp sge i32 %156, 12401
  br i1 %157, label %158, label %209

158:                                              ; preds = %153
  store i32 0, i32* %10, align 4
  br label %159

159:                                              ; preds = %205, %158
  %160 = load i32, i32* %10, align 4
  %161 = icmp slt i32 %160, 10
  br i1 %161, label %162, label %208

162:                                              ; preds = %159
  %163 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %164 = load i32, i32* @RT3071_EEPROM_RF_BASE, align 4
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %164, %165
  %167 = call i32 @run_srom_read(%struct.run_softc* %163, i32 %166, i32* %7)
  %168 = load i32, i32* %7, align 4
  %169 = and i32 %168, 255
  %170 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %171 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %170, i32 0, i32 22
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = load i32, i32* %10, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  store i32 %169, i32* %176, align 4
  %177 = load i32, i32* %7, align 4
  %178 = ashr i32 %177, 8
  %179 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %180 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %179, i32 0, i32 22
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = load i32, i32* %10, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 1
  store i32 %178, i32* %185, align 4
  %186 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %187 = load i32, i32* @RUN_DEBUG_ROM, align 4
  %188 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %189 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %188, i32 0, i32 22
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %189, align 8
  %191 = load i32, i32* %10, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %197 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %196, i32 0, i32 22
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %197, align 8
  %199 = load i32, i32* %10, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 (%struct.run_softc*, i32, i8*, i32, ...) @RUN_DPRINTF(%struct.run_softc* %186, i32 %187, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %195, i32 %203)
  br label %205

205:                                              ; preds = %162
  %206 = load i32, i32* %10, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %10, align 4
  br label %159

208:                                              ; preds = %159
  br label %209

209:                                              ; preds = %208, %153
  br label %210

210:                                              ; preds = %209, %43
  %211 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %212 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %213 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = icmp ne i32 %214, 13715
  br i1 %215, label %216, label %218

216:                                              ; preds = %210
  %217 = load i32, i32* @RT2860_EEPROM_FREQ_LEDS, align 4
  br label %220

218:                                              ; preds = %210
  %219 = load i32, i32* @RT3593_EEPROM_FREQ, align 4
  br label %220

220:                                              ; preds = %218, %216
  %221 = phi i32 [ %217, %216 ], [ %219, %218 ]
  %222 = call i32 @run_srom_read(%struct.run_softc* %211, i32 %221, i32* %7)
  %223 = load i32, i32* %7, align 4
  %224 = and i32 %223, 255
  %225 = icmp ne i32 %224, 255
  br i1 %225, label %226, label %229

226:                                              ; preds = %220
  %227 = load i32, i32* %7, align 4
  %228 = and i32 %227, 255
  br label %230

229:                                              ; preds = %220
  br label %230

230:                                              ; preds = %229, %226
  %231 = phi i32 [ %228, %226 ], [ 0, %229 ]
  %232 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %233 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %232, i32 0, i32 1
  store i32 %231, i32* %233, align 4
  %234 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %235 = load i32, i32* @RUN_DEBUG_ROM, align 4
  %236 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %237 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = and i32 %238, 255
  %240 = call i32 (%struct.run_softc*, i32, i8*, i32, ...) @RUN_DPRINTF(%struct.run_softc* %234, i32 %235, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %239)
  %241 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %242 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %243 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = icmp ne i32 %244, 13715
  br i1 %245, label %246, label %248

246:                                              ; preds = %230
  %247 = load i32, i32* @RT2860_EEPROM_FREQ_LEDS, align 4
  br label %250

248:                                              ; preds = %230
  %249 = load i32, i32* @RT3593_EEPROM_FREQ_LEDS, align 4
  br label %250

250:                                              ; preds = %248, %246
  %251 = phi i32 [ %247, %246 ], [ %249, %248 ]
  %252 = call i32 @run_srom_read(%struct.run_softc* %241, i32 %251, i32* %7)
  %253 = load i32, i32* %7, align 4
  %254 = ashr i32 %253, 8
  %255 = icmp ne i32 %254, 255
  br i1 %255, label %256, label %309

256:                                              ; preds = %250
  %257 = load i32, i32* %7, align 4
  %258 = ashr i32 %257, 8
  %259 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %260 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %259, i32 0, i32 2
  store i32 %258, i32* %260, align 8
  %261 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %262 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %263 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = icmp ne i32 %264, 13715
  br i1 %265, label %266, label %268

266:                                              ; preds = %256
  %267 = load i32, i32* @RT2860_EEPROM_LED1, align 4
  br label %270

268:                                              ; preds = %256
  %269 = load i32, i32* @RT3593_EEPROM_LED1, align 4
  br label %270

270:                                              ; preds = %268, %266
  %271 = phi i32 [ %267, %266 ], [ %269, %268 ]
  %272 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %273 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %272, i32 0, i32 3
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 0
  %276 = call i32 @run_srom_read(%struct.run_softc* %261, i32 %271, i32* %275)
  %277 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %278 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %279 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = icmp ne i32 %280, 13715
  br i1 %281, label %282, label %284

282:                                              ; preds = %270
  %283 = load i32, i32* @RT2860_EEPROM_LED2, align 4
  br label %286

284:                                              ; preds = %270
  %285 = load i32, i32* @RT3593_EEPROM_LED2, align 4
  br label %286

286:                                              ; preds = %284, %282
  %287 = phi i32 [ %283, %282 ], [ %285, %284 ]
  %288 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %289 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %288, i32 0, i32 3
  %290 = load i32*, i32** %289, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 1
  %292 = call i32 @run_srom_read(%struct.run_softc* %277, i32 %287, i32* %291)
  %293 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %294 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %295 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = icmp ne i32 %296, 13715
  br i1 %297, label %298, label %300

298:                                              ; preds = %286
  %299 = load i32, i32* @RT2860_EEPROM_LED3, align 4
  br label %302

300:                                              ; preds = %286
  %301 = load i32, i32* @RT3593_EEPROM_LED3, align 4
  br label %302

302:                                              ; preds = %300, %298
  %303 = phi i32 [ %299, %298 ], [ %301, %300 ]
  %304 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %305 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %304, i32 0, i32 3
  %306 = load i32*, i32** %305, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 2
  %308 = call i32 @run_srom_read(%struct.run_softc* %293, i32 %303, i32* %307)
  br label %324

309:                                              ; preds = %250
  %310 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %311 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %310, i32 0, i32 2
  store i32 1, i32* %311, align 8
  %312 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %313 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %312, i32 0, i32 3
  %314 = load i32*, i32** %313, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 0
  store i32 21845, i32* %315, align 4
  %316 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %317 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %316, i32 0, i32 3
  %318 = load i32*, i32** %317, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 1
  store i32 8737, i32* %319, align 4
  %320 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %321 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %320, i32 0, i32 3
  %322 = load i32*, i32** %321, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 2
  store i32 22055, i32* %323, align 4
  br label %324

324:                                              ; preds = %309, %302
  %325 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %326 = load i32, i32* @RUN_DEBUG_ROM, align 4
  %327 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %328 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 8
  %330 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %331 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %330, i32 0, i32 3
  %332 = load i32*, i32** %331, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 0
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %336 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %335, i32 0, i32 3
  %337 = load i32*, i32** %336, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 1
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %341 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %340, i32 0, i32 3
  %342 = load i32*, i32** %341, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 2
  %344 = load i32, i32* %343, align 4
  %345 = call i32 (%struct.run_softc*, i32, i8*, i32, ...) @RUN_DPRINTF(%struct.run_softc* %325, i32 %326, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %329, i32 %334, i32 %339, i32 %344)
  %346 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %347 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = icmp eq i32 %348, 21392
  br i1 %349, label %355, label %350

350:                                              ; preds = %324
  %351 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %352 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = icmp eq i32 %353, 21394
  br i1 %354, label %355, label %358

355:                                              ; preds = %350, %324
  %356 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %357 = call i32 @run_srom_read(%struct.run_softc* %356, i32 0, i32* %7)
  br label %362

358:                                              ; preds = %350
  %359 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %360 = load i32, i32* @RT2860_EEPROM_ANTENNA, align 4
  %361 = call i32 @run_srom_read(%struct.run_softc* %359, i32 %360, i32* %7)
  br label %362

362:                                              ; preds = %358, %355
  %363 = load i32, i32* %7, align 4
  %364 = icmp eq i32 %363, 65535
  br i1 %364, label %365, label %405

365:                                              ; preds = %362
  %366 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %367 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %366, i32 0, i32 21
  %368 = load i32, i32* %367, align 8
  %369 = call i32 @device_printf(i32 %368, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %370 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %371 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = icmp eq i32 %372, 13682
  br i1 %373, label %374, label %382

374:                                              ; preds = %365
  %375 = load i32, i32* @RT3070_RF_3052, align 4
  %376 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %377 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %376, i32 0, i32 4
  store i32 %375, i32* %377, align 8
  %378 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %379 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %378, i32 0, i32 5
  store i32 2, i32* %379, align 4
  %380 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %381 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %380, i32 0, i32 6
  store i32 2, i32* %381, align 8
  br label %404

382:                                              ; preds = %365
  %383 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %384 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = icmp sge i32 %385, 12400
  br i1 %386, label %387, label %395

387:                                              ; preds = %382
  %388 = load i32, i32* @RT3070_RF_3020, align 4
  %389 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %390 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %389, i32 0, i32 4
  store i32 %388, i32* %390, align 8
  %391 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %392 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %391, i32 0, i32 5
  store i32 1, i32* %392, align 4
  %393 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %394 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %393, i32 0, i32 6
  store i32 1, i32* %394, align 8
  br label %403

395:                                              ; preds = %382
  %396 = load i32, i32* @RT2860_RF_2820, align 4
  %397 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %398 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %397, i32 0, i32 4
  store i32 %396, i32* %398, align 8
  %399 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %400 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %399, i32 0, i32 5
  store i32 1, i32* %400, align 4
  %401 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %402 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %401, i32 0, i32 6
  store i32 2, i32* %402, align 8
  br label %403

403:                                              ; preds = %395, %387
  br label %404

404:                                              ; preds = %403, %374
  br label %438

405:                                              ; preds = %362
  %406 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %407 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = icmp eq i32 %408, 21392
  br i1 %409, label %415, label %410

410:                                              ; preds = %405
  %411 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %412 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = icmp eq i32 %413, 21394
  br i1 %414, label %415, label %422

415:                                              ; preds = %410, %405
  %416 = load i32, i32* %7, align 4
  %417 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %418 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %417, i32 0, i32 4
  store i32 %416, i32* %418, align 8
  %419 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %420 = load i32, i32* @RT2860_EEPROM_ANTENNA, align 4
  %421 = call i32 @run_srom_read(%struct.run_softc* %419, i32 %420, i32* %7)
  br label %428

422:                                              ; preds = %410
  %423 = load i32, i32* %7, align 4
  %424 = ashr i32 %423, 8
  %425 = and i32 %424, 15
  %426 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %427 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %426, i32 0, i32 4
  store i32 %425, i32* %427, align 8
  br label %428

428:                                              ; preds = %422, %415
  %429 = load i32, i32* %7, align 4
  %430 = ashr i32 %429, 4
  %431 = and i32 %430, 15
  %432 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %433 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %432, i32 0, i32 5
  store i32 %431, i32* %433, align 4
  %434 = load i32, i32* %7, align 4
  %435 = and i32 %434, 15
  %436 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %437 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %436, i32 0, i32 6
  store i32 %435, i32* %437, align 8
  br label %438

438:                                              ; preds = %428, %404
  %439 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %440 = load i32, i32* @RUN_DEBUG_ROM, align 4
  %441 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %442 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %441, i32 0, i32 4
  %443 = load i32, i32* %442, align 8
  %444 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %445 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %444, i32 0, i32 5
  %446 = load i32, i32* %445, align 4
  %447 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %448 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %447, i32 0, i32 6
  %449 = load i32, i32* %448, align 8
  %450 = call i32 (%struct.run_softc*, i32, i8*, i32, ...) @RUN_DPRINTF(%struct.run_softc* %439, i32 %440, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %443, i32 %446, i32 %449)
  %451 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %452 = load i32, i32* @RT2860_EEPROM_CONFIG, align 4
  %453 = call i32 @run_srom_read(%struct.run_softc* %451, i32 %452, i32* %7)
  %454 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %455 = load i32, i32* @RUN_DEBUG_ROM, align 4
  %456 = load i32, i32* %7, align 4
  %457 = call i32 (%struct.run_softc*, i32, i8*, i32, ...) @RUN_DPRINTF(%struct.run_softc* %454, i32 %455, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %456)
  %458 = load i32, i32* %7, align 4
  %459 = ashr i32 %458, 8
  %460 = icmp ne i32 %459, 255
  br i1 %460, label %461, label %467

461:                                              ; preds = %438
  %462 = load i32, i32* %7, align 4
  %463 = ashr i32 %462, 15
  %464 = and i32 %463, 1
  %465 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %466 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %465, i32 0, i32 7
  store i32 %464, i32* %466, align 4
  br label %467

467:                                              ; preds = %461, %438
  %468 = load i32, i32* %7, align 4
  %469 = and i32 %468, 255
  %470 = icmp ne i32 %469, 255
  br i1 %470, label %471, label %493

471:                                              ; preds = %467
  %472 = load i32, i32* %7, align 4
  %473 = ashr i32 %472, 3
  %474 = and i32 %473, 1
  %475 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %476 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %475, i32 0, i32 8
  store i32 %474, i32* %476, align 8
  %477 = load i32, i32* %7, align 4
  %478 = ashr i32 %477, 2
  %479 = and i32 %478, 1
  %480 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %481 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %480, i32 0, i32 9
  store i32 %479, i32* %481, align 4
  %482 = load i32, i32* %7, align 4
  %483 = ashr i32 %482, 1
  %484 = and i32 %483, 1
  %485 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %486 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %485, i32 0, i32 11
  store i32 %484, i32* %486, align 4
  %487 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %488 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %487, i32 0, i32 10
  store i32 %484, i32* %488, align 8
  %489 = load i32, i32* %7, align 4
  %490 = and i32 %489, 1
  %491 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %492 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %491, i32 0, i32 12
  store i32 %490, i32* %492, align 8
  br label %493

493:                                              ; preds = %471, %467
  %494 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %495 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 8
  %497 = icmp eq i32 %496, 13715
  br i1 %497, label %498, label %501

498:                                              ; preds = %493
  %499 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %500 = call i32 @run_rt3593_get_txpower(%struct.run_softc* %499)
  br label %504

501:                                              ; preds = %493
  %502 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %503 = call i32 @run_get_txpower(%struct.run_softc* %502)
  br label %504

504:                                              ; preds = %501, %498
  %505 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %506 = load i32, i32* @RT2860_EEPROM_DELTAPWR, align 4
  %507 = call i32 @run_srom_read(%struct.run_softc* %505, i32 %506, i32* %7)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  %508 = load i32, i32* %7, align 4
  %509 = and i32 %508, 255
  %510 = icmp ne i32 %509, 255
  br i1 %510, label %511, label %525

511:                                              ; preds = %504
  %512 = load i32, i32* %7, align 4
  %513 = and i32 %512, 128
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %525

515:                                              ; preds = %511
  %516 = load i32, i32* %7, align 4
  %517 = and i32 %516, 15
  store i32 %517, i32* %4, align 4
  %518 = load i32, i32* %7, align 4
  %519 = and i32 %518, 64
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %524, label %521

521:                                              ; preds = %515
  %522 = load i32, i32* %4, align 4
  %523 = sub nsw i32 0, %522
  store i32 %523, i32* %4, align 4
  br label %524

524:                                              ; preds = %521, %515
  br label %525

525:                                              ; preds = %524, %511, %504
  %526 = load i32, i32* %7, align 4
  %527 = ashr i32 %526, 8
  store i32 %527, i32* %7, align 4
  %528 = load i32, i32* %7, align 4
  %529 = and i32 %528, 255
  %530 = icmp ne i32 %529, 255
  br i1 %530, label %531, label %545

531:                                              ; preds = %525
  %532 = load i32, i32* %7, align 4
  %533 = and i32 %532, 128
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %535, label %545

535:                                              ; preds = %531
  %536 = load i32, i32* %7, align 4
  %537 = and i32 %536, 15
  store i32 %537, i32* %5, align 4
  %538 = load i32, i32* %7, align 4
  %539 = and i32 %538, 64
  %540 = icmp ne i32 %539, 0
  br i1 %540, label %544, label %541

541:                                              ; preds = %535
  %542 = load i32, i32* %5, align 4
  %543 = sub nsw i32 0, %542
  store i32 %543, i32* %5, align 4
  br label %544

544:                                              ; preds = %541, %535
  br label %545

545:                                              ; preds = %544, %531, %525
  %546 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %547 = load i32, i32* @RUN_DEBUG_ROM, align 4
  %548 = load i32, i32* @RUN_DEBUG_TXPWR, align 4
  %549 = or i32 %547, %548
  %550 = load i32, i32* %4, align 4
  %551 = load i32, i32* %5, align 4
  %552 = call i32 (%struct.run_softc*, i32, i8*, i32, ...) @RUN_DPRINTF(%struct.run_softc* %546, i32 %549, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 %550, i32 %551)
  store i32 0, i32* %8, align 4
  br label %553

553:                                              ; preds = %627, %545
  %554 = load i32, i32* %8, align 4
  %555 = icmp slt i32 %554, 5
  br i1 %555, label %556, label %630

556:                                              ; preds = %553
  %557 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %558 = load i32, i32* @RT2860_EEPROM_RPWR, align 4
  %559 = load i32, i32* %8, align 4
  %560 = mul nsw i32 %559, 2
  %561 = add nsw i32 %558, %560
  %562 = call i32 @run_srom_read(%struct.run_softc* %557, i32 %561, i32* %7)
  %563 = load i32, i32* %7, align 4
  store i32 %563, i32* %11, align 4
  %564 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %565 = load i32, i32* @RT2860_EEPROM_RPWR, align 4
  %566 = load i32, i32* %8, align 4
  %567 = mul nsw i32 %566, 2
  %568 = add nsw i32 %565, %567
  %569 = add nsw i32 %568, 1
  %570 = call i32 @run_srom_read(%struct.run_softc* %564, i32 %569, i32* %7)
  %571 = load i32, i32* %7, align 4
  %572 = shl i32 %571, 16
  %573 = load i32, i32* %11, align 4
  %574 = or i32 %573, %572
  store i32 %574, i32* %11, align 4
  %575 = load i32, i32* %11, align 4
  %576 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %577 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %576, i32 0, i32 13
  %578 = load i32*, i32** %577, align 8
  %579 = load i32, i32* %8, align 4
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds i32, i32* %578, i64 %580
  store i32 %575, i32* %581, align 4
  %582 = load i32, i32* %11, align 4
  %583 = load i32, i32* %4, align 4
  %584 = call i8* @b4inc(i32 %582, i32 %583)
  %585 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %586 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %585, i32 0, i32 20
  %587 = load i8**, i8*** %586, align 8
  %588 = load i32, i32* %8, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds i8*, i8** %587, i64 %589
  store i8* %584, i8** %590, align 8
  %591 = load i32, i32* %11, align 4
  %592 = load i32, i32* %5, align 4
  %593 = call i8* @b4inc(i32 %591, i32 %592)
  %594 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %595 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %594, i32 0, i32 19
  %596 = load i8**, i8*** %595, align 8
  %597 = load i32, i32* %8, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds i8*, i8** %596, i64 %598
  store i8* %593, i8** %599, align 8
  %600 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %601 = load i32, i32* @RUN_DEBUG_ROM, align 4
  %602 = load i32, i32* @RUN_DEBUG_TXPWR, align 4
  %603 = or i32 %601, %602
  %604 = load i32, i32* %8, align 4
  %605 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %606 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %605, i32 0, i32 13
  %607 = load i32*, i32** %606, align 8
  %608 = load i32, i32* %8, align 4
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds i32, i32* %607, i64 %609
  %611 = load i32, i32* %610, align 4
  %612 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %613 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %612, i32 0, i32 20
  %614 = load i8**, i8*** %613, align 8
  %615 = load i32, i32* %8, align 4
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds i8*, i8** %614, i64 %616
  %618 = load i8*, i8** %617, align 8
  %619 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %620 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %619, i32 0, i32 19
  %621 = load i8**, i8*** %620, align 8
  %622 = load i32, i32* %8, align 4
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds i8*, i8** %621, i64 %623
  %625 = load i8*, i8** %624, align 8
  %626 = call i32 (%struct.run_softc*, i32, i8*, i32, ...) @RUN_DPRINTF(%struct.run_softc* %600, i32 %603, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.10, i64 0, i64 0), i32 %604, i32 %611, i8* %618, i8* %625)
  br label %627

627:                                              ; preds = %556
  %628 = load i32, i32* %8, align 4
  %629 = add nsw i32 %628, 1
  store i32 %629, i32* %8, align 4
  br label %553

630:                                              ; preds = %553
  %631 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %632 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %633 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %632, i32 0, i32 0
  %634 = load i32, i32* %633, align 8
  %635 = icmp ne i32 %634, 13715
  br i1 %635, label %636, label %638

636:                                              ; preds = %630
  %637 = load i32, i32* @RT2860_EEPROM_RSSI1_2GHZ, align 4
  br label %640

638:                                              ; preds = %630
  %639 = load i32, i32* @RT3593_EEPROM_RSSI1_2GHZ, align 4
  br label %640

640:                                              ; preds = %638, %636
  %641 = phi i32 [ %637, %636 ], [ %639, %638 ]
  %642 = call i32 @run_srom_read(%struct.run_softc* %631, i32 %641, i32* %7)
  %643 = load i32, i32* %7, align 4
  %644 = and i32 %643, 255
  %645 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %646 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %645, i32 0, i32 14
  %647 = load i32*, i32** %646, align 8
  %648 = getelementptr inbounds i32, i32* %647, i64 0
  store i32 %644, i32* %648, align 4
  %649 = load i32, i32* %7, align 4
  %650 = ashr i32 %649, 8
  %651 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %652 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %651, i32 0, i32 14
  %653 = load i32*, i32** %652, align 8
  %654 = getelementptr inbounds i32, i32* %653, i64 1
  store i32 %650, i32* %654, align 4
  %655 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %656 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %657 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %656, i32 0, i32 0
  %658 = load i32, i32* %657, align 8
  %659 = icmp ne i32 %658, 13715
  br i1 %659, label %660, label %662

660:                                              ; preds = %640
  %661 = load i32, i32* @RT2860_EEPROM_RSSI2_2GHZ, align 4
  br label %664

662:                                              ; preds = %640
  %663 = load i32, i32* @RT3593_EEPROM_RSSI2_2GHZ, align 4
  br label %664

664:                                              ; preds = %662, %660
  %665 = phi i32 [ %661, %660 ], [ %663, %662 ]
  %666 = call i32 @run_srom_read(%struct.run_softc* %655, i32 %665, i32* %7)
  %667 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %668 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %667, i32 0, i32 0
  %669 = load i32, i32* %668, align 8
  %670 = icmp sge i32 %669, 12400
  br i1 %670, label %671, label %702

671:                                              ; preds = %664
  %672 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %673 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %672, i32 0, i32 0
  %674 = load i32, i32* %673, align 8
  %675 = icmp eq i32 %674, 13715
  br i1 %675, label %676, label %685

676:                                              ; preds = %671
  %677 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %678 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %677, i32 0, i32 15
  store i32 0, i32* %678, align 8
  %679 = load i32, i32* %7, align 4
  %680 = and i32 %679, 255
  %681 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %682 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %681, i32 0, i32 14
  %683 = load i32*, i32** %682, align 8
  %684 = getelementptr inbounds i32, i32* %683, i64 2
  store i32 %680, i32* %684, align 4
  br label %695

685:                                              ; preds = %671
  %686 = load i32, i32* %7, align 4
  %687 = and i32 %686, 255
  %688 = icmp ne i32 %687, 255
  br i1 %688, label %689, label %694

689:                                              ; preds = %685
  %690 = load i32, i32* %7, align 4
  %691 = and i32 %690, 7
  %692 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %693 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %692, i32 0, i32 15
  store i32 %691, i32* %693, align 8
  br label %694

694:                                              ; preds = %689, %685
  br label %695

695:                                              ; preds = %694, %676
  %696 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %697 = load i32, i32* @RUN_DEBUG_ROM, align 4
  %698 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %699 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %698, i32 0, i32 15
  %700 = load i32, i32* %699, align 8
  %701 = call i32 (%struct.run_softc*, i32, i8*, i32, ...) @RUN_DPRINTF(%struct.run_softc* %696, i32 %697, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %700)
  br label %709

702:                                              ; preds = %664
  %703 = load i32, i32* %7, align 4
  %704 = and i32 %703, 255
  %705 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %706 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %705, i32 0, i32 14
  %707 = load i32*, i32** %706, align 8
  %708 = getelementptr inbounds i32, i32* %707, i64 2
  store i32 %704, i32* %708, align 4
  br label %709

709:                                              ; preds = %702, %695
  %710 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %711 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %710, i32 0, i32 0
  %712 = load i32, i32* %711, align 8
  %713 = icmp eq i32 %712, 13715
  br i1 %713, label %714, label %718

714:                                              ; preds = %709
  %715 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %716 = load i32, i32* @RT3593_EEPROM_LNA_5GHZ, align 4
  %717 = call i32 @run_srom_read(%struct.run_softc* %715, i32 %716, i32* %7)
  br label %718

718:                                              ; preds = %714, %709
  %719 = load i32, i32* %7, align 4
  %720 = ashr i32 %719, 8
  %721 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %722 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %721, i32 0, i32 16
  %723 = load i32*, i32** %722, align 8
  %724 = getelementptr inbounds i32, i32* %723, i64 2
  store i32 %720, i32* %724, align 4
  %725 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %726 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %727 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %726, i32 0, i32 0
  %728 = load i32, i32* %727, align 8
  %729 = icmp ne i32 %728, 13715
  br i1 %729, label %730, label %732

730:                                              ; preds = %718
  %731 = load i32, i32* @RT2860_EEPROM_RSSI1_5GHZ, align 4
  br label %734

732:                                              ; preds = %718
  %733 = load i32, i32* @RT3593_EEPROM_RSSI1_5GHZ, align 4
  br label %734

734:                                              ; preds = %732, %730
  %735 = phi i32 [ %731, %730 ], [ %733, %732 ]
  %736 = call i32 @run_srom_read(%struct.run_softc* %725, i32 %735, i32* %7)
  %737 = load i32, i32* %7, align 4
  %738 = and i32 %737, 255
  %739 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %740 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %739, i32 0, i32 17
  %741 = load i32*, i32** %740, align 8
  %742 = getelementptr inbounds i32, i32* %741, i64 0
  store i32 %738, i32* %742, align 4
  %743 = load i32, i32* %7, align 4
  %744 = ashr i32 %743, 8
  %745 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %746 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %745, i32 0, i32 17
  %747 = load i32*, i32** %746, align 8
  %748 = getelementptr inbounds i32, i32* %747, i64 1
  store i32 %744, i32* %748, align 4
  %749 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %750 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %751 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %750, i32 0, i32 0
  %752 = load i32, i32* %751, align 8
  %753 = icmp ne i32 %752, 13715
  br i1 %753, label %754, label %756

754:                                              ; preds = %734
  %755 = load i32, i32* @RT2860_EEPROM_RSSI2_5GHZ, align 4
  br label %758

756:                                              ; preds = %734
  %757 = load i32, i32* @RT3593_EEPROM_RSSI2_5GHZ, align 4
  br label %758

758:                                              ; preds = %756, %754
  %759 = phi i32 [ %755, %754 ], [ %757, %756 ]
  %760 = call i32 @run_srom_read(%struct.run_softc* %749, i32 %759, i32* %7)
  %761 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %762 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %761, i32 0, i32 0
  %763 = load i32, i32* %762, align 8
  %764 = icmp eq i32 %763, 13682
  br i1 %764, label %765, label %781

765:                                              ; preds = %758
  %766 = load i32, i32* %7, align 4
  %767 = and i32 %766, 255
  %768 = icmp ne i32 %767, 255
  br i1 %768, label %769, label %774

769:                                              ; preds = %765
  %770 = load i32, i32* %7, align 4
  %771 = and i32 %770, 7
  %772 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %773 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %772, i32 0, i32 18
  store i32 %771, i32* %773, align 8
  br label %774

774:                                              ; preds = %769, %765
  %775 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %776 = load i32, i32* @RUN_DEBUG_ROM, align 4
  %777 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %778 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %777, i32 0, i32 18
  %779 = load i32, i32* %778, align 8
  %780 = call i32 (%struct.run_softc*, i32, i8*, i32, ...) @RUN_DPRINTF(%struct.run_softc* %775, i32 %776, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %779)
  br label %788

781:                                              ; preds = %758
  %782 = load i32, i32* %7, align 4
  %783 = and i32 %782, 255
  %784 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %785 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %784, i32 0, i32 17
  %786 = load i32*, i32** %785, align 8
  %787 = getelementptr inbounds i32, i32* %786, i64 2
  store i32 %783, i32* %787, align 4
  br label %788

788:                                              ; preds = %781, %774
  %789 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %790 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %789, i32 0, i32 0
  %791 = load i32, i32* %790, align 8
  %792 = icmp eq i32 %791, 13715
  br i1 %792, label %793, label %799

793:                                              ; preds = %788
  %794 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %795 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %794, i32 0, i32 18
  store i32 0, i32* %795, align 8
  %796 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %797 = load i32, i32* @RT3593_EEPROM_LNA_5GHZ, align 4
  %798 = call i32 @run_srom_read(%struct.run_softc* %796, i32 %797, i32* %7)
  br label %799

799:                                              ; preds = %793, %788
  %800 = load i32, i32* %7, align 4
  %801 = ashr i32 %800, 8
  %802 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %803 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %802, i32 0, i32 16
  %804 = load i32*, i32** %803, align 8
  %805 = getelementptr inbounds i32, i32* %804, i64 3
  store i32 %801, i32* %805, align 4
  %806 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %807 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %808 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %807, i32 0, i32 0
  %809 = load i32, i32* %808, align 8
  %810 = icmp ne i32 %809, 13715
  br i1 %810, label %811, label %813

811:                                              ; preds = %799
  %812 = load i32, i32* @RT2860_EEPROM_LNA, align 4
  br label %815

813:                                              ; preds = %799
  %814 = load i32, i32* @RT3593_EEPROM_LNA, align 4
  br label %815

815:                                              ; preds = %813, %811
  %816 = phi i32 [ %812, %811 ], [ %814, %813 ]
  %817 = call i32 @run_srom_read(%struct.run_softc* %806, i32 %816, i32* %7)
  %818 = load i32, i32* %7, align 4
  %819 = and i32 %818, 255
  %820 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %821 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %820, i32 0, i32 16
  %822 = load i32*, i32** %821, align 8
  %823 = getelementptr inbounds i32, i32* %822, i64 0
  store i32 %819, i32* %823, align 4
  %824 = load i32, i32* %7, align 4
  %825 = ashr i32 %824, 8
  %826 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %827 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %826, i32 0, i32 16
  %828 = load i32*, i32** %827, align 8
  %829 = getelementptr inbounds i32, i32* %828, i64 1
  store i32 %825, i32* %829, align 4
  %830 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %831 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %830, i32 0, i32 16
  %832 = load i32*, i32** %831, align 8
  %833 = getelementptr inbounds i32, i32* %832, i64 2
  %834 = load i32, i32* %833, align 4
  %835 = icmp eq i32 %834, 0
  br i1 %835, label %843, label %836

836:                                              ; preds = %815
  %837 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %838 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %837, i32 0, i32 16
  %839 = load i32*, i32** %838, align 8
  %840 = getelementptr inbounds i32, i32* %839, i64 2
  %841 = load i32, i32* %840, align 4
  %842 = icmp eq i32 %841, 255
  br i1 %842, label %843, label %856

843:                                              ; preds = %836, %815
  %844 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %845 = load i32, i32* @RUN_DEBUG_ROM, align 4
  %846 = call i32 (%struct.run_softc*, i32, i8*, i32, ...) @RUN_DPRINTF(%struct.run_softc* %844, i32 %845, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i32 2)
  %847 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %848 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %847, i32 0, i32 16
  %849 = load i32*, i32** %848, align 8
  %850 = getelementptr inbounds i32, i32* %849, i64 1
  %851 = load i32, i32* %850, align 4
  %852 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %853 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %852, i32 0, i32 16
  %854 = load i32*, i32** %853, align 8
  %855 = getelementptr inbounds i32, i32* %854, i64 2
  store i32 %851, i32* %855, align 4
  br label %856

856:                                              ; preds = %843, %836
  %857 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %858 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %857, i32 0, i32 16
  %859 = load i32*, i32** %858, align 8
  %860 = getelementptr inbounds i32, i32* %859, i64 3
  %861 = load i32, i32* %860, align 4
  %862 = icmp eq i32 %861, 0
  br i1 %862, label %870, label %863

863:                                              ; preds = %856
  %864 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %865 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %864, i32 0, i32 16
  %866 = load i32*, i32** %865, align 8
  %867 = getelementptr inbounds i32, i32* %866, i64 3
  %868 = load i32, i32* %867, align 4
  %869 = icmp eq i32 %868, 255
  br i1 %869, label %870, label %883

870:                                              ; preds = %863, %856
  %871 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %872 = load i32, i32* @RUN_DEBUG_ROM, align 4
  %873 = call i32 (%struct.run_softc*, i32, i8*, i32, ...) @RUN_DPRINTF(%struct.run_softc* %871, i32 %872, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i32 3)
  %874 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %875 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %874, i32 0, i32 16
  %876 = load i32*, i32** %875, align 8
  %877 = getelementptr inbounds i32, i32* %876, i64 1
  %878 = load i32, i32* %877, align 4
  %879 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %880 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %879, i32 0, i32 16
  %881 = load i32*, i32** %880, align 8
  %882 = getelementptr inbounds i32, i32* %881, i64 3
  store i32 %878, i32* %882, align 4
  br label %883

883:                                              ; preds = %870, %863
  store i32 0, i32* %9, align 4
  br label %884

884:                                              ; preds = %966, %883
  %885 = load i32, i32* %9, align 4
  %886 = icmp slt i32 %885, 3
  br i1 %886, label %887, label %969

887:                                              ; preds = %884
  %888 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %889 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %888, i32 0, i32 14
  %890 = load i32*, i32** %889, align 8
  %891 = load i32, i32* %9, align 4
  %892 = sext i32 %891 to i64
  %893 = getelementptr inbounds i32, i32* %890, i64 %892
  %894 = load i32, i32* %893, align 4
  %895 = icmp slt i32 %894, -10
  br i1 %895, label %905, label %896

896:                                              ; preds = %887
  %897 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %898 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %897, i32 0, i32 14
  %899 = load i32*, i32** %898, align 8
  %900 = load i32, i32* %9, align 4
  %901 = sext i32 %900 to i64
  %902 = getelementptr inbounds i32, i32* %899, i64 %901
  %903 = load i32, i32* %902, align 4
  %904 = icmp sgt i32 %903, 10
  br i1 %904, label %905, label %926

905:                                              ; preds = %896, %887
  %906 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %907 = load i32, i32* @RUN_DEBUG_ROM, align 4
  %908 = load i32, i32* @RUN_DEBUG_RSSI, align 4
  %909 = or i32 %907, %908
  %910 = load i32, i32* %9, align 4
  %911 = add nsw i32 %910, 1
  %912 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %913 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %912, i32 0, i32 14
  %914 = load i32*, i32** %913, align 8
  %915 = load i32, i32* %9, align 4
  %916 = sext i32 %915 to i64
  %917 = getelementptr inbounds i32, i32* %914, i64 %916
  %918 = load i32, i32* %917, align 4
  %919 = call i32 (%struct.run_softc*, i32, i8*, i32, ...) @RUN_DPRINTF(%struct.run_softc* %906, i32 %909, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i32 %911, i32 %918)
  %920 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %921 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %920, i32 0, i32 14
  %922 = load i32*, i32** %921, align 8
  %923 = load i32, i32* %9, align 4
  %924 = sext i32 %923 to i64
  %925 = getelementptr inbounds i32, i32* %922, i64 %924
  store i32 0, i32* %925, align 4
  br label %926

926:                                              ; preds = %905, %896
  %927 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %928 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %927, i32 0, i32 17
  %929 = load i32*, i32** %928, align 8
  %930 = load i32, i32* %9, align 4
  %931 = sext i32 %930 to i64
  %932 = getelementptr inbounds i32, i32* %929, i64 %931
  %933 = load i32, i32* %932, align 4
  %934 = icmp slt i32 %933, -10
  br i1 %934, label %944, label %935

935:                                              ; preds = %926
  %936 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %937 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %936, i32 0, i32 17
  %938 = load i32*, i32** %937, align 8
  %939 = load i32, i32* %9, align 4
  %940 = sext i32 %939 to i64
  %941 = getelementptr inbounds i32, i32* %938, i64 %940
  %942 = load i32, i32* %941, align 4
  %943 = icmp sgt i32 %942, 10
  br i1 %943, label %944, label %965

944:                                              ; preds = %935, %926
  %945 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %946 = load i32, i32* @RUN_DEBUG_ROM, align 4
  %947 = load i32, i32* @RUN_DEBUG_RSSI, align 4
  %948 = or i32 %946, %947
  %949 = load i32, i32* %9, align 4
  %950 = add nsw i32 %949, 1
  %951 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %952 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %951, i32 0, i32 17
  %953 = load i32*, i32** %952, align 8
  %954 = load i32, i32* %9, align 4
  %955 = sext i32 %954 to i64
  %956 = getelementptr inbounds i32, i32* %953, i64 %955
  %957 = load i32, i32* %956, align 4
  %958 = call i32 (%struct.run_softc*, i32, i8*, i32, ...) @RUN_DPRINTF(%struct.run_softc* %945, i32 %948, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0), i32 %950, i32 %957)
  %959 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %960 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %959, i32 0, i32 17
  %961 = load i32*, i32** %960, align 8
  %962 = load i32, i32* %9, align 4
  %963 = sext i32 %962 to i64
  %964 = getelementptr inbounds i32, i32* %961, i64 %963
  store i32 0, i32* %964, align 4
  br label %965

965:                                              ; preds = %944, %935
  br label %966

966:                                              ; preds = %965
  %967 = load i32, i32* %9, align 4
  %968 = add nsw i32 %967, 1
  store i32 %968, i32* %9, align 4
  br label %884

969:                                              ; preds = %884
  ret i32 0
}

declare dso_local i32 @run_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @RUN_DPRINTF(%struct.run_softc*, i32, i8*, i32, ...) #1

declare dso_local i32 @run_srom_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @run_rt3593_get_txpower(%struct.run_softc*) #1

declare dso_local i32 @run_get_txpower(%struct.run_softc*) #1

declare dso_local i8* @b4inc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
