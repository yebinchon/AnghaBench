; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch.c_arswitch_getport.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch.c_arswitch_getport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64, i32, i32*, i32, %struct.ifmediareq, i32 }
%struct.ifmediareq = type { i32, i32, i32, i64, i64 }
%struct.arswitch_softc = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 (%struct.arswitch_softc.0*, %struct.TYPE_9__*)* }
%struct.arswitch_softc.0 = type opaque
%struct.TYPE_7__ = type { i64 }
%struct.mii_data = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@ETHERSWITCH_PORT_CPU = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@SIOCGIFMEDIA = common dso_local global i32 0, align 4
@AR8327 = common dso_local global i32 0, align 4
@ar8327_led_mapping = common dso_local global %struct.TYPE_10__** null, align 8
@ETHERSWITCH_PORT_LED_MAX = common dso_local global i32 0, align 4
@led_pattern_table = common dso_local global i32* null, align 8
@ETHERSWITCH_PORT_LED_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_9__*)* @arswitch_getport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arswitch_getport(i32 %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.arswitch_softc*, align 8
  %7 = alloca %struct.mii_data*, align 8
  %8 = alloca %struct.ifmediareq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.arswitch_softc* @device_get_softc(i32 %13)
  store %struct.arswitch_softc* %14, %struct.arswitch_softc** %6, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %2
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.arswitch_softc*, %struct.arswitch_softc** %6, align 8
  %24 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %22, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %19, %2
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %3, align 4
  br label %192

30:                                               ; preds = %19
  %31 = load %struct.arswitch_softc*, %struct.arswitch_softc** %6, align 8
  %32 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32 (%struct.arswitch_softc.0*, %struct.TYPE_9__*)*, i32 (%struct.arswitch_softc.0*, %struct.TYPE_9__*)** %33, align 8
  %35 = load %struct.arswitch_softc*, %struct.arswitch_softc** %6, align 8
  %36 = bitcast %struct.arswitch_softc* %35 to %struct.arswitch_softc.0*
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = call i32 %34(%struct.arswitch_softc.0* %36, %struct.TYPE_9__* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %3, align 4
  br label %192

43:                                               ; preds = %30
  %44 = load %struct.arswitch_softc*, %struct.arswitch_softc** %6, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call %struct.mii_data* @arswitch_miiforport(%struct.arswitch_softc* %44, i64 %47)
  store %struct.mii_data* %48, %struct.mii_data** %7, align 8
  %49 = load %struct.arswitch_softc*, %struct.arswitch_softc** %6, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @arswitch_is_cpuport(%struct.arswitch_softc* %49, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %81

55:                                               ; preds = %43
  %56 = load i32, i32* @ETHERSWITCH_PORT_CPU, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 4
  store %struct.ifmediareq* %62, %struct.ifmediareq** %8, align 8
  %63 = load %struct.ifmediareq*, %struct.ifmediareq** %8, align 8
  %64 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %63, i32 0, i32 4
  store i64 0, i64* %64, align 8
  %65 = load i32, i32* @IFM_ETHER, align 4
  %66 = load i32, i32* @IFM_1000_T, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @IFM_FDX, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.ifmediareq*, %struct.ifmediareq** %8, align 8
  %71 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.ifmediareq*, %struct.ifmediareq** %8, align 8
  %73 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 8
  %74 = load %struct.ifmediareq*, %struct.ifmediareq** %8, align 8
  %75 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %74, i32 0, i32 3
  store i64 0, i64* %75, align 8
  %76 = load i32, i32* @IFM_ACTIVE, align 4
  %77 = load i32, i32* @IFM_AVALID, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.ifmediareq*, %struct.ifmediareq** %8, align 8
  %80 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  br label %102

81:                                               ; preds = %43
  %82 = load %struct.mii_data*, %struct.mii_data** %7, align 8
  %83 = icmp ne %struct.mii_data* %82, null
  br i1 %83, label %84, label %99

84:                                               ; preds = %81
  %85 = load %struct.mii_data*, %struct.mii_data** %7, align 8
  %86 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 3
  %90 = load %struct.mii_data*, %struct.mii_data** %7, align 8
  %91 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %90, i32 0, i32 0
  %92 = load i32, i32* @SIOCGIFMEDIA, align 4
  %93 = call i32 @ifmedia_ioctl(i32 %87, i32* %89, i32* %91, i32 %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %84
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %3, align 4
  br label %192

98:                                               ; preds = %84
  br label %101

99:                                               ; preds = %81
  %100 = load i32, i32* @ENXIO, align 4
  store i32 %100, i32* %3, align 4
  br label %192

101:                                              ; preds = %98
  br label %102

102:                                              ; preds = %101, %55
  %103 = load %struct.arswitch_softc*, %struct.arswitch_softc** %6, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @arswitch_is_cpuport(%struct.arswitch_softc* %103, i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %188, label %109

109:                                              ; preds = %102
  %110 = load %struct.arswitch_softc*, %struct.arswitch_softc** %6, align 8
  %111 = load i32, i32* @AR8327, align 4
  %112 = call i64 @AR8X16_IS_SWITCH(%struct.arswitch_softc* %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %188

114:                                              ; preds = %109
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  store i32 3, i32* %116, align 8
  store i32 0, i32* %10, align 4
  br label %117

117:                                              ; preds = %184, %114
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %187

123:                                              ; preds = %117
  %124 = load i32, i32* %4, align 4
  %125 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @ar8327_led_mapping, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = sub nsw i64 %128, 1
  %130 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %125, i64 %129
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @arswitch_readreg(i32 %124, i32 %136)
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* %12, align 4
  %139 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @ar8327_led_mapping, align 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = sub nsw i64 %142, 1
  %144 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %139, i64 %143
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %144, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = ashr i32 %138, %150
  %152 = and i32 %151, 3
  store i32 %152, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %153

153:                                              ; preds = %167, %123
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* @ETHERSWITCH_PORT_LED_MAX, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %170

157:                                              ; preds = %153
  %158 = load i32*, i32** @led_pattern_table, align 8
  %159 = load i32, i32* %11, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %12, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %157
  br label %170

166:                                              ; preds = %157
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %11, align 4
  br label %153

170:                                              ; preds = %165, %153
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* @ETHERSWITCH_PORT_LED_MAX, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %170
  %175 = load i32, i32* @ETHERSWITCH_PORT_LED_DEFAULT, align 4
  store i32 %175, i32* %11, align 4
  br label %176

176:                                              ; preds = %174, %170
  %177 = load i32, i32* %11, align 4
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %10, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  store i32 %177, i32* %183, align 4
  br label %184

184:                                              ; preds = %176
  %185 = load i32, i32* %10, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %10, align 4
  br label %117

187:                                              ; preds = %117
  br label %191

188:                                              ; preds = %109, %102
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 1
  store i32 0, i32* %190, align 8
  br label %191

191:                                              ; preds = %188, %187
  store i32 0, i32* %3, align 4
  br label %192

192:                                              ; preds = %191, %99, %96, %41, %28
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local %struct.arswitch_softc* @device_get_softc(i32) #1

declare dso_local %struct.mii_data* @arswitch_miiforport(%struct.arswitch_softc*, i64) #1

declare dso_local i64 @arswitch_is_cpuport(%struct.arswitch_softc*, i64) #1

declare dso_local i32 @ifmedia_ioctl(i32, i32*, i32*, i32) #1

declare dso_local i64 @AR8X16_IS_SWITCH(%struct.arswitch_softc*, i32) #1

declare dso_local i32 @arswitch_readreg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
